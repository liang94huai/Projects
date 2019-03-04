#include "circle_queue.h"
#include <memory.h>
#ifdef WIN32
#include <Windows.h>
#endif

CCircleQueue::CCircleQueue()
: m_ciNodeHeadLen(sizeof(int32_t))
{
	m_pBuffer = NULL;
	m_iSize = 0;
	m_bIgnoreScrap = true;
	m_iReserve = true;
}

CCircleQueue::CCircleQueue( void* pBuffer, uint32_t nLen, bool bIgnoreScrap, bool bReserve)
: m_ciNodeHeadLen(sizeof(int32_t))
{
	reset(pBuffer, nLen, bIgnoreScrap, bReserve);
}

char* CCircleQueue::reset(void* pBuffer, uint32_t nLen, bool bIgnoreScrap, bool bReserve)
{
	char* pOldBuffer = m_pBuffer;
	m_iSize = nLen;
	m_pBuffer = (char*)pBuffer;
	m_iReserve = 0;
	m_bIgnoreScrap = bIgnoreScrap;
	if (bReserve == true)
	{
		m_iReserve = CIRCLEQUEUE_REVERSE_SIZE;
		memset(m_pBuffer, 0xFF, m_iReserve);
	}
	initialize();
	return pOldBuffer;
}

CCircleQueue::~CCircleQueue(void)
{
	if (m_pBuffer != NULL) {
		delete [] m_pBuffer;
	}
}

void CCircleQueue::initialize()
{
	memset(m_pBuffer, 0, sizeof(uint32_t)*2);
	set_boundary(0, 0);
}

int32_t CCircleQueue::append(const char *code, uint32_t size)
{
	if (m_pBuffer == NULL)
	{
		return queue_is_not_ini;
	}
	if (m_bIgnoreScrap == true)
	{
		return append2(code, size);
	}
	return append1(code, size);
}

int32_t CCircleQueue::append2(const char *code, uint32_t size)
{
	uint32_t head = 0;
	uint32_t tail = 0;
	if (size <= 0 || code == NULL)
	{
		return FAIL;
	}

	uint32_t iValidSize = (m_iSize - m_iReserve);
	get_boundary(head, tail);
	if (head > tail)
	{
		if (tail + m_ciNodeHeadLen + size < head)
		{
			char *pBuffer = get_codebuffer();
			pBuffer += tail;
			memcpy(pBuffer, &size, m_ciNodeHeadLen);
			pBuffer += m_ciNodeHeadLen;
			memcpy(pBuffer, code, (size_t)size);
			tail += m_ciNodeHeadLen + size;
		}
		else
		{
			return queue_buffer_is_not_enough;
		}
	}
	else
	{
		if (tail + m_ciNodeHeadLen + size > iValidSize)
		{
			if (head > size + m_ciNodeHeadLen)
			{
				char *pBuffer = get_codebuffer();
				pBuffer += tail;
				if (tail + m_ciNodeHeadLen <= iValidSize)
				{
					int32_t iPlace = 0;
					memcpy(pBuffer, &iPlace, m_ciNodeHeadLen);
				}
				pBuffer = get_codebuffer();
				memcpy(pBuffer, &size, m_ciNodeHeadLen);
				pBuffer += m_ciNodeHeadLen;
				memcpy(pBuffer, code, (size_t)size);
				tail = m_ciNodeHeadLen + size;
			}
			else
			{
				return queue_buffer_is_not_enough;
			}
		}
		else
		{
			char *pBuffer = get_codebuffer();
			pBuffer += tail;
			memcpy(pBuffer, &size, m_ciNodeHeadLen);
			pBuffer += m_ciNodeHeadLen;
			memcpy(pBuffer, code, (size_t)size);
			tail += m_ciNodeHeadLen + size;
		}

	}
	set_tail(tail);
	return SUCCESS;
}

int32_t CCircleQueue::append1(const char *code, uint32_t size)
{
	if (invalid_offset == code_offset() || m_iSize <= 0)
	{
		return FAIL;
	}

	if (full())
	{
		return queue_buffer_is_not_enough;
	}

	uint32_t head = 0;
	uint32_t tail = 0;

	get_boundary(head, tail);
	if (head < 0 || head >= m_iSize || tail < 0 || tail >= m_iSize)
	{
		head = tail = 0;
		set_boundary(head, tail);
		return FAIL;
	}

	uint32_t free_size = get_freesize();

	if (sizeof(int32_t) + size > free_size)
	{
		return queue_buffer_is_not_enough;
	}

	char* pszDst = get_codebuffer();
	char* pszSrc = (char*)&size;

	for (size_t i = 0; i < sizeof(int32_t); ++i)
	{
		pszDst[tail] = pszSrc[i];
		tail = (tail + 1)%m_iSize;  
	}

	if (head > tail)//
	{
		memcpy(&pszDst[tail], (const void*)code, (size_t)size);
	}
	else
	{
		if (size > (m_iSize - tail))
		{
			memcpy(&pszDst[tail], (const void*)code, (size_t)(m_iSize - tail));
			memcpy(&pszDst[0], (const void*)(code + (m_iSize-tail)), (size_t)(size - (m_iSize - tail)));
		}
		else
		{
			memcpy(&pszDst[tail], (const void*)code, (size_t)size);
		}
	}

	tail = (tail + size)%m_iSize;

	set_tail(tail);
	return SUCCESS;
}

int32_t CCircleQueue::pop(char *dst, uint32_t &outlength)
{
	if (m_pBuffer == NULL)
	{
		return queue_is_not_ini;
	}
	if (m_bIgnoreScrap == true)
	{
		return pop2(dst, outlength);
	}
	return pop1(dst, outlength);
}


const char* CCircleQueue::get( uint32_t& outlength )
{
	if (m_bIgnoreScrap == false || m_pBuffer == NULL)
	{
		return NULL;
	}
	const char *pBuffer = NULL;
	uint32_t head = 0;
	uint32_t tail = 0;
	int32_t ilen = 0;

	get_boundary(head, tail);
	uint32_t iValidSize = m_iSize - m_iReserve;

	if (head != tail)
	{
		char *pCodeBuffer = get_codebuffer();
		if (head + m_ciNodeHeadLen <= iValidSize)
		{
			pCodeBuffer += head;
		}
		memcpy(&ilen, pCodeBuffer, m_ciNodeHeadLen);
		if (ilen == 0)
		{
			pCodeBuffer = get_codebuffer();
			if (0 != tail)
			{
				memcpy(&ilen, pCodeBuffer, m_ciNodeHeadLen);
			}

		}

		if (ilen != 0)
		{
			outlength = ilen;
			pBuffer = pCodeBuffer + m_ciNodeHeadLen;
		}
		else
		{ 
			initialize();
		}
	}

	return pBuffer;
}

int32_t CCircleQueue::pop2(char *dst, uint32_t &outlength)
{
	uint32_t ilen = 0;
	const char* pBuffer = get(ilen);
	if (pBuffer)
	{
		if (outlength > ilen)
		{
			memcpy(dst, pBuffer, ilen);
			outlength = ilen;
		}
		else
		{
			memcpy(dst, pBuffer, outlength);
			pop();
			return recv_buffer_is_not_enough;
		}
	}
	else
	{
		return queue_is_empty;
	}
	pop();
	return SUCCESS;
}

int32_t CCircleQueue::pop1(char *dst, uint32_t &outlength)
{
	if (NULL == dst || 0 >= outlength)
	{
		return FAIL;
	}

	if (invalid_offset == code_offset() || m_iSize <= 0)
	{
		return FAIL;
	}

	if (empty())
	{
		return queue_is_empty;
	}

	int32_t code_size = get_codesize();

	uint32_t head = 0;
	uint32_t tail = 0;

	get_boundary(head, tail);

	if (code_size < (int32_t)sizeof(int32_t))
	{
		outlength = 0;
		head = tail = 0;
		set_boundary(head, tail);
		return FAIL;
	}

	int32_t buffer_size = outlength;

	int32_t real_outlength = 0;
	char* pszDst = (char*)&real_outlength;

	char* code_zone = get_codebuffer();
	if (NULL == code_zone)
	{
		return FAIL;
	}

	for (size_t i = 0; i < sizeof(int32_t); ++i)
	{
		pszDst[i] = code_zone[head];
		head = (head+1)%m_iSize;
	}

	if (real_outlength <= 0 || real_outlength > (code_size - (int32_t)sizeof(int32_t)))
	{
		outlength = 0;
		head = tail = 0;
		set_boundary(head, tail);
		return FAIL;
	}

	if (buffer_size < real_outlength)
	{
		head = (head+real_outlength)%m_iSize;
		set_head(head); 
		return FAIL;
	}

	//copy code buffer
	outlength = real_outlength;
	pszDst = dst;

	if (tail > head)
	{
		memcpy(pszDst, (const void*)&code_zone[head], (size_t)outlength);
	}
	else
	{
		if (outlength > (m_iSize - head))
		{
			memcpy(dst, (const void*)&code_zone[head], (size_t)(m_iSize - head));
			memcpy((void*)&dst[m_iSize-head], (const void*)&code_zone[0], size_t(outlength-(m_iSize-head)));
		} 
		else
		{
			memcpy(dst, (const void*)&code_zone[head], size_t(outlength));
		}

	}//else

	head = (head+outlength)%m_iSize;
	set_head(head); 
	return SUCCESS;
}

int32_t CCircleQueue::pop_from(int32_t offset, int32_t codesize, char *dst, int32_t &outlenght)
{
	return FAIL;

}

bool CCircleQueue::full()
{
	return!(get_freesize() > 0);
}

bool CCircleQueue::empty()
{
	return(m_iHead == m_iTail);
}

void CCircleQueue::clear(void) {
	if (m_pBuffer)
		set_boundary(0, 0);
}

int32_t CCircleQueue::code_offset() const
{
	return m_iReserve;
}

int32_t CCircleQueue::set_head(uint32_t head)
{
    if (head < m_iSize)
    {
        m_iHead = head;
    }

    if (m_iReserve > 0)
    {
#ifdef WIN32
        long* pInt = (long*)m_pBuffer;
        InterlockedExchange(pInt, head);
#else
        int32_t* pInt = (int32_t*)m_pBuffer;
        *pInt = head;
#endif // WIN32
    }

    return 0;

}

int32_t CCircleQueue::set_tail(uint32_t tail)
{
    if (tail < m_iSize)
    {
        m_iTail = tail;
    }

    if (m_iReserve > 0)
    {
#ifdef WIN32
        long* pInt = (long*)m_pBuffer;
        pInt++;
        InterlockedExchange(pInt, tail);
#else
        int32_t* pInt = (int32_t*)m_pBuffer;
        pInt++;
        *pInt = tail;
#endif // WIN32
    }

    return 0;
}


int32_t CCircleQueue::set_boundary(uint32_t head, uint32_t tail)
{
	if (head < m_iSize)
	{
		m_iHead = head;
	}

	if (tail < m_iSize)
	{
		m_iTail = tail;
	}

	if (m_iReserve > 0)
	{
#ifdef WIN32
		long* pInt = (long*)m_pBuffer;
		InterlockedExchange(pInt, head);
		pInt++;
		InterlockedExchange(pInt, tail);
#else
		int32_t* pInt = (int32_t*)m_pBuffer;
		*pInt = head;
		pInt++;
		*pInt = tail;
#endif // WIN32
	}

	return 0;
}

int32_t CCircleQueue::get_boundary(uint32_t &head, uint32_t &tail)
{
	if (m_iReserve > 0)
	{
#ifdef WIN32
		long* pInt = (long*)m_pBuffer;
		InterlockedExchange((long*)&head, *pInt);
		pInt++;
		InterlockedExchange((long*)&tail, *pInt);
#else
		int32_t* pInt = (int32_t*)m_pBuffer;
		head = *pInt;
		pInt++;
		tail = *pInt;
#endif // WIN32
		m_iHead = head;
		m_iTail = tail;

	}
	else
	{
		head = m_iHead;
		tail = m_iTail;
	}
	return 0;
}

uint32_t CCircleQueue::get_freesize(void)
{
	uint32_t head = 0;
	uint32_t tail = 0;

	get_boundary(head, tail);

	uint32_t free_size = 0;

	if (head == tail)
	{
		free_size = m_iSize;
	}
	else if (head > tail)
	{
		free_size = head - tail;
	} 
	else
	{
		free_size = head + (m_iSize - tail);
	}

	free_size -= reserved_length;
	if (free_size < 0)
	{
		free_size = 0;
	}

	return free_size;
}

uint32_t CCircleQueue::get_codesize(void) 
{
	uint32_t nsize = m_iSize - get_freesize();
	if (nsize > reserved_length)
	{
		nsize = nsize - reserved_length;
	}
	else
	{
		nsize = 0;
	}
	return nsize;
}

char* CCircleQueue::get_codebuffer() const
{
	char *pBuffer = m_pBuffer;
	if (pBuffer)
		pBuffer += m_iReserve;
	return pBuffer;
}

int32_t CCircleQueue::pop()
{
	if (m_bIgnoreScrap == false)
	{
		return FAIL;
	}
	uint32_t ilen = 0;
	const char* pBuffer = get(ilen);
	if (pBuffer)
	{
		uint32_t head = 0;
		uint32_t tail = 0;

		get_boundary(head, tail);
		if (head + m_ciNodeHeadLen + ilen > m_iSize - m_iReserve)
		{
			head = 0;
		}
		head = head + ilen + m_ciNodeHeadLen;
		set_head(head);
	}
	return SUCCESS;
}

uint32_t CCircleQueue::get_count()
{
	return 0;
}
