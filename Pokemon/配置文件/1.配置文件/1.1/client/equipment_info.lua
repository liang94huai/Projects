local record_equipment_info = {}

record_equipment_info.id = 0 --编号
record_equipment_info.name = "" --装备名称
record_equipment_info.type = 0 --装备类型
record_equipment_info.star = 0 --星级
record_equipment_info.potentiality = 0 --潜力
record_equipment_info.wear_level = 0 --可穿戴等级
record_equipment_info.strength_type = 0 --强化属性类型
record_equipment_info.strength_value = 0 --初始强化属性类型值
record_equipment_info.strength_growth = 0 --属性成长率
record_equipment_info.money = 0 --强化花费系数
record_equipment_info.is_sold = 0 --是否可出售
record_equipment_info.price_type = 0 --出售价格类型
record_equipment_info.price = 0 --出售价格类型值
record_equipment_info.refining_type_1 = 0 --精练属性类型1
record_equipment_info.refining_value_1 = 0 --初始精练属性类型值1
record_equipment_info.refining_growth_1 = 0 --成长值1
record_equipment_info.refining_type_2 = 0 --精练属性类型2
record_equipment_info.refining_value_2 = 0 --初始精练属性类型值2
record_equipment_info.refining_growth_2 = 0 --成长值2
record_equipment_info.refining_exp = 0 --精练初始需求经验值
record_equipment_info.suit_id = 0 --套装关联ID
record_equipment_info.res_id = "" --资源id
record_equipment_info.directions = "" --装备描述
record_equipment_info.quality = 0 --品质
record_equipment_info.gm = 0 --GM后台是否可发
record_equipment_info.fragment_id = 0 --碎片id
record_equipment_info.equipment_skill_1 = 0 --神兵技能id1
record_equipment_info.equipment_skill_2 = 0 --神兵技能id2
record_equipment_info.equipment_skill_3 = 0 --神兵技能id3
record_equipment_info.equipment_skill_4 = 0 --神兵技能id4
record_equipment_info.equipment_skill_5 = 0 --神兵技能id5
record_equipment_info.equipment_skill_6 = 0 --神兵技能id6
record_equipment_info.equipment_skill_7 = 0 --神兵技能id7
record_equipment_info.equipment_skill_8 = 0 --神兵技能id8
record_equipment_info.equipment_skill_9 = 0 --神兵技能id9
record_equipment_info.equipment_skill_10 = 0 --神兵技能id10
record_equipment_info.equip_star_id = 0 --升星码


equipment_info = {
    _data = {
    [1] = {1001,"小贩西瓜刀",1,2,12,1,6,66,3,8,1,1,1000,6,13,13,15,10,10,200,1000,"20011","小贩套装之一，一把西瓜刀走天下！",2,1,0,0,0,0,0,0,0,0,0,0,0,0,},
    [2] = {1002,"小贩手套",2,2,12,1,3,40,2,8,1,1,1000,3,8,8,16,10,10,200,1000,"20012","小贩套装之一，小贩工作用手套。",2,1,0,0,0,0,0,0,0,0,0,0,0,0,},
    [3] = {1003,"小贩帽子",3,2,12,1,4,40,2,8,1,1,1000,4,8,8,14,8,8,200,1000,"20013","小贩套装之一，小贩的帽子。",2,1,0,0,0,0,0,0,0,0,0,0,0,0,},
    [4] = {1004,"小贩衣服",4,2,12,1,5,800,40,8,1,1,1000,5,160,160,13,8,8,200,1000,"20014","小贩套装之一，小贩的衣服，比较普通。",2,1,0,0,0,0,0,0,0,0,0,0,0,0,},
    [5] = {2001,"棒球棍",1,3,13,1,6,115,6,16,1,1,1000,6,26,26,15,10,10,400,2000,"20041","棒球套装之一，杀人越货，居家旅行必备。",3,1,2001,0,0,0,0,0,0,0,0,0,0,0,},
    [6] = {2002,"棒球手套",2,3,13,1,3,70,4,16,1,1,1000,3,16,16,16,10,10,400,2000,"20042","棒球套装之一，很厚的手套，防御力不错。",3,1,2002,0,0,0,0,0,0,0,0,0,0,0,},
    [7] = {2003,"棒球头盔",3,3,13,1,4,70,4,16,1,1,1000,4,16,16,14,8,8,400,2000,"20043","棒球套装之一，戴上这个再也不怕被人爆头了。",3,1,2003,0,0,0,0,0,0,0,0,0,0,0,},
    [8] = {2004,"棒球衣服",4,3,13,1,5,1400,70,16,1,1,1000,5,320,320,13,8,8,400,2000,"20044","棒球套装之一，能有效的保护身体。",3,1,2004,0,0,0,0,0,0,0,0,0,0,0,},
    [9] = {2011,"暴走钢管",1,3,13,1,6,115,6,16,1,1,1000,6,26,26,15,10,10,400,2010,"20151","暴走族套装之一，街头随手抄来的钢管，打斗利器！",3,1,2011,0,0,0,0,0,0,0,0,0,0,0,},
    [10] = {2012,"暴走手套",2,3,13,1,3,70,4,16,1,1,1000,3,16,16,16,10,10,400,2010,"20152","暴走族套装之一，能让你打架时手不抖。",3,1,2012,0,0,0,0,0,0,0,0,0,0,0,},
    [11] = {2013,"暴走头带",3,3,13,1,4,70,4,16,1,1,1000,4,16,16,14,8,8,400,2010,"20153","暴走族套装之一，暴走族之魂！",3,1,2013,0,0,0,0,0,0,0,0,0,0,0,},
    [12] = {2014,"暴走服",4,3,13,1,5,1400,70,16,1,1,1000,5,320,320,13,8,8,400,2010,"20154","暴走族套装之一，男人的浪漫！",3,1,2014,0,0,0,0,0,0,0,0,0,0,0,},
    [13] = {3001,"警察电棒",1,4,18,1,6,198,10,43,1,1,1000,6,33,33,15,10,10,500,3000,"20061","警察套装之一，注意别拿反了……",4,1,3001,0,0,0,0,0,0,0,0,0,0,0,},
    [14] = {3002,"警察手套",2,4,18,1,3,120,6,43,1,1,1000,3,20,20,16,10,10,500,3000,"20062","警察套装之一，绝缘手套，不用担心电到自己了。",4,1,3002,0,0,0,0,0,0,0,0,0,0,0,},
    [15] = {3003,"警察帽子",3,4,18,1,4,120,6,43,1,1,1000,4,20,20,14,8,8,500,3000,"20063","警察套装之一，大盖帽！",4,1,3003,0,0,0,0,0,0,0,0,0,0,0,},
    [16] = {3004,"警察装",4,4,18,1,5,2400,120,43,1,1,1000,5,400,400,13,8,8,500,3000,"20064","警察套装之一，穿上这个就是公务员了……",4,1,3004,0,0,0,0,0,0,0,0,0,0,0,},
    [17] = {3011,"忍者刀",1,4,18,1,6,198,10,43,1,1,1000,6,33,33,15,10,10,500,3010,"20051","忍者套装之一，忍者标配的武器！",4,1,3011,0,0,0,0,0,0,0,0,0,0,0,},
    [18] = {3012,"忍者手套",2,4,18,1,3,120,6,43,1,1,1000,3,20,20,16,10,10,500,3010,"20052","忍者套装之一，据说有暗器藏在里面。",4,1,3012,0,0,0,0,0,0,0,0,0,0,0,},
    [19] = {3013,"忍者面罩",3,4,18,1,4,120,6,43,1,1,1000,4,20,20,14,8,8,500,3010,"20053","忍者套装之一，别的不说，就是帅！",4,1,3013,0,0,0,0,0,0,0,0,0,0,0,},
    [20] = {3014,"忍者装",4,4,18,1,5,2400,120,43,1,1,1000,5,400,400,13,8,8,500,3010,"20054","忍者套装之一，多功能用途的忍者服装。",4,1,3014,0,0,0,0,0,0,0,0,0,0,0,},
    [21] = {3021,"终结者枪",1,4,18,1,6,198,10,43,1,1,1000,6,33,33,15,10,10,500,3020,"20171","终结者套装之一，火力强大，液态机器人都能打穿！",4,1,3021,0,0,0,0,0,0,0,0,0,0,0,},
    [22] = {3022,"终结者手套",2,4,18,1,3,120,6,43,1,1,1000,3,20,20,16,10,10,500,3020,"20172","终结者套装之一，骑摩托车必备！",4,1,3022,0,0,0,0,0,0,0,0,0,0,0,},
    [23] = {3023,"终结者墨镜",3,4,18,1,4,120,6,43,1,1,1000,4,20,20,14,8,8,500,3020,"20173","终结者套装之一，戴上他你就比阿诺还帅！",4,1,3023,0,0,0,0,0,0,0,0,0,0,0,},
    [24] = {3024,"终结者皮衣",4,4,18,1,5,2400,120,43,1,1,1000,5,400,400,13,8,8,500,3020,"20174","终结者套装之一，好像是抢来的……",4,1,3024,0,0,0,0,0,0,0,0,0,0,0,},
    [25] = {4001,"小龙双节棍",1,5,20,1,6,247,12,68,1,1,1000,6,46,46,15,10,10,700,4000,"20071","李小龙套装之一，独门兵器，耍的不好会打到自己……",5,1,4001,0,0,0,0,0,0,0,0,0,0,4001,},
    [26] = {4002,"小龙手套",2,5,20,1,3,150,8,68,1,1,1000,3,28,28,16,10,10,700,4000,"20072","李小龙套装之一，可以有效保护使用截拳道的拳头。",5,1,4002,0,0,0,0,0,0,0,0,0,0,4002,},
    [27] = {4003,"小龙墨镜",3,5,20,1,4,150,8,68,1,1,1000,4,28,28,14,8,8,700,4000,"20073","李小龙套装之一，戴上它你就是潮流！",5,1,4003,0,0,0,0,0,0,0,0,0,0,4003,},
    [28] = {4004,"小龙运动装",4,5,20,1,5,3000,150,68,1,1,1000,5,560,560,13,8,8,700,4000,"20074","李小龙套装之一，黄色运动装，经典中的经典！",5,1,4004,0,0,0,0,0,0,0,0,0,0,4004,},
    [29] = {4011,"007手枪",1,5,20,1,6,247,12,68,1,1,1000,6,46,46,15,10,10,700,4010,"20181","007套装之一，高科技手枪。",5,1,4011,0,0,0,0,0,0,0,0,0,0,4011,},
    [30] = {4012,"007手套",2,5,20,1,3,150,8,68,1,1,1000,3,28,28,16,10,10,700,4010,"20182","007套装之一，高级手套。",5,1,4012,0,0,0,0,0,0,0,0,0,0,4012,},
    [31] = {4013,"007帽子",3,5,20,1,4,150,8,68,1,1,1000,4,28,28,14,8,8,700,4010,"20183","007套装之一，与西服搭配的帽子。",5,1,4013,0,0,0,0,0,0,0,0,0,0,4013,},
    [32] = {4014,"007西服",4,5,20,1,5,3000,150,68,1,1,1000,5,560,560,13,8,8,700,4010,"20184","007套装之一，穿上它就会有无数美女拜倒在你的裤衩下……",5,1,4014,0,0,0,0,0,0,0,0,0,0,4014,},
    [33] = {4021,"黑寡妇飞刀",1,5,20,1,6,247,12,68,1,1,1000,6,46,46,15,10,10,700,4020,"20191","黑寡妇套装之一，黑寡妇擅用的武器。",5,1,4021,0,0,0,0,0,0,0,0,0,0,4021,},
    [34] = {4022,"黑寡妇手套",2,5,20,1,3,150,8,68,1,1,1000,3,28,28,16,10,10,700,4020,"20192","黑寡妇套装之一，手套里面有各种机关",5,1,4022,0,0,0,0,0,0,0,0,0,0,4022,},
    [35] = {4023,"黑寡妇眼罩",3,5,20,1,4,150,8,68,1,1,1000,4,28,28,14,8,8,700,4020,"20193","黑寡妇套装之一，据说可以测出对手的实力……",5,1,4023,0,0,0,0,0,0,0,0,0,0,4023,},
    [36] = {4024,"黑寡妇衣服",4,5,20,1,5,3000,150,68,1,1,1000,5,560,560,13,8,8,700,4020,"20194","黑寡妇套装之一，黑色紧身衣，男女皆可穿。两个字：性感！",5,1,4024,0,0,0,0,0,0,0,0,0,0,4024,},
    [37] = {5001,"美队盾",1,6,23,1,6,297,15,84,1,1,1000,6,52,52,15,10,10,800,5000,"20081","美国队长套装之一，艾德曼合金制造！",6,1,5001,101,102,103,104,105,106,107,108,109,110,5001,},
    [38] = {5002,"美队手套",2,6,23,1,3,180,9,84,1,1,1000,3,32,32,16,10,10,800,5000,"20082","美国队长套装之一，正义的手套！",6,1,5002,401,402,403,404,405,406,407,408,409,410,5002,},
    [39] = {5003,"美队头盔",3,6,23,1,4,180,9,84,1,1,1000,4,32,32,14,8,8,800,5000,"20083","美国队长套装之一，正义的头盔！",6,1,5003,301,302,303,304,305,306,307,308,309,310,5003,},
    [40] = {5004,"美队装",4,6,23,1,5,3600,180,84,1,1,1000,5,640,640,13,8,8,800,5000,"20084","美国队长套装之一，穿上这个你就是正义！",6,1,5004,201,202,203,204,205,206,207,208,209,210,5004,},
    [41] = {6001,"金刚狼利爪",1,7,25,1,6,346,17,101,1,1,1000,6,59,59,15,10,10,900,6000,"20091","金刚狼套装之一，艾德曼合金的爪子！",7,1,6001,0,0,0,0,0,0,0,0,0,0,6001,},
    [42] = {6002,"金刚狼手套",2,7,25,1,3,210,11,101,1,1,1000,3,36,36,16,10,10,900,6000,"20092","金刚狼套装之一，经常会被爪子捅破……",7,1,6002,0,0,0,0,0,0,0,0,0,0,6002,},
    [43] = {6003,"金刚狼眼罩",3,7,25,1,4,210,11,101,1,1,1000,4,36,36,14,8,8,900,6000,"20093","金刚狼套装之一，狼人的眼罩。",7,1,6003,0,0,0,0,0,0,0,0,0,0,6003,},
    [44] = {6004,"金刚狼衣服",4,7,25,1,5,4200,210,101,1,1,1000,5,720,720,13,8,8,900,6000,"20094","金刚狼套装之一，狼人的衣服。",7,1,6004,0,0,0,0,0,0,0,0,0,0,6004,},
    [45] = {7001,"雷神锤子",1,7,25,1,6,396,20,128,1,1,1000,6,66,66,15,10,10,1000,7000,"20101","雷神套装之一，一般人是拿不起来的，奥丁传家宝！",7,1,7001,0,0,0,0,0,0,0,0,0,0,7001,},
    [46] = {7002,"雷神手套",2,7,25,1,3,240,12,128,1,1,1000,3,40,40,16,10,10,1000,7000,"20102","雷神套装之一，为了保护拿锤的手……",7,1,7002,0,0,0,0,0,0,0,0,0,0,7002,},
    [47] = {7003,"雷神头盔",3,7,25,1,4,240,12,128,1,1,1000,4,40,40,14,8,8,1000,7000,"20103","雷神套装之一，虽然看起来傻傻的，但也是神器！",7,1,7003,0,0,0,0,0,0,0,0,0,0,7003,},
    [48] = {7004,"雷神衣服",4,7,25,1,5,4800,240,128,1,1,1000,5,800,800,13,8,8,1000,7000,"20104","雷神套装之一，穿上后极显身材……",7,1,7004,0,0,0,0,0,0,0,0,0,0,7004,},
    [49] = {7011,"蜘蛛丝",1,7,25,1,6,396,20,128,1,1,1000,6,66,66,15,10,10,1000,7010,"20111","蜘蛛侠套装之一，白色，粘稠状……",7,1,7011,0,0,0,0,0,0,0,0,0,0,7011,},
    [50] = {7012,"蜘蛛侠手套",2,7,25,1,3,240,12,128,1,1,1000,3,40,40,16,10,10,1000,7010,"20112","蜘蛛侠套装之一，经常会射出一些白色的黏黏的东西……",7,1,7012,0,0,0,0,0,0,0,0,0,0,7012,},
    [51] = {7013,"蜘蛛侠面具",3,7,25,1,4,240,12,128,1,1,1000,4,40,40,14,8,8,1000,7010,"20113","蜘蛛侠套装之一，戴上后你会有蜘蛛侠一样的第六感……",7,1,7013,0,0,0,0,0,0,0,0,0,0,7013,},
    [52] = {7014,"蜘蛛侠衣服",4,7,25,1,5,4800,240,128,1,1,1000,5,800,800,13,8,8,1000,7010,"20114","蜘蛛侠套装之一，穿上后你会像蜘蛛侠一样敏捷……",7,1,7014,0,0,0,0,0,0,0,0,0,0,7014,},
    [53] = {7021,"钢铁侠火炮",1,7,25,1,6,396,20,128,1,1,1000,6,66,66,15,10,10,1000,7020,"20121","钢铁侠套装之一，一炮打过去，整座大楼都没了……",7,1,7021,0,0,0,0,0,0,0,0,0,0,7021,},
    [54] = {7022,"钢铁侠手套",2,7,25,1,3,240,12,128,1,1,1000,3,40,40,16,10,10,1000,7020,"20122","钢铁侠套装之一，最帅的就是可以发掌心雷……",7,1,7022,0,0,0,0,0,0,0,0,0,0,7022,},
    [55] = {7023,"钢铁侠头盔",3,7,25,1,4,240,12,128,1,1,1000,4,40,40,14,8,8,1000,7020,"20123","钢铁侠套装之一，穿上可以直接和电脑通讯……",7,1,7023,0,0,0,0,0,0,0,0,0,0,7023,},
    [56] = {7024,"钢铁侠衣服",4,7,25,1,5,4800,240,128,1,1,1000,5,800,800,13,8,8,1000,7020,"20124","钢铁侠套装之一，超强防御力，不会被破坏……",7,1,7024,0,0,0,0,0,0,0,0,0,0,7024,},
    [57] = {7031,"蝙蝠侠飞镖",1,7,25,1,6,396,20,128,1,1,1000,6,66,66,15,10,10,1000,7030,"20131","蝙蝠侠套装之一，蝙蝠侠手工亲自打磨，手都磨肿了……",7,1,7031,0,0,0,0,0,0,0,0,0,0,7031,},
    [58] = {7032,"蝙蝠侠手套",2,7,25,1,3,240,12,128,1,1,1000,3,40,40,16,10,10,1000,7030,"20132","蝙蝠侠套装之一，保护被磨肿的手……",7,1,7032,0,0,0,0,0,0,0,0,0,0,7032,},
    [59] = {7033,"蝙蝠侠面具",3,7,25,1,4,240,12,128,1,1,1000,4,40,40,14,8,8,1000,7030,"20133","蝙蝠侠套装之一，正义必胜！",7,1,7033,0,0,0,0,0,0,0,0,0,0,7033,},
    [60] = {7034,"蝙蝠侠衣服",4,7,25,1,5,4800,240,128,1,1,1000,5,800,800,13,8,8,1000,7030,"20134","蝙蝠侠套装之一，有各种高科技装备在里面……",7,1,7034,0,0,0,0,0,0,0,0,0,0,7034,},
    [61] = {7041,"超人铁拳",1,7,25,1,6,396,20,128,1,1,1000,6,66,66,15,10,10,1000,7040,"20141","超人套装之一，拥有这样的拳头，你便已经无敌了",7,1,7041,0,0,0,0,0,0,0,0,0,0,7041,},
    [62] = {7042,"超人手套",2,7,25,1,3,240,12,128,1,1,1000,3,40,40,16,10,10,1000,7040,"20142","超人套装之一，拥有这件手套，你便已经无敌了",7,1,7042,0,0,0,0,0,0,0,0,0,0,7042,},
    [63] = {7043,"超人发型",3,7,25,1,4,240,12,128,1,1,1000,4,40,40,14,8,8,1000,7040,"20143","超人套装之一，地球毁灭了，发型也不会乱！",7,1,7043,0,0,0,0,0,0,0,0,0,0,7043,},
    [64] = {7044,"超人衣服",4,7,25,1,5,4800,240,128,1,1,1000,5,800,800,13,8,8,1000,7040,"20144","超人套装之一，重要的不是衣服，是身材！",7,1,7044,0,0,0,0,0,0,0,0,0,0,7044,},
    [65] = {9001,"一拳戒指",1,7,25,1,6,800000,17,128,1,1,1000,6,66,66,15,10,10,1000,7040,"20141","琦玉的戒指",7,1,0,0,0,0,0,0,0,0,0,0,0,9001,},
    [66] = {9002,"一拳手套",2,7,25,1,21,800000,1,128,1,1,1000,3,40,40,16,10,10,1000,7040,"20142","琦玉的手套",7,1,0,0,0,0,0,0,0,0,0,0,0,9002,},
    [67] = {9003,"一拳披风",3,7,25,1,17,10000,1,128,1,1,1000,4,40,40,14,8,8,1000,7040,"20143","琦玉的披风",7,1,0,0,0,0,0,0,0,0,0,0,0,9003,},
    [68] = {9004,"一拳紧身衣",4,7,25,1,5,8000000,200,128,1,1,1000,5,800,800,13,8,8,1000,7040,"20144","琦玉的紧身衣",7,1,0,0,0,0,0,0,0,0,0,0,0,9004,},
    }
}

local __index_id = {
    [1001] = 1,
    [1002] = 2,
    [1003] = 3,
    [1004] = 4,
    [2001] = 5,
    [2002] = 6,
    [2003] = 7,
    [2004] = 8,
    [2011] = 9,
    [2012] = 10,
    [2013] = 11,
    [2014] = 12,
    [3001] = 13,
    [3002] = 14,
    [3003] = 15,
    [3004] = 16,
    [3011] = 17,
    [3012] = 18,
    [3013] = 19,
    [3014] = 20,
    [3021] = 21,
    [3022] = 22,
    [3023] = 23,
    [3024] = 24,
    [4001] = 25,
    [4002] = 26,
    [4003] = 27,
    [4004] = 28,
    [4011] = 29,
    [4012] = 30,
    [4013] = 31,
    [4014] = 32,
    [4021] = 33,
    [4022] = 34,
    [4023] = 35,
    [4024] = 36,
    [5001] = 37,
    [5002] = 38,
    [5003] = 39,
    [5004] = 40,
    [6001] = 41,
    [6002] = 42,
    [6003] = 43,
    [6004] = 44,
    [7001] = 45,
    [7002] = 46,
    [7003] = 47,
    [7004] = 48,
    [7011] = 49,
    [7012] = 50,
    [7013] = 51,
    [7014] = 52,
    [7021] = 53,
    [7022] = 54,
    [7023] = 55,
    [7024] = 56,
    [7031] = 57,
    [7032] = 58,
    [7033] = 59,
    [7034] = 60,
    [7041] = 61,
    [7042] = 62,
    [7043] = 63,
    [7044] = 64,
    [9001] = 65,
    [9002] = 66,
    [9003] = 67,
    [9004] = 68,
}

local __key_map = {
    id = 1,
    name = 2,
    type = 3,
    star = 4,
    potentiality = 5,
    wear_level = 6,
    strength_type = 7,
    strength_value = 8,
    strength_growth = 9,
    money = 10,
    is_sold = 11,
    price_type = 12,
    price = 13,
    refining_type_1 = 14,
    refining_value_1 = 15,
    refining_growth_1 = 16,
    refining_type_2 = 17,
    refining_value_2 = 18,
    refining_growth_2 = 19,
    refining_exp = 20,
    suit_id = 21,
    res_id = 22,
    directions = 23,
    quality = 24,
    gm = 25,
    fragment_id = 26,
    equipment_skill_1 = 27,
    equipment_skill_2 = 28,
    equipment_skill_3 = 29,
    equipment_skill_4 = 30,
    equipment_skill_5 = 31,
    equipment_skill_6 = 32,
    equipment_skill_7 = 33,
    equipment_skill_8 = 34,
    equipment_skill_9 = 35,
    equipment_skill_10 = 36,
    equip_star_id = 37,
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

        assert(__key_map[k], "cannot find " .. k .. " in record_equipment_info")
        return t._raw[__key_map[k]]
    end
}

function equipment_info.getLength()
    return #equipment_info._data
end

function equipment_info.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

function equipment_info.indexOf(index)
    if index == nil then
        return nil
    end
    return setmetatable({_raw = equipment_info._data[index]}, m)
end

function equipment_info.get(id)
    local k = id
    return equipment_info.indexOf(__index_id[k])
end

function equipment_info.set(id, key, value)
    local record = equipment_info.get(id)
    if record then
        local keyIndex = __key_map[key]
        if keyIndex then
            record._raw[keyIndex] = value
        end
    end
end

function equipment_info.get_index_data()
    return __index_id
end

