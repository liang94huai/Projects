--
-- Author: Yutou
-- Date: 2017-02-13 16:02:40
--
local KnightDropManager = class("KnightDropManager")

KnightDropManager.FOCUS_COLOR = cc.c3b(0xee,0xee,0xdd)
KnightDropManager.NORMAL_COLOR = cc.c3b(0xff,0xff,0xff)
KnightDropManager.SPINE_NORAML_SCALE = 1
KnightDropManager.SPINE_PRESSED_SCALE = 1.15

function KnightDropManager:ctor()
	self._id = nil
	self._csbNode = nil
	self._knightImgList = nil--{knight = knight,data = data,pos = i}
	
	self._knightPos = {
		-- {x=0,y=0}
	}
	self._knightInfoList = {
		--{node,node,node}
	}
	self._imgBgList = {
		--{Image,Image,Image}
	}
	self._csbNode = nil
	self._touchBeganPos = {x=0,y=0}
	self._selectedKnightPos = {x=0,y=0}

	self._hadChangeFormation = false

	self._newFormation = {0,0,0,0,0,0}
end

function KnightDropManager:init(csbNode)
	self._csbNode = csbNode
	self._panelBg = csbNode:getSubNodeByName("Panel_bg")
	self._panelSpine = csbNode:getSubNodeByName("Panel_spine")
	self._btnClose = csbNode:getSubNodeByName("Button_close")
	self._panelInfo = csbNode:getSubNodeByName("Panel_info")

	for i=1,6 do
		local img_node = self._panelBg:getSubNodeByName("Image_pos"..tostring(i))
		table.insert(self._imgBgList,img_node)
	end

	for i=1,6 do
		local sub_node = self._panelInfo:getSubNodeByName("ProjectNode_pos"..tostring(i))
		table.insert(self._knightPos,{x=sub_node:getPositionX() + 5,y=sub_node:getPositionY()-10})
		table.insert(self._knightInfoList,sub_node)
	end

end

function KnightDropManager:update(id, formationData,fashionId)
	self._id = id
	self._formationData = formationData--队伍信息
	self._fashionId = fashionId
	dump(fashionId)

    if self._knightImgList then
    	for i=1,#self._knightImgList do
    		if self._knightImgList[i].knight then
    			self._knightImgList[i].knight:removeFromParent()
    			self._knightImgList[i].knight = nil
    		end
	    end
    end
    self._knightImgList = {}

    for i = 1 , 6 do
        local id = i <= #formationData and formationData[i] or 0
        local data = G_Me.teamData:getKnightDataByID(id)
        local knight = nil
        --if(data ~= nil)then
	        knight = require("app.scenes.team.lineup.FormationIcon").new()
	        knight:updateIcon(data,self._fashionId)
	        knight:setTouchEnabled(true)
	        knight:setPosition(self._knightPos[i].x,self._knightPos[i].y)
	        knight:addTouchEventListenerEx(handler(self,self._onKnightTouch))
	        self._panelSpine:addChild(knight)
    	--end
    	self:_updatePosInfo(i,id)
    	self._knightImgList[i] = {knight = knight,id = id}
    end
end

-- 武将拖动操作
function KnightDropManager:_onKnightTouch( sender,state )
	-- body
	local tag = self:_getKnightPos(sender)
	local targetPos = nil
	if(state == ccui.TouchEventType.began)then
		
		sender:setScale(KnightDropManager.SPINE_PRESSED_SCALE)
		local beganPos = sender:getTouchBeganPosition()
		self._touchBeganPos.x = beganPos.x
		self._touchBeganPos.y = beganPos.y
		self._selectedKnightPos.x = sender:getPositionX()
		self._selectedKnightPos.y = sender:getPositionY()
		sender:setLocalZOrder(10)
		self:_showKnightInfo(tag,false)
		return true

	elseif(state == ccui.TouchEventType.moved)then

		local movePos = sender:getTouchMovePosition()
		local targetPosX = self._selectedKnightPos.x + movePos.x - self._touchBeganPos.x
		local targetPosY = self._selectedKnightPos.y + movePos.y - self._touchBeganPos.y
		
		sender:setPosition(targetPosX,targetPosY)
		self:_checkMoveHitTest(sender,tag)

	elseif(state == ccui.TouchEventType.ended)then

		local bool_hit,targetTag = self:_hitTest(sender,tag)
		if(bool_hit == true)then
			self:_switchKnightPos(sender,tag,targetTag)
		end
		self:_updateAllView()
		sender:setScale(KnightDropManager.SPINE_NORAML_SCALE)
		self:_checkChange()
	elseif(state ==  ccui.TouchEventType.canceled)then

		self:_updateAllView()
		sender:setScale(KnightDropManager.SPINE_NORAML_SCALE)

	end
end

function KnightDropManager:_updateAllView( ... )
	-- body
	for i=1,6 do
		self:_showKnightInfo(i,true)
		self._imgBgList[i]:setColor(KnightDropManager.NORMAL_COLOR)
	end

	-- 根据更新后的数据 重新排布武将位置 
	for i=1,#self._knightImgList do
		local pos = i
		local item_data = self._knightImgList[i]
		local knight_position = self._knightPos[pos]
		if(item_data.knight ~= nil)then
			item_data.knight:setLocalZOrder(pos)
			item_data.knight:setPosition(knight_position.x,knight_position.y)
		end
		self:_updatePosInfo(pos,item_data.id)
	end
end

-- 移动碰撞检测
function KnightDropManager:_checkMoveHitTest( sender,tag )
	-- body
	local bool,hitTag = self:_hitTest(sender,0)
	for i=1,6 do
		self:_showKnightInfo(i,hitTag ~= i)
		self._imgBgList[i]:setColor(hitTag ~= i and KnightDropManager.NORMAL_COLOR or KnightDropManager.FOCUS_COLOR)
	end
	self._imgBgList[tag]:setColor(KnightDropManager.FOCUS_COLOR)
	self:_showKnightInfo(tag,false)
end

--是否显示武将信息界面
function KnightDropManager:_showKnightInfo( pos,bool )
	-- body
	local node = self._knightInfoList[pos]
	if(node ~= nil)then
		local data = self._knightImgList[pos]
		local boolReal = bool
		if(bool == true)then
			boolReal = data.id>0
		end
		node:setVisible(boolReal)
	end
end

-- 获取武将的布阵位置
function KnightDropManager:_getKnightPos( sender )
	-- body
	if(sender == nil or self._knightImgList==nil)then return 0 end
	for i=1,#self._knightImgList do
		local item = self._knightImgList[i]
		if(item ~= nil and item.knight == sender)then
			return i
		end
	end

	return 0
end

--交换武将布阵位置 及 数据
function KnightDropManager:_switchKnightPos( sender,fromTag,toTag )
	-- 显示数据交换
	local fromInfo = self._knightImgList[fromTag]
	local toInfo = self._knightImgList[toTag]
	fromInfo,toInfo = toInfo,fromInfo
	self._knightImgList[fromTag] = fromInfo
	self._knightImgList[toTag] = toInfo

	--数据交换
	if self._id == 0 then
		G_Me.teamData:switchKnightPos(fromTag,toTag)
	else
		local FormationsDataManager = require("app.scenes.team.lineup.data.FormationsDataManager")
		FormationsDataManager.instance:switchKnightPos(self._id,fromTag,toTag)
	end
end

--手指松开后碰撞检测
function KnightDropManager:_hitTest( sender,tag )
	-- body
	for i=1 ,#self._imgBgList do
		local item = self._imgBgList[i]
		-- local knightRect = sender:getCascadeBoundingBox()
		local knightPoint = sender:convertToWorldSpace(cc.p(50,50))
		local itemPos = item:convertToWorldSpace(cc.p(0,0))
		local itemSize = item:getContentSize()
		local targetRect = cc.rect(itemPos.x,itemPos.y,itemSize.width,itemSize.height)
		if(cc.rectContainsPoint(targetRect,knightPoint) and tag ~= i)then
			return true,i
		end
	end
	return false,tag
end

--更新武将信息面板
function KnightDropManager:_updatePosInfo( pos,id )
	local node = self._knightInfoList[pos]
	if(id > 0 )then
		node:setVisible(true)
		local data = G_Me.teamData:getKnightDataByID(id)
		local teamUtils = require("app.scenes.team.TeamUtils")
		if(data ~= nil)then
			local str_name = ""

			if(data.cfgData.type == 1)then
				str_name = require("app.scenes.team.TeamUtils").getMainRoleFullName()
			else
			 	str_name = data.cfgData.name
			end

			local textName = node:getSubNodeByName("Text_name")
			textName:setString(str_name)
			textName:setTextColor(G_Colors.qualityColor2Color(G_TypeConverter.quality2Color(data.cfgData.quality)))
			--textName:enableOutline(G_Colors.qualityColor2OutlineColor(G_TypeConverter.quality2Color(data.cfgData.quality)),2)
			
			node:updateLabel("Text_level",{
				text = tostring(data.serverData.level),
				outlineColor = G_ColorsScrap.DEFAULT_OUTLINE_COLOR,
				outlineSize = 2,
			})
		end
	else
		node:setVisible(false)
	end
end

function KnightDropManager:_checkChange( ... )
	-- body
	self._hadChangeFormation = false
	if(self._knightImgList == nil)then return end
	local formationData = self._formationData
	local len = #formationData
	local originList = {0,0,0,0,0,0}
	for i=1,6 do
		local id = i <= len and formationData[i] or 0
		originList[i] = G_Me.teamData:getKnightPosByID(id)
	end

	local ids = {0,0,0,0,0,0}
	for i=1,#self._knightImgList do
		local itemData = self._knightImgList[i]
		local pos = G_Me.teamData:getKnightPosByID(itemData.id)
		ids[i] = pos
		self._newFormation[i] = pos
	end
	
	for i=1,6 do
		if ids[i] ~= originList[i] then
			self._hadChangeFormation = true
			break
		end
	end
end

return KnightDropManager