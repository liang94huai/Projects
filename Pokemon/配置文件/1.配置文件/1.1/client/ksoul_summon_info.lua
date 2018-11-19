local record_ksoul_summon_info = {}

record_ksoul_summon_info.id = 0 --id
record_ksoul_summon_info.ksoul_id = 0 --将灵id
record_ksoul_summon_info.ksoul_type = 0 --将灵类型
record_ksoul_summon_info.normal_pro = 0 --正常概率
record_ksoul_summon_info.special_pro = 0 --特殊处理时概率


ksoul_summon_info = {
    _data = {
    [1] = {1,1,1,7,70,},
    [2] = {2,2,1,6,60,},
    [3] = {3,3,1,6,60,},
    [4] = {4,4,1,7,70,},
    [5] = {5,5,1,6,60,},
    [6] = {6,6,1,6,60,},
    [7] = {7,7,1,6,60,},
    [8] = {8,8,1,6,60,},
    [9] = {9,9,1,15,285,},
    [10] = {10,10,1,15,285,},
    [11] = {11,11,1,15,285,},
    [12] = {12,12,1,8,152,},
    [13] = {13,13,1,15,285,},
    [14] = {14,14,1,15,285,},
    [15] = {15,15,1,8,152,},
    [16] = {16,16,1,15,285,},
    [17] = {17,17,1,15,285,},
    [18] = {18,18,1,15,285,},
    [19] = {19,19,1,8,152,},
    [20] = {20,20,1,15,285,},
    [21] = {21,21,1,15,285,},
    [22] = {22,22,1,16,304,},
    [23] = {23,23,1,16,304,},
    [24] = {24,24,1,8,152,},
    [25] = {25,25,1,16,304,},
    [26] = {26,26,1,16,304,},
    [27] = {27,27,1,16,304,},
    [28] = {28,28,1,16,304,},
    [29] = {29,29,1,8,152,},
    [30] = {30,30,1,15,285,},
    [31] = {31,31,1,8,152,},
    [32] = {32,32,1,16,304,},
    [33] = {33,33,1,16,304,},
    [34] = {34,34,1,16,304,},
    [35] = {35,35,1,16,304,},
    [36] = {36,36,1,16,304,},
    [37] = {37,37,1,16,304,},
    [38] = {38,38,1,15,285,},
    [39] = {39,39,1,8,152,},
    [40] = {40,40,1,16,304,},
    [41] = {41,41,1,16,304,},
    [42] = {42,42,1,16,304,},
    [43] = {43,43,1,16,304,},
    [44] = {44,44,1,8,152,},
    [45] = {45,45,2,333,353,},
    [46] = {46,46,2,333,353,},
    [47] = {47,47,2,180,191,},
    [48] = {48,48,2,334,353,},
    [49] = {49,49,2,333,353,},
    [50] = {50,50,2,180,191,},
    [51] = {51,51,2,334,353,},
    [52] = {52,52,2,334,353,},
    [53] = {53,53,2,334,353,},
    [54] = {54,54,2,334,353,},
    [55] = {55,55,2,334,353,},
    [56] = {56,56,2,334,353,},
    [57] = {57,57,2,334,353,},
    [58] = {58,58,2,180,191,},
    [59] = {59,59,2,334,353,},
    [60] = {60,60,2,334,353,},
    [61] = {61,61,2,180,191,},
    [62] = {62,62,2,334,353,},
    [63] = {63,63,2,180,191,},
    [64] = {64,64,2,334,353,},
    [65] = {65,65,2,180,191,},
    [66] = {66,66,2,334,353,},
    [67] = {67,67,2,334,353,},
    [68] = {68,68,2,334,353,},
    [69] = {69,69,2,334,353,},
    [70] = {70,70,2,180,191,},
    [71] = {71,71,2,334,353,},
    [72] = {72,72,2,334,353,},
    [73] = {73,73,2,334,353,},
    [74] = {74,74,2,334,353,},
    [75] = {75,75,2,177,191,},
    [76] = {76,76,2,334,353,},
    }
}

local __index_id = {
    [1] = 1,
    [2] = 2,
    [3] = 3,
    [4] = 4,
    [5] = 5,
    [6] = 6,
    [7] = 7,
    [8] = 8,
    [9] = 9,
    [10] = 10,
    [11] = 11,
    [12] = 12,
    [13] = 13,
    [14] = 14,
    [15] = 15,
    [16] = 16,
    [17] = 17,
    [18] = 18,
    [19] = 19,
    [20] = 20,
    [21] = 21,
    [22] = 22,
    [23] = 23,
    [24] = 24,
    [25] = 25,
    [26] = 26,
    [27] = 27,
    [28] = 28,
    [29] = 29,
    [30] = 30,
    [31] = 31,
    [32] = 32,
    [33] = 33,
    [34] = 34,
    [35] = 35,
    [36] = 36,
    [37] = 37,
    [38] = 38,
    [39] = 39,
    [40] = 40,
    [41] = 41,
    [42] = 42,
    [43] = 43,
    [44] = 44,
    [45] = 45,
    [46] = 46,
    [47] = 47,
    [48] = 48,
    [49] = 49,
    [50] = 50,
    [51] = 51,
    [52] = 52,
    [53] = 53,
    [54] = 54,
    [55] = 55,
    [56] = 56,
    [57] = 57,
    [58] = 58,
    [59] = 59,
    [60] = 60,
    [61] = 61,
    [62] = 62,
    [63] = 63,
    [64] = 64,
    [65] = 65,
    [66] = 66,
    [67] = 67,
    [68] = 68,
    [69] = 69,
    [70] = 70,
    [71] = 71,
    [72] = 72,
    [73] = 73,
    [74] = 74,
    [75] = 75,
    [76] = 76,
}

local __key_map = {
    id = 1,
    ksoul_id = 2,
    ksoul_type = 3,
    normal_pro = 4,
    special_pro = 5,
}

local m = {
    __index = function(t,k)
        if k == "toObject"then
            return function()
                local o = {}
                for key, v in pairs (__key_map) do
                    o[key] = t._raw[v]
                end
                return o
            end
        end

        assert(__key_map[k], "cannot find " .. k .. " in record_ksoul_summon_info")
        return t._raw[__key_map[k]]
    end
}

function ksoul_summon_info.getLength()
    return #ksoul_summon_info._data
end

function ksoul_summon_info.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

function ksoul_summon_info.indexOf(index)
    if index == nil then
        return nil
    end
    return setmetatable({_raw = ksoul_summon_info._data[index]}, m)
end

function ksoul_summon_info.get(id)
    local k = id
    return ksoul_summon_info.indexOf(__index_id[k])
end

function ksoul_summon_info.set(id, key, value)
    local record = ksoul_summon_info.get(id)
    if record then
        local keyIndex = __key_map[key]
        if keyIndex then
            record._raw[keyIndex] = value
        end
    end
end

function ksoul_summon_info.get_index_data()
    return __index_id
end

