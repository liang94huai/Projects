local record_ksoul_group_info = {}

record_ksoul_group_info.id = 0 --组合id
record_ksoul_group_info.chapter_id = 0 --归属章节
record_ksoul_group_info.group_name = "" --组合名称
record_ksoul_group_info.pre_id = 0 --前置组合id
record_ksoul_group_info.ksoul_id1 = 0 --所需将灵1
record_ksoul_group_info.ksoul_id2 = 0 --所需将灵2
record_ksoul_group_info.ksoul_id3 = 0 --所需将灵3
record_ksoul_group_info.ksoul_id4 = 0 --所需将灵4
record_ksoul_group_info.ksoul_id5 = 0 --所需将灵5
record_ksoul_group_info.target_value = 0 --激活增加阵图值
record_ksoul_group_info.attribute_type1 = 0 --组合属性类型1
record_ksoul_group_info.attribute_value1 = 0 --组合属性类型值1
record_ksoul_group_info.attribute_type2 = 0 --组合属性类型2
record_ksoul_group_info.attribute_value2 = 0 --组合属性类型值2
record_ksoul_group_info.attribute_type3 = 0 --组合属性类型3
record_ksoul_group_info.attribute_value3 = 0 --组合属性类型值3


ksoul_group_info = {
    _data = {
    [1] = {1,1,"组合1",0,47,0,0,0,0,1,5,150,0,0,0,0,},
    [2] = {2,1,"组合2",1,47,9,0,0,0,2,1,105,0,0,0,0,},
    [3] = {3,1,"组合3",1,47,22,0,0,0,2,2,105,0,0,0,0,},
    [4] = {4,1,"组合4",1,47,10,11,0,0,3,2,75,8,5,0,0,},
    [5] = {5,1,"组合5",1,47,12,17,0,0,3,3,75,9,5,0,0,},
    [6] = {6,1,"组合6",0,51,0,0,0,0,1,1,15,0,0,0,0,},
    [7] = {7,1,"组合7",6,51,53,0,0,0,2,4,30,0,0,0,0,},
    [8] = {8,1,"组合8",6,51,70,0,0,0,2,5,300,0,0,0,0,},
    [9] = {9,1,"组合9",6,51,8,0,0,0,2,3,495,9,5,0,0,},
    [10] = {10,1,"组合10",0,52,0,0,0,0,1,2,15,0,0,0,0,},
    [11] = {11,1,"组合11",10,52,42,0,0,0,2,3,105,0,0,0,0,},
    [12] = {12,1,"组合12",10,52,29,12,0,0,3,4,75,10,5,0,0,},
    [13] = {13,1,"组合13",10,52,41,58,59,0,4,1,135,0,0,0,0,},
    [14] = {14,1,"组合14",0,56,0,0,0,0,1,3,15,0,0,0,0,},
    [15] = {15,1,"组合15",14,56,61,0,0,0,2,1,30,0,0,0,0,},
    [16] = {16,1,"组合16",14,56,10,11,0,0,3,5,750,11,5,0,0,},
    [17] = {17,1,"组合17",14,56,57,70,64,0,4,4,60,0,0,0,0,},
    [18] = {18,1,"组合18",0,57,0,0,0,0,1,4,15,0,0,0,0,},
    [19] = {19,1,"组合19",18,57,70,0,0,0,2,2,30,0,0,0,0,},
    [20] = {20,1,"组合20",18,57,26,38,0,0,3,1,75,7,5,0,0,},
    [21] = {21,1,"组合21",0,58,0,0,0,0,1,5,150,0,0,0,0,},
    [22] = {22,1,"组合22",21,58,25,0,0,0,2,4,105,0,0,0,0,},
    [23] = {23,1,"组合23",0,59,0,0,0,0,1,1,15,0,0,0,0,},
    [24] = {24,1,"组合24",23,59,58,0,0,0,2,3,30,0,0,0,0,},
    [25] = {25,1,"组合25",23,59,18,0,0,0,2,5,1050,0,0,0,0,},
    [26] = {26,1,"组合26",23,59,67,0,0,0,2,4,30,0,0,0,0,},
    [27] = {27,1,"组合27",0,60,0,0,0,0,1,2,15,0,0,0,0,},
    [28] = {28,1,"组合28",27,60,49,0,0,0,2,5,300,0,0,0,0,},
    [29] = {29,1,"组合29",27,60,22,0,0,0,2,1,105,0,0,0,0,},
    [30] = {30,1,"组合30",27,60,19,22,0,0,3,2,75,8,5,0,0,},
    [31] = {31,1,"组合31",27,60,4,0,0,0,2,4,495,10,5,0,0,},
    [32] = {32,1,"组合32",0,61,0,0,0,0,1,3,15,0,0,0,0,},
    [33] = {33,1,"组合33",32,61,60,0,0,0,2,1,30,0,0,0,0,},
    [34] = {34,1,"组合34",32,61,63,0,0,0,2,2,30,0,0,0,0,},
    [35] = {35,1,"组合35",32,61,24,6,0,0,3,5,4650,11,10,27,50,},
    [36] = {36,1,"组合36",0,64,0,0,0,0,1,4,15,0,0,0,0,},
    [37] = {37,1,"组合37",36,64,63,0,0,0,2,3,30,0,0,0,0,},
    [38] = {38,1,"组合38",36,64,37,0,0,0,2,2,105,0,0,0,0,},
    [39] = {39,1,"组合39",36,64,51,0,0,0,2,4,30,0,0,0,0,},
    [40] = {40,1,"组合40",0,65,0,0,0,0,1,5,150,0,0,0,0,},
    [41] = {41,1,"组合41",40,65,29,0,0,0,2,3,105,0,0,0,0,},
    [42] = {42,1,"组合42",40,65,33,0,0,0,2,4,105,0,0,0,0,},
    [43] = {43,1,"组合43",40,65,43,0,0,0,2,5,1050,0,0,0,0,},
    [44] = {44,1,"组合44",40,65,28,1,0,0,3,1,465,7,10,33,50,},
    [45] = {45,1,"组合45",40,65,1,9,28,6,5,1,915,7,20,31,120,},
    [46] = {46,1,"组合46",40,65,10,3,18,16,5,4,645,10,10,29,80,},
    [47] = {47,1,"组合47",0,67,0,0,0,0,1,1,15,0,0,0,0,},
    [48] = {48,1,"组合48",47,67,66,0,0,0,2,5,300,0,0,0,0,},
    [49] = {49,1,"组合49",47,67,68,0,0,0,2,1,30,0,0,0,0,},
    [50] = {50,1,"组合50",47,67,69,0,0,0,2,2,30,0,0,0,0,},
    [51] = {51,1,"组合51",47,67,53,0,0,0,2,3,30,0,0,0,0,},
    [52] = {52,1,"组合52",0,68,0,0,0,0,1,2,15,0,0,0,0,},
    [53] = {53,1,"组合53",52,68,55,0,0,0,2,4,30,0,0,0,0,},
    [54] = {54,1,"组合54",52,68,30,6,32,0,4,3,555,9,10,28,50,},
    [55] = {55,1,"组合55",0,69,0,0,0,0,1,3,15,0,0,0,0,},
    [56] = {56,1,"组合56",55,69,68,0,0,0,2,5,300,0,0,0,0,},
    [57] = {57,1,"组合57",55,69,62,66,0,0,3,3,45,0,0,0,0,},
    [58] = {58,1,"组合58",55,69,73,74,72,0,4,5,600,0,0,0,0,},
    [59] = {59,1,"组合59",0,72,0,0,0,0,1,4,15,0,0,0,0,},
    [60] = {60,1,"组合60",59,72,73,0,0,0,2,1,30,0,0,0,0,},
    [61] = {61,1,"组合61",59,72,74,0,0,0,2,2,30,0,0,0,0,},
    [62] = {62,1,"组合62",59,72,14,0,0,0,2,1,105,0,0,0,0,},
    [63] = {63,1,"组合63",59,72,71,41,0,0,3,5,1200,0,0,0,0,},
    [64] = {64,1,"组合64",0,73,0,0,0,0,1,5,150,0,0,0,0,},
    [65] = {65,1,"组合65",64,73,36,0,0,0,2,2,105,0,0,0,0,},
    [66] = {66,1,"组合66",64,73,46,0,0,0,2,3,30,0,0,0,0,},
    [67] = {67,1,"组合67",64,73,75,0,0,0,2,4,30,0,0,0,0,},
    [68] = {68,1,"组合68",64,73,74,0,0,0,2,5,300,0,0,0,0,},
    [69] = {69,1,"组合69",0,74,0,0,0,0,1,1,15,0,0,0,0,},
    [70] = {70,1,"组合70",69,74,75,0,0,0,2,1,30,0,0,0,0,},
    [71] = {71,1,"组合71",69,74,15,0,0,0,2,3,105,0,0,0,0,},
    [72] = {72,1,"组合72",0,75,0,0,0,0,1,2,15,0,0,0,0,},
    [73] = {73,1,"组合73",0,76,0,0,0,0,1,3,15,0,0,0,0,},
    [74] = {74,1,"组合74",73,76,75,0,0,0,2,2,30,0,0,0,0,},
    [75] = {75,1,"组合75",73,76,67,0,0,0,2,3,30,0,0,0,0,},
    [76] = {76,1,"组合76",0,66,0,0,0,0,1,4,15,0,0,0,0,},
    [77] = {77,1,"组合77",0,53,0,0,0,0,1,5,150,0,0,0,0,},
    [78] = {78,1,"组合78",77,53,15,0,0,0,2,4,105,0,0,0,0,},
    [79] = {79,1,"组合79",77,53,14,0,0,0,2,5,1050,0,0,0,0,},
    [80] = {80,1,"组合80",77,53,70,0,0,0,2,4,30,0,0,0,0,},
    [81] = {81,1,"组合81",0,48,0,0,0,0,1,1,15,0,0,0,0,},
    [82] = {82,1,"组合82",81,48,12,0,0,0,2,1,105,0,0,0,0,},
    [83] = {83,1,"组合83",0,49,0,0,0,0,1,2,15,0,0,0,0,},
    [84] = {84,1,"组合84",83,49,20,0,0,0,2,2,105,0,0,0,0,},
    [85] = {85,1,"组合85",83,49,18,0,0,0,2,3,105,0,0,0,0,},
    [86] = {86,1,"组合86",0,50,0,0,0,0,1,3,15,0,0,0,0,},
    [87] = {87,1,"组合87",86,50,49,0,0,0,2,5,300,0,0,0,0,},
    [88] = {88,1,"组合88",86,50,17,0,0,0,2,4,105,0,0,0,0,},
    [89] = {89,1,"组合89",86,50,65,0,0,0,2,1,30,0,0,0,0,},
    [90] = {90,1,"组合90",86,50,52,0,0,0,2,2,30,0,0,0,0,},
    [91] = {91,1,"组合91",86,50,1,10,0,0,3,2,465,8,10,28,50,},
    [92] = {92,1,"组合92",86,50,7,1,0,0,3,5,9750,11,10,28,120,},
    [93] = {93,2,"组合93",0,14,0,0,0,0,1,2,90,0,0,0,0,},
    [94] = {94,2,"组合94",93,14,50,0,0,0,2,3,105,0,0,0,0,},
    [95] = {95,2,"组合95",93,14,15,53,0,0,3,2,75,8,5,0,0,},
    [96] = {96,2,"组合96",93,14,40,7,39,0,4,5,6300,11,10,34,80,},
    [97] = {97,2,"组合97",93,14,1,2,36,16,5,1,990,7,20,30,120,},
    [98] = {98,2,"组合98",0,15,0,0,0,0,1,3,90,0,0,0,0,},
    [99] = {99,2,"组合99",98,15,14,0,0,0,2,2,180,0,0,0,0,},
    [100] = {100,2,"组合100",98,15,4,0,0,0,2,1,570,7,5,0,0,},
    [101] = {101,2,"组合101",98,15,1,53,0,0,3,4,465,10,10,27,50,},
    [102] = {102,2,"组合102",98,15,23,6,4,0,4,3,900,9,20,33,120,},
    [103] = {103,2,"组合103",98,15,4,22,25,0,4,1,630,7,10,32,80,},
    [104] = {104,2,"组合104",98,15,45,46,13,14,5,4,180,10,5,0,0,},
    [105] = {105,2,"组合105",98,15,28,65,22,24,5,1,255,7,5,0,0,},
    [106] = {106,2,"组合106",0,16,0,0,0,0,1,4,90,0,0,0,0,},
    [107] = {107,2,"组合107",106,16,18,0,0,0,2,3,180,0,0,0,0,},
    [108] = {108,2,"组合108",106,16,4,15,0,0,3,3,540,9,10,27,50,},
    [109] = {109,2,"组合109",106,16,23,11,0,0,3,1,150,7,5,0,0,},
    [110] = {110,2,"组合110",106,16,11,48,21,0,4,5,1650,11,5,0,0,},
    [111] = {111,2,"组合111",106,16,15,4,25,22,5,5,7200,11,10,28,80,},
    [112] = {112,2,"组合112",0,17,0,0,0,0,1,5,900,0,0,0,0,},
    [113] = {113,2,"组合113",112,17,33,0,0,0,2,4,180,0,0,0,0,},
    [114] = {114,2,"组合114",112,17,46,50,0,0,3,3,120,0,0,0,0,},
    [115] = {115,2,"组合115",112,17,50,49,7,0,4,1,480,7,10,30,50,},
    [116] = {116,2,"组合116",112,17,21,5,75,76,5,4,570,10,10,29,80,},
    [117] = {117,2,"组合117",0,23,0,0,0,0,1,1,90,0,0,0,0,},
    [118] = {118,2,"组合118",117,23,54,0,0,0,2,4,105,0,0,0,0,},
    [119] = {119,2,"组合119",117,23,3,18,0,0,3,4,540,10,10,33,50,},
    [120] = {120,2,"组合120",117,23,29,19,0,0,3,2,150,8,5,0,0,},
    [121] = {121,2,"组合121",117,23,1,5,36,0,4,4,900,10,20,30,120,},
    [122] = {122,2,"组合122",117,23,3,18,7,0,4,5,9000,11,20,34,120,},
    [123] = {123,2,"组合123",117,23,63,7,37,0,4,2,555,8,10,33,80,},
    [124] = {124,2,"组合124",117,23,63,28,30,6,5,4,645,10,10,29,80,},
    [125] = {125,2,"组合125",0,24,0,0,0,0,1,2,90,0,0,0,0,},
    [126] = {126,2,"组合126",125,24,4,0,0,0,2,2,570,8,5,0,0,},
    [127] = {127,2,"组合127",125,24,54,23,0,0,3,3,75,9,5,0,0,},
    [128] = {128,2,"组合128",125,24,13,50,29,0,4,1,165,7,5,0,0,},
    [129] = {129,2,"组合129",125,24,5,16,50,0,4,3,555,9,10,29,80,},
    [130] = {130,2,"组合130",125,24,1,4,6,66,5,3,1425,9,20,27,120,},
    [131] = {131,2,"组合131",0,25,0,0,0,0,1,3,90,0,0,0,0,},
    [132] = {132,2,"组合132",131,25,19,0,0,0,2,5,1800,0,0,0,0,},
    [133] = {133,2,"组合133",131,25,9,0,0,0,2,1,180,0,0,0,0,},
    [134] = {134,2,"组合134",131,25,26,0,0,0,2,2,180,0,0,0,0,},
    [135] = {135,2,"组合135",131,25,55,54,0,0,3,4,120,0,0,0,0,},
    [136] = {136,2,"组合136",131,25,22,58,59,0,4,5,900,11,5,0,0,},
    [137] = {137,2,"组合137",131,25,19,32,6,31,5,1,720,7,10,31,80,},
    [138] = {138,2,"组合138",0,26,0,0,0,0,1,4,90,0,0,0,0,},
    [139] = {139,2,"组合139",138,26,3,0,0,0,2,3,570,9,5,0,0,},
    [140] = {140,2,"组合140",138,26,4,24,0,0,3,5,5400,11,10,31,50,},
    [141] = {141,2,"组合141",138,26,46,1,0,0,3,5,4650,11,10,28,50,},
    [142] = {142,2,"组合142",138,26,57,32,30,0,4,2,165,8,5,0,0,},
    [143] = {143,2,"组合143",138,26,9,19,18,0,4,5,2400,11,5,0,0,},
    [144] = {144,2,"组合144",0,32,0,0,0,0,1,5,900,0,0,0,0,},
    [145] = {145,2,"组合145",144,32,4,2,0,0,3,2,1050,8,10,32,120,},
    [146] = {146,2,"组合146",144,32,15,14,0,0,3,3,150,9,5,0,0,},
    [147] = {147,2,"组合147",144,32,23,33,55,21,5,2,255,8,5,0,0,},
    [148] = {148,2,"组合148",0,33,0,0,0,0,1,1,90,0,0,0,0,},
    [149] = {149,2,"组合149",148,33,5,0,0,0,2,4,570,10,5,0,0,},
    [150] = {150,2,"组合150",148,33,12,0,0,0,2,3,180,0,0,0,0,},
    [151] = {151,2,"组合151",148,33,31,32,0,0,3,4,150,10,5,0,0,},
    [152] = {152,2,"组合152",148,33,65,62,67,66,5,1,150,0,0,0,0,},
    [153] = {153,2,"组合153",0,34,0,0,0,0,1,2,90,0,0,0,0,},
    [154] = {154,2,"组合154",153,34,27,0,0,0,2,4,180,0,0,0,0,},
    [155] = {155,2,"组合155",153,34,37,0,0,0,2,5,1800,0,0,0,0,},
    [156] = {156,2,"组合156",153,34,63,64,51,0,4,5,1350,0,0,0,0,},
    [157] = {157,2,"组合157",0,35,0,0,0,0,1,3,90,0,0,0,0,},
    [158] = {158,2,"组合158",157,35,34,0,0,0,2,1,180,0,0,0,0,},
    [159] = {159,2,"组合159",157,35,37,0,0,0,2,2,180,0,0,0,0,},
    [160] = {160,2,"组合160",157,35,6,0,0,0,2,5,5700,11,5,0,0,},
    [161] = {161,2,"组合161",157,35,64,0,0,0,2,5,1050,0,0,0,0,},
    [162] = {162,2,"组合162",0,41,0,0,0,0,1,4,90,0,0,0,0,},
    [163] = {163,2,"组合163",162,41,20,0,0,0,2,3,180,0,0,0,0,},
    [164] = {164,2,"组合164",162,41,71,40,0,0,3,4,75,10,5,0,0,},
    [165] = {165,2,"组合165",162,41,3,75,76,0,4,2,480,8,10,28,50,},
    [166] = {166,2,"组合166",0,42,0,0,0,0,1,5,900,0,0,0,0,},
    [167] = {167,2,"组合167",166,42,19,0,0,0,2,4,180,0,0,0,0,},
    [168] = {168,2,"组合168",166,42,20,7,0,0,3,1,540,7,10,34,50,},
    [169] = {169,2,"组合169",166,42,23,2,39,0,4,2,630,8,10,34,80,},
    [170] = {170,2,"组合170",0,43,0,0,0,0,1,1,90,0,0,0,0,},
    [171] = {171,2,"组合171",170,43,3,0,0,0,2,1,570,7,5,0,0,},
    [172] = {172,2,"组合172",170,43,1,0,0,0,2,2,570,8,5,0,0,},
    [173] = {173,2,"组合173",170,43,65,0,0,0,2,1,105,0,0,0,0,},
    [174] = {174,2,"组合174",170,43,38,44,8,0,4,3,630,9,10,27,80,},
    [175] = {175,2,"组合175",0,44,0,0,0,0,1,2,90,0,0,0,0,},
    [176] = {176,2,"组合176",175,44,38,0,0,0,2,5,1800,0,0,0,0,},
    [177] = {177,2,"组合177",175,44,43,0,0,0,2,1,180,0,0,0,0,},
    [178] = {178,2,"组合178",175,44,8,0,0,0,2,3,570,9,5,34,50,},
    [179] = {179,2,"组合179",175,44,1,5,40,23,5,2,990,8,20,30,120,},
    [180] = {180,2,"组合180",0,55,0,0,0,0,1,5,150,0,0,0,0,},
    [181] = {181,2,"组合181",180,55,58,0,0,0,2,3,30,0,0,0,0,},
    [182] = {182,2,"组合182",0,70,0,0,0,0,1,1,15,0,0,0,0,},
    [183] = {183,2,"组合183",182,70,57,0,0,0,2,4,30,0,0,0,0,},
    [184] = {184,2,"组合184",182,70,1,0,0,0,2,3,495,9,5,0,0,},
    [185] = {185,2,"组合185",182,70,51,0,0,0,2,5,300,0,0,0,0,},
    [186] = {186,2,"组合186",182,70,61,0,0,0,2,1,30,0,0,0,0,},
    [187] = {187,2,"组合187",182,70,34,35,37,0,4,3,165,9,5,0,0,},
    [188] = {188,2,"组合188",0,71,0,0,0,0,1,2,15,0,0,0,0,},
    [189] = {189,2,"组合189",188,71,10,0,0,0,2,2,105,0,0,0,0,},
    [190] = {190,2,"组合190",188,71,45,0,0,0,2,2,30,0,0,0,0,},
    [191] = {191,2,"组合191",188,71,52,0,0,0,2,3,30,0,0,0,0,},
    [192] = {192,2,"组合192",188,71,72,7,0,0,3,5,5100,11,5,0,0,},
    [193] = {193,2,"组合193",0,62,0,0,0,0,1,3,15,0,0,0,0,},
    [194] = {194,2,"组合194",193,62,29,0,0,0,2,3,105,0,0,0,0,},
    [195] = {195,2,"组合195",0,63,0,0,0,0,1,4,15,0,0,0,0,},
    [196] = {196,2,"组合196",195,63,37,0,0,0,2,4,105,0,0,0,0,},
    [197] = {197,2,"组合197",0,54,0,0,0,0,1,5,150,0,0,0,0,},
    [198] = {198,2,"组合198",197,54,45,0,0,0,2,4,30,0,0,0,0,},
    [199] = {199,2,"组合199",197,54,24,0,0,0,2,5,1050,0,0,0,0,},
    [200] = {200,2,"组合200",197,54,2,0,0,0,2,4,495,10,5,0,0,},
    [201] = {201,2,"组合201",0,45,0,0,0,0,1,1,15,0,0,0,0,},
    [202] = {202,2,"组合202",201,45,48,0,0,0,2,5,300,0,0,0,0,},
    [203] = {203,2,"组合203",201,45,14,0,0,0,2,1,105,0,0,0,0,},
    [204] = {204,2,"组合204",0,46,0,0,0,0,1,2,15,0,0,0,0,},
    [205] = {205,2,"组合205",204,46,17,0,0,0,2,2,105,0,0,0,0,},
    [206] = {206,2,"组合206",204,46,47,0,0,0,2,1,30,0,0,0,0,},
    [207] = {207,3,"组合207",0,9,0,0,0,0,1,5,900,0,0,0,0,},
    [208] = {208,3,"组合208",207,9,25,0,0,0,2,4,180,0,0,0,0,},
    [209] = {209,3,"组合209",207,9,50,49,0,0,3,3,120,0,0,0,0,},
    [210] = {210,3,"组合210",207,9,4,31,32,0,4,5,6300,11,10,32,80,},
    [211] = {211,3,"组合211",207,9,3,48,47,32,5,4,570,10,10,27,80,},
    [212] = {212,3,"组合212",0,10,0,0,0,0,1,1,90,0,0,0,0,},
    [213] = {213,3,"组合213",212,10,71,0,0,0,2,5,1050,0,0,0,0,},
    [214] = {214,3,"组合214",212,10,48,3,0,0,3,5,4650,11,10,32,50,},
    [215] = {215,3,"组合215",212,10,7,3,12,0,4,1,900,7,20,29,120,},
    [216] = {216,3,"组合216",212,10,1,11,9,53,5,4,645,10,10,28,80,},
    [217] = {217,3,"组合217",212,10,3,6,12,33,5,4,990,10,20,29,120,},
    [218] = {218,3,"组合218",0,11,0,0,0,0,1,2,90,0,0,0,0,},
    [219] = {219,3,"组合219",218,11,10,0,0,0,2,5,1800,0,0,0,0,},
    [220] = {220,3,"组合220",218,11,12,17,0,0,3,4,150,10,5,0,0,},
    [221] = {221,3,"组合221",218,11,58,19,21,0,4,4,165,10,5,0,0,},
    [222] = {222,3,"组合222",218,11,16,48,21,4,5,5,6450,11,10,27,80,},
    [223] = {223,3,"组合223",0,12,0,0,0,0,1,3,90,0,0,0,0,},
    [224] = {224,3,"组合224",223,12,16,0,0,0,2,1,180,0,0,0,0,},
    [225] = {225,3,"组合225",223,12,3,0,0,0,2,1,570,7,5,0,0,},
    [226] = {226,3,"组合226",223,12,40,7,0,0,3,2,540,8,10,34,50,},
    [227] = {227,3,"组合227",223,12,17,33,28,0,4,1,240,7,5,0,0,},
    [228] = {228,3,"组合228",223,12,17,16,47,48,5,5,1800,11,5,0,0,},
    [229] = {229,3,"组合229",0,13,0,0,0,0,1,4,90,0,0,0,0,},
    [230] = {230,3,"组合230",229,13,36,0,0,0,2,2,180,0,0,0,0,},
    [231] = {231,3,"组合231",229,13,1,0,0,0,2,2,570,8,5,0,0,},
    [232] = {232,3,"组合232",229,13,50,0,0,0,2,1,105,0,0,0,0,},
    [233] = {233,3,"组合233",229,13,4,26,0,0,3,3,540,9,10,33,50,},
    [234] = {234,3,"组合234",229,13,36,75,76,0,4,5,900,11,5,0,0,},
    [235] = {235,3,"组合235",229,13,1,14,15,45,5,1,645,7,10,32,80,},
    [236] = {236,3,"组合236",229,13,7,50,27,6,5,3,915,9,20,28,120,},
    [237] = {237,3,"组合237",0,18,0,0,0,0,1,5,900,0,0,0,0,},
    [238] = {238,3,"组合238",237,18,56,0,0,0,2,2,105,0,0,0,0,},
    [239] = {239,3,"组合239",237,18,3,4,0,0,3,4,1050,10,10,27,120,},
    [240] = {240,3,"组合240",237,18,20,7,49,0,4,2,555,8,10,29,80,},
    [241] = {241,3,"组合241",237,18,19,1,4,23,5,5,9900,11,20,31,120,},
    [242] = {242,3,"组合242",237,18,13,6,24,40,5,3,720,9,10,33,80,},
    [243] = {243,3,"组合243",0,19,0,0,0,0,1,1,90,0,0,0,0,},
    [244] = {244,3,"组合244",243,19,42,0,0,0,2,3,180,0,0,0,0,},
    [245] = {245,3,"组合245",243,19,1,23,0,0,3,4,540,10,10,31,50,},
    [246] = {246,3,"组合246",243,19,42,23,36,0,4,2,240,8,5,0,0,},
    [247] = {247,3,"组合247",243,19,18,63,28,23,5,5,2550,11,5,0,0,},
    [248] = {248,3,"组合248",0,20,0,0,0,0,1,2,90,0,0,0,0,},
    [249] = {249,3,"组合249",248,20,52,0,0,0,2,3,105,0,0,0,0,},
    [250] = {250,3,"组合250",248,20,18,0,0,0,2,4,180,0,0,0,0,},
    [251] = {251,3,"组合251",248,20,40,41,0,0,3,5,1500,11,5,0,0,},
    [252] = {252,3,"组合252",248,20,60,18,49,0,4,1,90,7,5,0,0,},
    [253] = {253,3,"组合253",248,20,19,44,7,5,5,1,990,7,20,29,120,},
    [254] = {254,3,"组合254",0,21,0,0,0,0,1,3,90,0,0,0,0,},
    [255] = {255,3,"组合255",254,21,63,0,0,0,2,4,105,0,0,0,0,},
    [256] = {256,3,"组合256",254,21,3,22,18,0,4,1,630,7,10,31,80,},
    [257] = {257,3,"组合257",0,22,0,0,0,0,1,4,90,0,0,0,0,},
    [258] = {258,3,"组合258",257,22,4,0,0,0,2,3,570,9,5,0,0,},
    [259] = {259,3,"组合259",257,22,21,0,0,0,2,5,1800,0,0,0,0,},
    [260] = {260,3,"组合260",257,22,60,61,49,0,4,1,135,0,0,0,0,},
    [261] = {261,3,"组合261",0,27,0,0,0,0,1,5,900,0,0,0,0,},
    [262] = {262,3,"组合262",261,27,6,0,0,0,2,4,570,10,5,0,0,},
    [263] = {263,3,"组合263",261,27,38,0,0,0,2,1,180,0,0,0,0,},
    [264] = {264,3,"组合264",261,27,4,6,0,0,3,5,10500,11,10,32,120,},
    [265] = {265,3,"组合265",261,27,28,63,0,0,3,2,75,8,5,0,0,},
    [266] = {266,3,"组合266",261,27,69,68,66,65,5,2,150,0,0,0,0,},
    [267] = {267,3,"组合267",0,28,0,0,0,0,1,1,90,0,0,0,0,},
    [268] = {268,3,"组合268",267,28,30,0,0,0,2,2,180,0,0,0,0,},
    [269] = {269,3,"组合269",267,28,65,0,0,0,2,5,1050,0,0,0,0,},
    [270] = {270,3,"组合270",267,28,33,62,66,0,4,2,90,8,5,0,0,},
    [271] = {271,3,"组合271",267,28,63,30,4,23,5,2,645,8,10,31,80,},
    [272] = {272,3,"组合272",0,29,0,0,0,0,1,2,90,0,0,0,0,},
    [273] = {273,3,"组合273",272,29,27,0,0,0,2,3,180,0,0,0,0,},
    [274] = {274,3,"组合274",272,29,66,62,0,0,3,4,120,0,0,0,0,},
    [275] = {275,3,"组合275",272,29,21,16,22,0,4,3,240,9,5,0,0,},
    [276] = {276,3,"组合276",0,30,0,0,0,0,1,3,90,0,0,0,0,},
    [277] = {277,3,"组合277",276,30,28,0,0,0,2,4,180,0,0,0,0,},
    [278] = {278,3,"组合278",276,30,18,57,0,0,3,3,75,9,5,0,0,},
    [279] = {279,3,"组合279",276,30,4,23,0,0,3,5,5400,11,10,27,50,},
    [280] = {280,3,"组合280",276,30,6,32,31,0,4,2,630,8,10,27,80,},
    [281] = {281,3,"组合281",276,30,18,9,36,0,4,4,240,10,5,0,0,},
    [282] = {282,3,"组合282",276,30,66,62,69,68,5,3,150,0,0,0,0,},
    [283] = {283,3,"组合283",0,31,0,0,0,0,1,4,90,0,0,0,0,},
    [284] = {284,3,"组合284",283,31,28,0,0,0,2,5,1800,0,0,0,0,},
    [285] = {285,3,"组合285",283,31,6,62,0,0,3,1,465,7,10,33,50,},
    [286] = {286,3,"组合286",283,31,3,48,32,0,4,3,555,9,10,28,80,},
    [287] = {287,3,"组合287",0,36,0,0,0,0,1,5,900,0,0,0,0,},
    [288] = {288,3,"组合288",287,36,2,0,0,0,2,5,5700,11,5,0,0,},
    [289] = {289,3,"组合289",287,36,1,0,0,0,2,1,570,7,5,0,0,},
    [290] = {290,3,"组合290",287,36,75,76,0,0,3,5,1200,0,0,0,0,},
    [291] = {291,3,"组合291",287,36,35,17,0,0,3,1,150,7,5,0,0,},
    [292] = {292,3,"组合292",287,36,74,16,73,0,4,3,90,9,5,0,0,},
    [293] = {293,3,"组合293",287,36,5,1,15,32,5,2,990,8,20,33,120,},
    [294] = {294,3,"组合294",0,37,0,0,0,0,1,1,90,0,0,0,0,},
    [295] = {295,3,"组合295",294,37,7,0,0,0,2,2,570,8,5,0,0,},
    [296] = {296,3,"组合296",294,37,70,0,0,0,2,1,105,0,0,0,0,},
    [297] = {297,3,"组合297",294,37,3,0,0,0,2,3,570,9,5,32,50,},
    [298] = {298,3,"组合298",294,37,34,35,0,0,3,2,150,8,5,0,0,},
    [299] = {299,3,"组合299",0,38,0,0,0,0,1,2,90,0,0,0,0,},
    [300] = {300,3,"组合300",299,38,8,0,0,0,2,4,570,10,5,0,0,},
    [301] = {301,3,"组合301",299,38,43,57,0,0,3,4,75,10,5,0,0,},
    [302] = {302,3,"组合302",299,38,44,8,24,4,5,3,990,9,20,32,120,},
    [303] = {303,3,"组合303",0,39,0,0,0,0,1,3,90,0,0,0,0,},
    [304] = {304,3,"组合304",303,39,70,0,0,0,2,2,105,0,0,0,0,},
    [305] = {305,3,"组合305",303,39,23,42,0,0,3,3,150,9,5,0,0,},
    [306] = {306,3,"组合306",303,39,40,44,1,0,4,3,630,9,10,30,80,},
    [307] = {307,3,"组合307",303,39,36,5,23,1,5,4,990,10,20,34,120,},
    [308] = {308,3,"组合308",0,40,0,0,0,0,1,4,90,0,0,0,0,},
    [309] = {309,3,"组合309",308,40,41,0,0,0,2,1,180,0,0,0,0,},
    [310] = {310,3,"组合310",308,40,36,5,0,0,3,1,540,7,10,34,50,},
    [311] = {311,3,"组合311",308,40,7,42,1,0,4,2,900,8,20,30,120,},
    [312] = {312,4,"组合312",0,1,0,0,0,0,1,5,4800,11,5,0,0,},
    [313] = {313,4,"组合313",312,1,23,0,0,0,2,1,570,7,5,0,0,},
    [314] = {314,4,"组合314",312,1,50,49,0,0,3,4,510,10,5,0,0,},
    [315] = {315,4,"组合315",312,1,40,7,0,0,3,4,1050,10,10,34,120,},
    [316] = {316,4,"组合316",312,1,34,35,0,0,3,3,540,9,10,31,50,},
    [317] = {317,4,"组合317",312,1,36,16,45,0,4,5,5550,11,10,30,80,},
    [318] = {318,4,"组合318",312,1,9,53,11,10,5,4,645,10,10,30,80,},
    [319] = {319,4,"组合319",0,2,0,0,0,0,1,1,480,7,5,0,0,},
    [320] = {320,4,"组合320",319,2,8,0,0,0,2,3,960,9,10,34,80,},
    [321] = {321,4,"组合321",319,2,46,0,0,0,2,3,495,9,5,0,0,},
    [322] = {322,4,"组合322",319,2,39,40,0,0,3,4,540,10,10,30,50,},
    [323] = {323,4,"组合323",319,2,1,72,7,0,4,4,1335,10,20,33,120,},
    [324] = {324,4,"组合324",319,2,13,15,14,45,5,5,6450,11,10,34,80,},
    [325] = {325,4,"组合325",0,3,0,0,0,0,1,2,480,8,5,0,0,},
    [326] = {326,4,"组合326",325,3,48,0,0,0,2,4,495,10,5,0,0,},
    [327] = {327,4,"组合327",325,3,1,4,0,0,3,3,1320,9,20,27,120,},
    [328] = {328,4,"组合328",325,3,58,18,59,0,4,1,480,7,10,33,50,},
    [329] = {329,4,"组合329",325,3,20,19,21,18,5,2,720,8,10,33,80,},
    [330] = {330,4,"组合330",0,4,0,0,0,0,1,3,480,9,5,0,0,},
    [331] = {331,4,"组合331",330,4,9,0,0,0,2,2,450,8,10,0,0,},
    [332] = {332,4,"组合332",330,4,25,0,0,0,2,3,450,9,10,0,0,},
    [333] = {333,4,"组合333",330,4,30,0,0,0,2,4,450,10,10,0,0,},
    [334] = {334,4,"组合334",330,4,60,61,0,0,3,5,5100,11,5,0,0,},
    [335] = {335,4,"组合335",330,4,19,10,0,0,3,5,5400,11,10,27,50,},
    [336] = {336,4,"组合336",330,4,23,54,55,0,4,2,480,8,10,31,50,},
    [337] = {337,4,"组合337",330,4,23,26,18,0,4,2,630,8,10,27,80,},
    [338] = {338,4,"组合338",330,4,15,22,57,25,5,1,645,7,10,31,80,},
    [339] = {339,4,"组合339",0,5,0,0,0,0,1,4,480,10,5,0,0,},
    [340] = {340,4,"组合340",339,5,62,0,0,0,2,5,4950,11,5,0,0,},
    [341] = {341,4,"组合341",339,5,42,36,0,0,3,1,540,7,10,30,50,},
    [342] = {342,4,"组合342",339,5,36,27,0,0,3,2,540,8,10,34,50,},
    [343] = {343,4,"组合343",339,5,27,28,63,0,4,1,555,7,10,28,80,},
    [344] = {344,4,"组合344",339,5,3,41,75,76,5,3,840,9,20,28,120,},
    [345] = {345,4,"组合345",0,6,0,0,0,0,1,5,4800,11,5,0,0,},
    [346] = {346,4,"组合346",345,6,66,0,0,0,2,1,495,7,5,0,0,},
    [347] = {347,4,"组合347",345,6,27,29,0,0,3,3,540,9,10,30,50,},
    [348] = {348,4,"组合348",345,6,7,13,0,0,3,5,10500,11,10,28,120,},
    [349] = {349,4,"组合349",345,6,28,34,35,0,4,3,630,9,10,34,80,},
    [350] = {350,4,"组合350",345,6,1,4,24,28,5,5,15000,11,20,31,120,},
    [351] = {351,4,"组合351",0,7,0,0,0,0,1,1,480,7,5,0,0,},
    [352] = {352,4,"组合352",351,7,23,0,0,0,2,5,4500,11,10,32,50,},
    [353] = {353,4,"组合353",351,7,72,0,0,0,2,2,495,8,5,0,0,},
    [354] = {354,4,"组合354",351,7,37,40,0,0,3,4,540,10,10,30,50,},
    [355] = {355,4,"组合355",351,7,23,1,0,0,3,1,1050,7,10,32,120,},
    [356] = {356,4,"组合356",351,7,8,44,38,0,4,5,9000,11,20,29,120,},
    [357] = {357,4,"组合357",351,7,3,18,50,49,5,4,840,10,20,32,120,},
    [358] = {358,4,"组合358",0,8,0,0,0,0,1,2,480,8,5,0,0,},
    [359] = {359,4,"组合359",358,8,70,0,0,0,2,3,495,9,5,0,0,},
    [360] = {360,4,"组合360",358,8,43,1,0,0,3,2,1050,8,10,31,120,},
    [361] = {361,4,"组合361",358,8,4,15,24,0,4,1,900,7,20,33,120,},
    [362] = {362,4,"组合362",358,8,4,44,38,26,5,2,990,8,20,29,120,},
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
    [161] = 161,
    [162] = 162,
    [163] = 163,
    [164] = 164,
    [165] = 165,
    [166] = 166,
    [167] = 167,
    [168] = 168,
    [169] = 169,
    [170] = 170,
    [171] = 171,
    [172] = 172,
    [173] = 173,
    [174] = 174,
    [175] = 175,
    [176] = 176,
    [177] = 177,
    [178] = 178,
    [179] = 179,
    [180] = 180,
    [181] = 181,
    [182] = 182,
    [183] = 183,
    [184] = 184,
    [185] = 185,
    [186] = 186,
    [187] = 187,
    [188] = 188,
    [189] = 189,
    [190] = 190,
    [191] = 191,
    [192] = 192,
    [193] = 193,
    [194] = 194,
    [195] = 195,
    [196] = 196,
    [197] = 197,
    [198] = 198,
    [199] = 199,
    [200] = 200,
    [201] = 201,
    [202] = 202,
    [203] = 203,
    [204] = 204,
    [205] = 205,
    [206] = 206,
    [207] = 207,
    [208] = 208,
    [209] = 209,
    [210] = 210,
    [211] = 211,
    [212] = 212,
    [213] = 213,
    [214] = 214,
    [215] = 215,
    [216] = 216,
    [217] = 217,
    [218] = 218,
    [219] = 219,
    [220] = 220,
    [221] = 221,
    [222] = 222,
    [223] = 223,
    [224] = 224,
    [225] = 225,
    [226] = 226,
    [227] = 227,
    [228] = 228,
    [229] = 229,
    [230] = 230,
    [231] = 231,
    [232] = 232,
    [233] = 233,
    [234] = 234,
    [235] = 235,
    [236] = 236,
    [237] = 237,
    [238] = 238,
    [239] = 239,
    [240] = 240,
    [241] = 241,
    [242] = 242,
    [243] = 243,
    [244] = 244,
    [245] = 245,
    [246] = 246,
    [247] = 247,
    [248] = 248,
    [249] = 249,
    [250] = 250,
    [251] = 251,
    [252] = 252,
    [253] = 253,
    [254] = 254,
    [255] = 255,
    [256] = 256,
    [257] = 257,
    [258] = 258,
    [259] = 259,
    [260] = 260,
    [261] = 261,
    [262] = 262,
    [263] = 263,
    [264] = 264,
    [265] = 265,
    [266] = 266,
    [267] = 267,
    [268] = 268,
    [269] = 269,
    [270] = 270,
    [271] = 271,
    [272] = 272,
    [273] = 273,
    [274] = 274,
    [275] = 275,
    [276] = 276,
    [277] = 277,
    [278] = 278,
    [279] = 279,
    [280] = 280,
    [281] = 281,
    [282] = 282,
    [283] = 283,
    [284] = 284,
    [285] = 285,
    [286] = 286,
    [287] = 287,
    [288] = 288,
    [289] = 289,
    [290] = 290,
    [291] = 291,
    [292] = 292,
    [293] = 293,
    [294] = 294,
    [295] = 295,
    [296] = 296,
    [297] = 297,
    [298] = 298,
    [299] = 299,
    [300] = 300,
    [301] = 301,
    [302] = 302,
    [303] = 303,
    [304] = 304,
    [305] = 305,
    [306] = 306,
    [307] = 307,
    [308] = 308,
    [309] = 309,
    [310] = 310,
    [311] = 311,
    [312] = 312,
    [313] = 313,
    [314] = 314,
    [315] = 315,
    [316] = 316,
    [317] = 317,
    [318] = 318,
    [319] = 319,
    [320] = 320,
    [321] = 321,
    [322] = 322,
    [323] = 323,
    [324] = 324,
    [325] = 325,
    [326] = 326,
    [327] = 327,
    [328] = 328,
    [329] = 329,
    [330] = 330,
    [331] = 331,
    [332] = 332,
    [333] = 333,
    [334] = 334,
    [335] = 335,
    [336] = 336,
    [337] = 337,
    [338] = 338,
    [339] = 339,
    [340] = 340,
    [341] = 341,
    [342] = 342,
    [343] = 343,
    [344] = 344,
    [345] = 345,
    [346] = 346,
    [347] = 347,
    [348] = 348,
    [349] = 349,
    [350] = 350,
    [351] = 351,
    [352] = 352,
    [353] = 353,
    [354] = 354,
    [355] = 355,
    [356] = 356,
    [357] = 357,
    [358] = 358,
    [359] = 359,
    [360] = 360,
    [361] = 361,
    [362] = 362,
}

local __key_map = {
    id = 1,
    chapter_id = 2,
    group_name = 3,
    pre_id = 4,
    ksoul_id1 = 5,
    ksoul_id2 = 6,
    ksoul_id3 = 7,
    ksoul_id4 = 8,
    ksoul_id5 = 9,
    target_value = 10,
    attribute_type1 = 11,
    attribute_value1 = 12,
    attribute_type2 = 13,
    attribute_value2 = 14,
    attribute_type3 = 15,
    attribute_value3 = 16,
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

        assert(__key_map[k], "cannot find " .. k .. " in record_ksoul_group_info")
        return t._raw[__key_map[k]]
    end
}

function ksoul_group_info.getLength()
    return #ksoul_group_info._data
end

function ksoul_group_info.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

function ksoul_group_info.indexOf(index)
    if index == nil then
        return nil
    end
    return setmetatable({_raw = ksoul_group_info._data[index]}, m)
end

function ksoul_group_info.get(id)
    local k = id
    return ksoul_group_info.indexOf(__index_id[k])
end

function ksoul_group_info.set(id, key, value)
    local record = ksoul_group_info.get(id)
    if record then
        local keyIndex = __key_map[key]
        if keyIndex then
            record._raw[keyIndex] = value
        end
    end
end

function ksoul_group_info.get_index_data()
    return __index_id
end

