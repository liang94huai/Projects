local record_corps_dungeon_info = {}

record_corps_dungeon_info.id = 0 --关卡id
record_corps_dungeon_info.image = 0 --关卡形象
record_corps_dungeon_info.quality = 0 --关卡品质
record_corps_dungeon_info.dungeon_name_1 = "" --关卡名称
record_corps_dungeon_info.monster_group = 0 --怪物组ID
record_corps_dungeon_info.country = 0 --怪物被克制
record_corps_dungeon_info.award_type = 0 --宝藏
record_corps_dungeon_info.final_award_type = 0 --击杀奖励类型
record_corps_dungeon_info.final_award_value = 0 --击杀奖励类型
record_corps_dungeon_info.final_award_size = 0 --击杀奖励数量
record_corps_dungeon_info.corps_exp = 0 --击杀军团经验
record_corps_dungeon_info.min_award = 0 --挑战贡献下限
record_corps_dungeon_info.max_award = 0 --挑战贡献上限


corps_dungeon_info = {
    _data = {
    [1] = {1,3,3,"普通难度",40001,1,101,20,0,100,1000,190,210,},
    [2] = {2,2,3,"中级难度",40002,2,401,20,0,100,1000,190,210,},
    [3] = {3,1,3,"高级难度",40003,3,101,20,0,100,1000,190,210,},
    [4] = {4,2,3,"超级难度",40004,4,401,20,0,100,1000,190,210,},
    [5] = {5,3,3,"普通难度",40005,1,102,20,0,110,1100,210,230,},
    [6] = {6,2,3,"中级难度",40006,2,602,20,0,110,1100,210,230,},
    [7] = {7,1,3,"高级难度",40007,3,102,20,0,110,1100,210,230,},
    [8] = {8,2,3,"超级难度",40008,4,602,20,0,110,1100,210,230,},
    [9] = {9,3,3,"普通难度",40009,1,103,20,0,120,1200,230,250,},
    [10] = {10,2,3,"中级难度",40010,2,203,20,0,120,1200,230,250,},
    [11] = {11,1,3,"高级难度",40011,3,103,20,0,120,1200,230,250,},
    [12] = {12,2,3,"超级难度",40012,4,203,20,0,120,1200,230,250,},
    [13] = {13,3,3,"普通难度",40013,1,104,20,0,130,1300,250,270,},
    [14] = {14,2,3,"中级难度",40014,2,504,20,0,130,1300,250,270,},
    [15] = {15,1,3,"高级难度",40015,3,104,20,0,130,1300,250,270,},
    [16] = {16,2,3,"超级难度",40016,4,504,20,0,130,1300,250,270,},
    [17] = {17,3,3,"普通难度",40017,1,105,20,0,140,1400,270,290,},
    [18] = {18,2,3,"中级难度",40018,2,405,20,0,140,1400,270,290,},
    [19] = {19,1,3,"高级难度",40019,3,305,20,0,140,1400,270,290,},
    [20] = {20,2,3,"超级难度",40020,4,305,20,0,140,1400,270,290,},
    [21] = {21,3,3,"普通难度",40021,1,106,20,0,150,1500,290,310,},
    [22] = {22,2,3,"中级难度",40022,2,606,20,0,150,1500,290,310,},
    [23] = {23,1,3,"高级难度",40023,3,306,20,0,150,1500,290,310,},
    [24] = {24,2,3,"超级难度",40024,4,306,20,0,150,1500,290,310,},
    [25] = {25,3,3,"普通难度",40025,1,107,20,0,160,1600,310,330,},
    [26] = {26,2,3,"中级难度",40026,2,207,20,0,160,1600,310,330,},
    [27] = {27,1,3,"高级难度",40027,3,307,20,0,160,1600,310,330,},
    [28] = {28,2,3,"超级难度",40028,4,307,20,0,160,1600,310,330,},
    [29] = {29,3,3,"普通难度",40029,1,108,20,0,170,1700,330,350,},
    [30] = {30,2,3,"中级难度",40030,2,508,20,0,170,1700,330,350,},
    [31] = {31,1,3,"高级难度",40031,3,308,20,0,170,1700,330,350,},
    [32] = {32,2,3,"超级难度",40032,4,308,20,0,170,1700,330,350,},
    [33] = {33,3,3,"普通难度",40033,1,109,20,0,180,1800,350,370,},
    [34] = {34,2,3,"中级难度",40034,2,409,20,0,180,1800,350,370,},
    [35] = {35,1,3,"高级难度",40035,3,309,20,0,180,1800,350,370,},
    [36] = {36,2,3,"超级难度",40036,4,309,20,0,180,1800,350,370,},
    [37] = {37,3,3,"普通难度",40037,1,110,20,0,190,1900,370,390,},
    [38] = {38,2,3,"中级难度",40038,2,610,20,0,190,1900,370,390,},
    [39] = {39,1,3,"高级难度",40039,3,310,20,0,190,1900,370,390,},
    [40] = {40,2,3,"超级难度",40040,4,310,20,0,190,1900,370,390,},
    [41] = {41,3,3,"普通难度",40041,1,111,20,0,200,2000,390,410,},
    [42] = {42,2,3,"中级难度",40042,2,511,20,0,200,2000,390,410,},
    [43] = {43,1,3,"高级难度",40043,3,311,20,0,200,2000,390,410,},
    [44] = {44,2,3,"超级难度",40044,4,311,20,0,200,2000,390,410,},
    [45] = {45,3,3,"普通难度",40045,1,112,20,0,210,2100,410,430,},
    [46] = {46,2,3,"中级难度",40046,2,412,20,0,210,2100,410,430,},
    [47] = {47,1,3,"高级难度",40047,3,312,20,0,210,2100,410,430,},
    [48] = {48,2,3,"超级难度",40048,4,312,20,0,210,2100,410,430,},
    [49] = {49,3,3,"普通难度",40049,1,113,20,0,220,2200,430,450,},
    [50] = {50,2,3,"中级难度",40050,2,613,20,0,220,2200,430,450,},
    [51] = {51,1,3,"高级难度",40051,3,313,20,0,220,2200,430,450,},
    [52] = {52,2,3,"超级难度",40052,4,313,20,0,220,2200,430,450,},
    [53] = {53,3,3,"普通难度",40053,1,114,20,0,230,2300,450,470,},
    [54] = {54,2,3,"中级难度",40054,2,514,20,0,230,2300,450,470,},
    [55] = {55,1,3,"高级难度",40055,3,314,20,0,230,2300,450,470,},
    [56] = {56,2,3,"超级难度",40056,4,314,20,0,230,2300,450,470,},
    [57] = {57,3,3,"普通难度",40057,1,115,20,0,240,2400,470,490,},
    [58] = {58,2,3,"中级难度",40058,2,415,20,0,240,2400,470,490,},
    [59] = {59,1,3,"高级难度",40059,3,315,20,0,240,2400,470,490,},
    [60] = {60,2,3,"超级难度",40060,4,715,20,0,240,2400,470,490,},
    [61] = {61,3,3,"普通难度",40061,1,116,20,0,250,2500,490,510,},
    [62] = {62,2,3,"中级难度",40062,2,616,20,0,250,2500,490,510,},
    [63] = {63,1,3,"高级难度",40063,3,316,20,0,250,2500,490,510,},
    [64] = {64,2,3,"超级难度",40064,4,716,20,0,250,2500,490,510,},
    [65] = {65,3,3,"普通难度",40065,1,117,20,0,260,2600,510,530,},
    [66] = {66,2,3,"中级难度",40066,2,517,20,0,260,2600,510,530,},
    [67] = {67,1,3,"高级难度",40067,3,317,20,0,260,2600,510,530,},
    [68] = {68,2,3,"超级难度",40068,4,717,20,0,260,2600,510,530,},
    [69] = {69,3,3,"普通难度",40069,1,118,20,0,270,2700,530,550,},
    [70] = {70,2,3,"中级难度",40070,2,418,20,0,270,2700,530,550,},
    [71] = {71,1,3,"高级难度",40071,3,318,20,0,270,2700,530,550,},
    [72] = {72,2,3,"超级难度",40072,4,718,20,0,270,2700,530,550,},
    [73] = {73,3,3,"普通难度",40073,1,119,20,0,280,2800,550,570,},
    [74] = {74,2,3,"中级难度",40074,2,619,20,0,280,2800,550,570,},
    [75] = {75,1,3,"高级难度",40075,3,319,20,0,280,2800,550,570,},
    [76] = {76,2,3,"超级难度",40076,4,719,20,0,280,2800,550,570,},
    [77] = {77,3,3,"普通难度",40077,1,120,20,0,290,2900,570,590,},
    [78] = {78,2,3,"中级难度",40078,2,520,20,0,290,2900,570,590,},
    [79] = {79,1,3,"高级难度",40079,3,320,20,0,290,2900,570,590,},
    [80] = {80,2,3,"超级难度",40080,4,720,20,0,290,2900,570,590,},
    [81] = {81,3,3,"普通难度",40081,1,121,20,0,300,3000,590,610,},
    [82] = {82,2,3,"中级难度",40082,2,421,20,0,300,3000,590,610,},
    [83] = {83,1,3,"高级难度",40083,3,321,20,0,300,3000,590,610,},
    [84] = {84,2,3,"超级难度",40084,4,721,20,0,300,3000,590,610,},
    [85] = {85,3,3,"普通难度",40085,1,122,20,0,310,3100,610,630,},
    [86] = {86,2,3,"中级难度",40086,2,622,20,0,310,3100,610,630,},
    [87] = {87,1,3,"高级难度",40087,3,322,20,0,310,3100,610,630,},
    [88] = {88,2,3,"超级难度",40088,4,722,20,0,310,3100,610,630,},
    [89] = {89,3,3,"普通难度",40089,1,123,20,0,320,3200,630,650,},
    [90] = {90,2,3,"中级难度",40090,2,523,20,0,320,3200,630,650,},
    [91] = {91,1,3,"高级难度",40091,3,323,20,0,320,3200,630,650,},
    [92] = {92,2,3,"超级难度",40092,4,723,20,0,320,3200,630,650,},
    [93] = {93,3,3,"普通难度",40093,1,124,20,0,330,3300,650,670,},
    [94] = {94,2,3,"中级难度",40094,2,424,20,0,330,3300,650,670,},
    [95] = {95,1,3,"高级难度",40095,3,324,20,0,330,3300,650,670,},
    [96] = {96,2,3,"超级难度",40096,4,724,20,0,330,3300,650,670,},
    [97] = {97,3,3,"普通难度",40097,1,125,20,0,340,3400,670,690,},
    [98] = {98,2,3,"中级难度",40098,2,625,20,0,340,3400,670,690,},
    [99] = {99,1,3,"高级难度",40099,3,325,20,0,340,3400,670,690,},
    [100] = {100,2,3,"超级难度",40100,4,725,20,0,340,3400,670,690,},
    [101] = {101,3,3,"普通难度",40101,1,126,20,0,350,3500,690,710,},
    [102] = {102,2,3,"中级难度",40102,2,526,20,0,350,3500,690,710,},
    [103] = {103,1,3,"高级难度",40103,3,326,20,0,350,3500,690,710,},
    [104] = {104,2,3,"超级难度",40104,4,726,20,0,350,3500,690,710,},
    [105] = {105,3,3,"普通难度",40105,1,127,20,0,360,3600,710,730,},
    [106] = {106,2,3,"中级难度",40106,2,427,20,0,360,3600,710,730,},
    [107] = {107,1,3,"高级难度",40107,3,327,20,0,360,3600,710,730,},
    [108] = {108,2,3,"超级难度",40108,4,727,20,0,360,3600,710,730,},
    [109] = {109,3,3,"普通难度",40109,1,128,20,0,370,3700,730,750,},
    [110] = {110,2,3,"中级难度",40110,2,628,20,0,370,3700,730,750,},
    [111] = {111,1,3,"高级难度",40111,3,328,20,0,370,3700,730,750,},
    [112] = {112,2,3,"超级难度",40112,4,728,20,0,370,3700,730,750,},
    [113] = {113,3,3,"普通难度",40113,1,129,20,0,380,3800,750,770,},
    [114] = {114,2,3,"中级难度",40114,2,529,20,0,380,3800,750,770,},
    [115] = {115,1,3,"高级难度",40115,3,329,20,0,380,3800,750,770,},
    [116] = {116,2,3,"超级难度",40116,4,729,20,0,380,3800,750,770,},
    [117] = {117,3,3,"普通难度",40117,1,130,20,0,390,3900,770,790,},
    [118] = {118,2,3,"中级难度",40118,2,430,20,0,390,3900,770,790,},
    [119] = {119,1,3,"高级难度",40119,3,330,20,0,390,3900,770,790,},
    [120] = {120,2,3,"超级难度",40120,4,730,20,0,390,3900,770,790,},
    [121] = {121,3,3,"普通难度",40121,1,801,20,0,400,4000,790,810,},
    [122] = {122,2,3,"中级难度",40122,2,806,20,0,400,4000,790,810,},
    [123] = {123,1,3,"高级难度",40123,3,807,20,0,400,4000,790,810,},
    [124] = {124,2,3,"超级难度",40124,4,803,20,0,400,4000,790,810,},
    [125] = {125,3,3,"普通难度",40125,1,801,20,0,410,4000,810,830,},
    [126] = {126,2,3,"中级难度",40126,2,805,20,0,410,4000,810,830,},
    [127] = {127,1,3,"高级难度",40127,3,802,20,0,410,4000,810,830,},
    [128] = {128,2,3,"超级难度",40128,4,804,20,0,410,4000,810,830,},
    [129] = {129,3,3,"普通难度",40129,1,801,20,0,420,4000,830,850,},
    [130] = {130,2,3,"中级难度",40130,2,806,20,0,420,4000,830,850,},
    [131] = {131,1,3,"高级难度",40131,3,807,20,0,420,4000,830,850,},
    [132] = {132,2,3,"超级难度",40132,4,803,20,0,420,4000,830,850,},
    [133] = {133,3,3,"普通难度",40133,1,801,20,0,430,4000,850,870,},
    [134] = {134,2,3,"中级难度",40134,2,805,20,0,430,4000,850,870,},
    [135] = {135,1,3,"高级难度",40135,3,802,20,0,430,4000,850,870,},
    [136] = {136,2,3,"超级难度",40136,4,804,20,0,430,4000,850,870,},
    [137] = {137,3,3,"普通难度",40137,1,801,20,0,440,4000,870,890,},
    [138] = {138,2,3,"中级难度",40138,2,806,20,0,440,4000,870,890,},
    [139] = {139,1,3,"高级难度",40139,3,807,20,0,440,4000,870,890,},
    [140] = {140,2,3,"超级难度",40140,4,803,20,0,440,4000,870,890,},
    [141] = {141,3,3,"普通难度",40141,1,801,20,0,450,4000,890,910,},
    [142] = {142,2,3,"中级难度",40142,2,805,20,0,450,4000,890,910,},
    [143] = {143,1,3,"高级难度",40143,3,802,20,0,450,4000,890,910,},
    [144] = {144,2,3,"超级难度",40144,4,804,20,0,450,4000,890,910,},
    [145] = {145,3,3,"普通难度",40145,1,801,20,0,460,4000,910,930,},
    [146] = {146,2,3,"中级难度",40146,2,806,20,0,460,4000,910,930,},
    [147] = {147,1,3,"高级难度",40147,3,807,20,0,460,4000,910,930,},
    [148] = {148,2,3,"超级难度",40148,4,803,20,0,460,4000,910,930,},
    [149] = {149,3,3,"普通难度",40149,1,801,20,0,470,4000,930,950,},
    [150] = {150,2,3,"中级难度",40150,2,805,20,0,470,4000,930,950,},
    [151] = {151,1,3,"高级难度",40151,3,802,20,0,470,4000,930,950,},
    [152] = {152,2,3,"超级难度",40152,4,804,20,0,470,4000,930,950,},
    [153] = {153,3,3,"普通难度",40153,1,801,20,0,480,4000,950,970,},
    [154] = {154,2,3,"中级难度",40154,2,806,20,0,480,4000,950,970,},
    [155] = {155,1,3,"高级难度",40155,3,807,20,0,480,4000,950,970,},
    [156] = {156,2,3,"超级难度",40156,4,803,20,0,480,4000,950,970,},
    [157] = {157,3,3,"普通难度",40157,1,801,20,0,490,4000,970,990,},
    [158] = {158,2,3,"中级难度",40158,2,805,20,0,490,4000,970,990,},
    [159] = {159,1,3,"高级难度",40159,3,802,20,0,490,4000,970,990,},
    [160] = {160,2,3,"超级难度",40160,4,804,20,0,490,4000,970,990,},
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
    [77] = 77,
    [78] = 78,
    [79] = 79,
    [80] = 80,
    [81] = 81,
    [82] = 82,
    [83] = 83,
    [84] = 84,
    [85] = 85,
    [86] = 86,
    [87] = 87,
    [88] = 88,
    [89] = 89,
    [90] = 90,
    [91] = 91,
    [92] = 92,
    [93] = 93,
    [94] = 94,
    [95] = 95,
    [96] = 96,
    [97] = 97,
    [98] = 98,
    [99] = 99,
    [100] = 100,
    [101] = 101,
    [102] = 102,
    [103] = 103,
    [104] = 104,
    [105] = 105,
    [106] = 106,
    [107] = 107,
    [108] = 108,
    [109] = 109,
    [110] = 110,
    [111] = 111,
    [112] = 112,
    [113] = 113,
    [114] = 114,
    [115] = 115,
    [116] = 116,
    [117] = 117,
    [118] = 118,
    [119] = 119,
    [120] = 120,
    [121] = 121,
    [122] = 122,
    [123] = 123,
    [124] = 124,
    [125] = 125,
    [126] = 126,
    [127] = 127,
    [128] = 128,
    [129] = 129,
    [130] = 130,
    [131] = 131,
    [132] = 132,
    [133] = 133,
    [134] = 134,
    [135] = 135,
    [136] = 136,
    [137] = 137,
    [138] = 138,
    [139] = 139,
    [140] = 140,
    [141] = 141,
    [142] = 142,
    [143] = 143,
    [144] = 144,
    [145] = 145,
    [146] = 146,
    [147] = 147,
    [148] = 148,
    [149] = 149,
    [150] = 150,
    [151] = 151,
    [152] = 152,
    [153] = 153,
    [154] = 154,
    [155] = 155,
    [156] = 156,
    [157] = 157,
    [158] = 158,
    [159] = 159,
    [160] = 160,
}

local __key_map = {
    id = 1,
    image = 2,
    quality = 3,
    dungeon_name_1 = 4,
    monster_group = 5,
    country = 6,
    award_type = 7,
    final_award_type = 8,
    final_award_value = 9,
    final_award_size = 10,
    corps_exp = 11,
    min_award = 12,
    max_award = 13,
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

        assert(__key_map[k], "cannot find " .. k .. " in record_corps_dungeon_info")
        return t._raw[__key_map[k]]
    end
}

function corps_dungeon_info.getLength()
    return #corps_dungeon_info._data
end

function corps_dungeon_info.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

function corps_dungeon_info.indexOf(index)
    if index == nil then
        return nil
    end
    return setmetatable({_raw = corps_dungeon_info._data[index]}, m)
end

function corps_dungeon_info.get(id)
    local k = id
    return corps_dungeon_info.indexOf(__index_id[k])
end

function corps_dungeon_info.set(id, key, value)
    local record = corps_dungeon_info.get(id)
    if record then
        local keyIndex = __key_map[key]
        if keyIndex then
            record._raw[keyIndex] = value
        end
    end
end

function corps_dungeon_info.get_index_data()
    return __index_id
end

