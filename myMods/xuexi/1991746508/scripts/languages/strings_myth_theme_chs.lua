local STRINGS = GLOBAL.STRINGS


--图鉴相关的 都在这里
STRINGS.MYTH_BOOINFO = {

    DUIHUAN = "兑换列表",
    GEIYU = "可给予",
    HUODE = "可获得",
    NOPLAYER = "人物传记已丢失，启用角色mod方能找回残页",
    FILTER_ALL = "全部",
    YONGJIU = "永久",
    LONGER = "很长",
    HUOQU = "获取方式",

    --神仙
    SHENXIAN = {
        laozi = {
            title = "道德天尊，太上道祖\n燃烧急急如律令来召唤老君，可将珍贵材料或道具跟其换丹药或法宝。兑换次数有限，每次召唤后需要三日冷却。\n老君不与妖孽交易!",
        },
        ghg = {
            title = "广寒宫的主人,深居月宫数千年。\n非常欢迎且期待来到广寒宫的客人，\n夜晚嫦娥要歇息,只会在白天招待客人。\n可以赠与嫦娥珍贵的宝石或仙种大蟠桃\n增加好感,嫦娥也许会用月饼来回赠客人。",
        },
        tudi = {
            title = "居于地下唯一的土地爷。\n建造土地庙供上贡品，土地公便会出现照顾与保护农田土地。身小能干,保佑土地连年丰收。法力微薄遇到危险会遁地逃离。\n喜好拾取地上的石类物品。",
            text1 = "照顾范围",
            text2 = "以土地庙为中心\n半径为4地皮的圆",
            text3 = "贡品类型",
            text4 = "肉料理,素料理，零食料理",
            text5 = "土地出现的时间",
            text6 = "放置贡品后的5天\n白天与黄昏",
        },
    },
    --妖怪
    YAOGUAI = {
        blackbearger = {
            title = "偷窃袈裟的熊罴怪,一身黑，力大无穷。\n一掌便能撼地成山,还能化作黑风席卷。\n喜好蜂蜜 袈裟与丹药,随身携带丹药葫芦。",
            text1 = "生成方式",
            text2 = "在混合地形会生成蜜罐,蜜罐可填充蜂蜜\n或蜂王浆,填满后会吸引黑风大王袭来。",
            text3 = "注意事项",
            text4 = "黑风大王力大无比伤害奇高且会击飞武器!\n如果长时间脱战,黑风大王将化风离场。\n刷新时间:20天",
            text5 = "战利品",
        },
        sxn = {
            title = "辟寒辟暑辟尘三大王,每年元宵都趁人们\n观灯猜谜时偷吃灯油。莫要小瞧这三兄弟。\n打起架来可是毫不留情,法力高强还仗着\n人多势众。",
            text1 = "生成方式",
            text2 = "地图的随机位置会刷\n出一座破旧的供台,\n在春夜献上蟠桃并\n点燃烛火便可招来\n犀牛三大王。",
            text3 = "注意事项",
            text4 = "三犀牛各个都有擅长的法术,并且很有战斗头脑\n擅长互相分工轮流作战，当场面对他们有利时\n容易放松警惕。场面不利时拼起老命可是万分\n恐怖!当对手逃远或逃至海上他们便会脱战离去。\n刷新时间:下一年春季",
            text5 = "战利品",
        },
        myth_goldfrog = {
            title = "深居月亮的聚宝金蟾，终日藏于地下，\n守着自己无穷无尽的财宝。\n据说其里有可以源源不断生产财宝的聚宝盆\n与摇钱树",
            text1 = "生成方式",
            text2 = "月宫外围寒冷的土地上\n立着一座闪闪发光的\n元宝雕像。\n试图偷采财宝的玩家会\n吵醒愤怒的聚宝金蟾",
            text3 = "注意事项",
            text4 = "聚宝金蟾皮厚肉硬,还会大量挥洒财宝召唤\n小金蟾攻击贪婪的玩家。面对多人时会大口吞下\n玩家来直接腐蚀掉玩家的护甲!\n面对唯唯诺诺的玩家容易脱战,直接遁地离去。\n刷新时间:20天",
            text5 = "战利品",      
        },
        zgxn = {
            title = "身着一层富含生命能量金属的天生玄鸟，\n喜食莲花，传闻其居住并守护于一座被\n生命金属覆盖的岛屿。歌声洪亮，仅一\n声鸣啸便能让起坏心思的人们丢盔弃甲",
            text1 = "生成方式",
            text2 = "极其罕见的玄鸟\n会被盛开的莲花吸引\n落凡。在盛开的莲池\n旁小几率现身。\n",
            text3 = "注意事项",
            text4 = "性格温顺，食用完莲花不久便会离去。\n切忌将其激怒。\n激怒后冷却时间：10天",
            text5 = "玄鸟的馈赠",     
            text6 = "子圭石\n一种具有生命的稀少金属矿石。",     
        },
    },

    --地形
    DIXING = {
        taoyuan = {
            title = "地图上会在随机位置生成一座与与世隔绝的桃花源,桃花源内的野生蟠桃树会自行再生。玩家通过采集可获得蟠桃另外有较小几率获得大蟠桃，玩家可将大蟠桃种在地上培育蟠桃树。蟠桃树生长周期较慢，不可催熟，但在冬天依旧可以生长。毁坏桃树会招来坎普斯。击杀坎普斯有几率掉落少量蟠桃。",
            text1 = "灵台方寸山",
            text2 = "世外桃源 孤僻仙山\n妙法破禁 四方灯开\n方能进入须菩提故居\n可习得飞行术等技能", 
            text3 = "蟠桃树", 
            text4 = "蟠桃树，桃源的特有植物\n可以收获蟠桃和大蟠桃\n毁坏桃林会发生不详的事情",      
        },
        yuegong = {
            title = "在地图上靠外围随机位置会生成一片纯洁的月亮“碎片”。终年飘雪寒冷无比。在这片碎片上中心有一座高雅的宫殿。在其外围的寒冷土地上,还立着一座奇怪的金元宝雕像。",
            text1 = "广寒宫",
            text2 = "月宫中心一座宫殿\n居住着嫦娥仙子\n只能在白天进入\n且得在夜晚前离开", 
            text3 = "金元宝", 
            text4 = "聚宝金蟾在此冬眠。打扰它休息的人\n会受到严厉惩罚!若周围再无威胁,\n金蟾会无心恋战,立刻逃脱。\n1个月后才会再次现身。",           
        },
        zhulin = {
            title = "在地图靠外围随机位置会生成一片被青竹林覆盖的洲屿。洲屿一角的小镇里住着一群抱德炀和的居民。另一角原为居民供奉先祖的场所，据说如今已被妖怪占去并设下供台，要求居民每年春天上供求和。",
            text1 = "莲花",
            text2 = "莲花生长在池塘里，春生秋熟，夏荣冬灭。用剃刀可以收获莲叶。莲花盛开会吸引罕见的子圭玄鸟降世，玄鸟会留下象征生命力量的子圭石作为馈赠。供奉莲花给玄鸟以佑平安，可以获得更多的子圭石。可远观而不可亵玩。",     
            text3 = "破旧的供桌", 
            text4 = "犀牛三大王占领了青竹洲居民祭祀先祖的场所\n设下供台，每年春天上元佳节，便前来索要贡品。\n在春夜献上蟠桃点亮烛火便可招来犀牛三大王",
            text5 = "竹子", 
            text6 = "更多内容敬请期待",    
            text7 = "青竹小镇", 
            text8 = "守护者雕像",
        },
    },

    ITEM_TYPE = { --类型
        renwu  = "人物",
        dixing = "地形",
        lianzhi = "炼制",
        shenhua = "神话",
        shenxian = "神仙",
        yaoguai = "妖怪",

        xiandan = "仙丹",
        fabao = "法宝",
        cailiao = "材料",
        zhuangbei = "装备",
        jianzhu = "建筑",
        gongju = "工具",
        shiwu = "食物",
        jineng = "技能",
        feixingshu = "飞行术",
    },

    ITEM_DES = {--物界面描述
        heat_resistant_pill = "免疫火焰，免疫高温过热！",
		cold_resistant_pill = "免疫潮湿，免疫低温过冷！",
		dust_resistant_pill = "免疫沙尘的影响！",
		fly_pill = "获得风驰电掣般的速度提升！\n使用之后改变飞行术的配方",
		bloodthirsty_pill = "获得恐怖的吸血能力，小心反噬！",
		armor_pill = "获得防御加持，受到伤害减半！",
		condensed_pill = "战斗力提升，攻击力翻倍",
        thorns_pill = "可免疫植物的伤害并保护你！",
		movemountain_pill = "获得神力身负重物依然健步如飞！",
		bananafan_big = "阴阳双生，一扇便荡尽火焰！ ",
		laozi_sp = "将符咒放在地上点燃召唤老君！",
		mk_huoyuan = "锁子黄金甲炼制材料",
		mk_longpi = "锁子黄金甲炼制材料",
		mk_hualing = "凤翅紫金冠炼制材料！",
		purple_gourd = "选定区域吸入地面物品和小生物！",
		myth_yjp = "浇灌施肥，复活作物，吸收雨水！",
		myth_passcard_jie = "有教无类，\n妖精持此令可与太上老君交易！",
		laozi_bell = "太上老君为青牛铸造的铃铛！",
		saddle_qingniu = "太上老君为青牛铸造的牛鞍！",
		myth_weapon_syf = "攻击附带冰冻，\n可施展技能寒冰横扫！",
		myth_weapon_syd = "攻击次数越多伤害越高，\n可施展技能炙热重斩！",
		myth_weapon_gtt = "攻击具有范围伤害，\n可施展技能蓄力重锤",
		
		siving_stone = "七星剑、子圭装备炼制材料！",
		myth_qxj = "秒杀暗影生物，但无掉落物，\n可施展技能一尺寒光！",
		siving_hat = "减伤恢复精神，\n降低装备耐久消耗！",
		armorsiving = "减伤恢复精神，\n阳光下自我修复耐久！",
		myth_fuchen = "增加移速，消除生物仇恨，\n可以施展技能隔空取物！",
		
		yangjian_armor = "抵挡八成半伤害，提高移动速度，\n具有防水抗冻效果！",
		yangjian_hair = "降低技能消耗，缩短技能冷却，\n击杀怪物恢复理智！",
		golden_armor_mk = "抵挡八成半伤害，提高两成攻击，\n具有霸体效果！",
		golden_hat_mk = "降低技能消耗，提升技能威力，\n击杀怪物恢复理智！",
		
		book_myth = "东方神话之书，解锁神话科技，\n点燃后成为天书图鉴！",
		alchmy_fur = "放入正确材料可炼制丹药或道具，\n放入错误后果不堪设想！",
		myth_cash_tree_ground = "源源不断生财的宝贝，\n每两天会掉落一份财宝！",
		cassock = "提供精神恢复，减少食物渴望！",
		kam_lan_cassock = "预防影怪，缓慢恢复精神，\n减少饱食度消耗！",
		mk_battle_flag = "提升攻击力，增加移速，\n可缓慢恢复精神！",
		xzhat_mk = "保暖，缓慢恢复精神！",
		pill_bottle_gourd = "可储存8格丹药，\n丹药在葫芦中不起作用不消耗耐久！",
		wine_bottle_gourd = "直接饮用恢复三维，\n可使用蟠桃素酒补充耐久！",
		myth_zongzi = "可手持，丢入海中吸引鱼类，\n打开后食用可恢复三维！",
		myth_redlantern = "照明，易燃，易被破坏，\n可手持，亦可悬挂在灯笼架上！",
		myth_bbn = "需在月圆吸收月光充能，\n使用后将拥有9格空间！",
		myth_fence = "好看的大屏风！",
		myth_interiors_ghg_flower = "好看的盆景！",
		myth_interiors_ghg_groundlight = "好看的宫灯，提供照明！",
		myth_interiors_ghg_he_left = "美丽的仙鹤摆饰！",
		myth_interiors_ghg_he_right = "美丽的仙鹤摆饰！",
		myth_interiors_ghg_lu = "好看的香炉！",
		myth_redlantern_ground = "可以悬挂两个灯笼！",
		myth_ruyi = "易碎，快速采摘桃树，\n提升大蟠桃掉率！",
		myth_yylp = "靠近解锁天体科技，夜间发光照明，\n仅有一个，不可带下线！",
		myth_mooncake_ice = "食用后锁定精神值一天，\n不可叠加！",
		myth_mooncake_lotus = "食用后不挑食一天，且无减益效果，\n不可叠加！",
		myth_mooncake_nuts = "食用后锁定饱食度一天，\n不可叠加！",
		
		lotus_flower = "可以作为食材，\n可以补充混天绫耐久！",
	    lotus_seeds = "可以直接食用或作为食材！，\n种在池塘里，长出莲花！",
		lotus_seeds_cooked = "可以直接食用或作为食材！",
        lotus_root = "可以直接食用或作为食材！",
        lotus_root_cooked = "可以直接食用或作为食材！",
        myth_lotusleaf = "可以作为食材\n可直接手持当伞！",
		
        myth_bamboo = "基础材料，可作为食材入锅！",
		myth_greenbamboo = "珍贵材料！",
		myth_bamboo_shoots = "可以直接食用或作为食材，\n可以播种在地长成竹子！",
		myth_bamboo_shoots_cooked = "可以直接食用或作为食材！",
		bigpeach = "好吃的不得了！",
		peach = "可直接食用，\n可作为食材，可以在火堆烹饪！",
		peach_cooked = "可直接食用，\n可作为食材！",
		gourd = "农作物，适合秋季生长！",
		gourd_cooked = "可直接食用，\n可作为食材！",
		myth_banana_leaf = "可用于制作蕉叶包裹，\n可作为食材！",
		myth_bundle = "一次性打包袋！",
		myth_cash_tree = "摇钱树制作材料，仅有一棵！",
		myth_coin = "可用于聚宝盆抽取幸运礼物！",
		myth_food_table = "可以摆放八种料理食物，永久保鲜！",
		myth_granary = "可以长时间存放蔬菜以及种子，易燃！",
		myth_toy = "放置在地面提升年味度，\n与猪王换取元宝！",
		myth_tudi_shrines = "供奉荤食、素食、零食料理，\n召唤土地照料作物5天！",
		myth_well = "冬天不结冰，不可钓鱼，\n可扑灭闷烧、水壶接水！",
		myth_banana_tree = "可以收获香蕉以及芭蕉叶！",
		bananafan = "炼制芭蕉宝扇的材料，\n呼风唤雨！",
		myth_rhino_blueheart = "炼制辟寒丹、霜钺斧的材料！",
		myth_rhino_redheart = "炼制辟暑丹、暑熤刀的材料！",
		myth_rhino_yellowheart = "炼制辟尘丹、扢挞藤的材料！",
		siving_rocks = "炼制子圭青金的材料！",
		krampussack_sealed = "炼制紫金葫芦的材料！",
		myth_huanhundan = "喂食灵魂出窍队友身躯，\n可召回队友灵体！ ",
		myth_coin_box = "一大串铜钱！",
	    myth_mooncake_box = "装上美味的月饼！",

		myth_flyskill = "飞起来了，小心别摔着！",

		myth_flyskill_mk = "这一个筋斗就是十万八千里，快哉！",
		mk_dsf = "定住全屏范围内的有仇恨的生物！",
		mk_jgb = "孙悟空专属武器，攻击距离长，\n可用于施展技能身外身法！",

		nz_lance = "哪吒专属武器，火属性伤害加倍，\n可用于施展技能三头六臂！",
    	nz_ring = "哪吒专属武器，远程，\n可反弹多个目标！",
	    nz_damask = "哪吒专属装备，增加移速，\n免疫伤害，使用莲花补充耐久！",
	    myth_flyskill_nz = "脚下炽焰灼灼，抵御火焰！",
	    
	    bone_blade = "攻击自带吸血，\n使用骨片修复耐久！",
	    bone_wand = "召唤骨刺控制敌人并造成伤害，\n使用骨片修复耐久！",
	    bone_whip =  "范围伤害，攻击自带吸血，\n使用骨片修复耐久！",
	    wb_heart = "白骨夫人使用后进入鬼魂状态，留下骨架！",
	    myth_flyskill_wb =  "隐入阴风中，无法被察觉，无法攻击！",

		pigsy_hat = "保暖，提高防御力，\n防雨，缓慢恢复精神！",
	    pigsy_rake = "八戒专属武器，\n可用于格挡伤害以及耕地！",
	    pigsy_sleepbed = "八戒的小窝，随时随地睡觉，\n消耗饱食度，恢复精神以及生命！",
	    myth_flyskill_pg = "软绵绵节省脚力不那么担心饿肚子了！",
	    myth_pigsyskill_bookinfo = "变身获得缓慢回血能力和极高的防御，\n能嘲讽敌人，能下海游泳！",

	    yj_spear = "杨戬专属武器，召唤天雷，\n可用于施展技能驱雷掣电！",
	    myth_flyskill_yj = "此次雷电缠绕，犯我者必有苦头！",
	    yangjian_track = "可直接飞至特殊标记点或队友身边！",
        
	    medicine_pestle_myth = "玉兔专属武器，\n可用于捣药！",
	    guitar_jadehare = "学会琵琶曲后弹奏可产生BUFF音符，\n玩家触摸音符可获得该BUFF加持！",
	    myth_bamboo_basket = "装上满满当当的药材！",
	    myth_flyskill_yt = "冰冰凉的云朵，散发着沁人心脾的药香！",

	    bone_mirror = "换上瑰丽的披风，\n获得极致的能力！",

	    --白骨披风
	    wb_armorbone = "以不再吸血为代价获得防御之力！",
	    wb_armorblood = "吸血能力加强，是更多鲜血的味道！",
	    wb_armorlight = "轻盈如风，提高移动速度！",
	    wb_armorgreed = "获得额外物品概率增加，\n小骷髅、尸体停留时间增加！",
	    wb_armorstorage = "额外携带8格物品，\n会自动拾取格子内已有的物品！",
	    wb_armorfog = "迷雾之中各项能力大幅提升，\n同时骨刃获得技能【雾隐】！",

	    hat_commissioner_white = "用于吸收和储存善魂与恶魂，\n具有一定防雨效果！",
	    bell_commissioner = "消耗善魂催眠周围生物，\n并短暂降低生物攻击力和移速！",
	    token_commissioner= "消耗恶魂让附近生物进入惊恐状态！",
	    pennant_commissioner= "消耗善魂召唤恩魂战斗！",
	    whip_commissioner= "身上恶魂越多，攻击力越高，攻速越低！",
	    soul_specter= "善良的魂魄，\n数量过多造成小范围生物催眠！",
	    soul_ghast= "罪恶的魂魄，\n数量过多会变成怨魂暴动！",
	    myth_yama_statue1 = "交付魂魄获得三维恢复，缩短魂魄重聚时间，\n等级越高能力越强，食物收益越少！",
	    myth_cqf = "使用后原地留下躯体，进入灵魂出窍状态！",
	    myth_higanbana_item = "队友死亡时会盛开，\n可将死亡队友的鬼魂传送回身边！",
	    myth_bahy = "盛开的彼岸花，接引附近的亡魂再次回到世间！",

	    myth_flyskill_ya = "鬼火萦绕，移形换影，无法攻击，无法被攻击！",




    },
	
	ITEM_RECIPE_DES = { --物品获取方式/配方描述
	    myth_yylp = "与嫦娥好感度达到最高时，嫦娥赠予！",
		myth_mooncake = "给予嫦娥仙子宝石、大蟠桃等有几率获得！",
		
		lotus_flower = "哪吒剔骨削肉获得，\n用剃刀采摘开花阶段莲花珠获得！",
	    lotus_seeds = "剥开莲花，收获莲子！",
		lotus_seeds_cooked = "在火堆烹饪莲子获得！",
		lotus_root = "采摘枯萎阶段莲花株获得！",
		lotus_root_cooked = "在火堆烹饪莲藕获得！",
		myth_lotusleaf = "用剃刀采摘开花阶段莲花株获得！",
		
		myth_bamboo = "砍伐成竹、苍竹可以获得！",
		myth_greenbamboo = "砍伐苍竹可以获得！",
		myth_bamboo_shoots = "下雨后，成竹附近有几率长出竹笋！",
		myth_bamboo_shoots_cooked = "竹笋在火堆烹饪获得！",
		bigpeach = "采集桃树有几率掉落\n击败克劳斯也能获得一个！",
		peach = "采摘桃树",
		peach_cooked = "蟠桃在火堆烹饪获得",
		gourd = "种植种子获得，\n克劳斯包裹获得！",
		gourd_cooked = "葫芦在火堆烹饪获得",
		myth_banana_leaf = "采集芭蕉树掉落\n拆开蕉叶包裹也能获得一个！",
		myth_cash_tree = "第一次击退聚宝金蟾获得",
		myth_coin = "神话玩具与猪王交易可获得，\n击杀特定怪物获得，\n摇钱树掉落！",
		myth_toy = "与土地交易获得，\n击杀克劳斯获得，\n聚宝盆有几率获得！",
		bananafan = "使用羽毛扇和太上老君换取！",
		myth_rhino_blueheart = "辟寒大王掉落！",
		myth_rhino_redheart = "辟暑大王掉落！",
		myth_rhino_yellowheart = "辟尘大王掉落！",
		siving_rocks = "子圭玄鸟偷吃莲花株的莲花后遗落，\n给予子圭玄鸟莲花有几率获得！",
		krampussack_sealed = "使用急急如律令封印坎普斯背包！",
		myth_coin_box = "使用绳子串起40个铜钱！",

		myth_huanhundan = "使用救赎之心和太上老君换取\n聚宝盆有几率获得！",
	    soul_specter= "中立生物掉落",
	    soul_ghast= "邪恶生物与boss掉落",
		
		mk_jgb = "孙悟空出生自带",
		nz_zhuangbei_recipe = "哪吒出生自带",--哪吒三武器同一获取方式描述
		pigsy_rake = "八戒出生自带",
		yj_spear = "杨戬出生自带",
		medicine_pestle_myth = "玉兔出生自带",
		hat_commissioner_white = "黑白无常出生自带",
	    zhuangbei_commissioner_w = "白无常出生自带",
	    zhuangbei_commissioner_b= "黑无常出生自带",


		wb_armorfog = "白骨妖镜顶级自动解锁",
		fcs_learn = "方寸山学习解锁",
		

	},

	ITEM_TIME = {
		tian = "天",
		naijiuzhi = "耐久值",
		mk = "孙悟空",
		nz = "哪吒",
		bg = "白骨夫人",
		bj = "猪八戒",
		yj = "杨戬",
		yt = "玉兔",
		hb = "黑白无常",
		hwc = "黑无常",
		bwc = "白无常",
		etc = "其他角色",


	},

	ITEM_SKIN = {--皮肤
		monkey_king1 = "出海学艺",
		monkey_king2 = "火眼金睛",
		monkey_king3 = "戏中行者",
		monkey_king4 = "六耳猕猴",
        monkey_king5 = "弼马温",

		neza1 = "青莲白藕",
		neza2 = "圣婴大王",
        neza3 = "持缨少年",

		white_bone1 = "梨园画皮",

		pigsy1 = "八戒娶亲",
        pigsy2 = "黄牙老象",

		yangjian1 = "墨影素鬓",
		yangjian2 = "妙道清源",
		yangjian3 = "鎏金虎将",

		yutu1 = "蟾宫玉膳",
		yutu2 = "寒月暖冬",
		yutu3 = "杏花仙子",

		myth_he_left = "左仙鹤",
		myth_he_right = "右仙鹤",

		bone_mirror1 = "一级妖镜",
		bone_mirror2 = "二级妖镜",
		bone_mirror3 = "顶级妖镜",

		myth_yama_statue1 = "阎罗石像",
		myth_yama_statue2 = "阎罗神像",
		myth_yama_statue3 = "阎罗神龛",
		myth_yama_statue4 = "阎罗神祠",

	},

	ITEM_XIAOGUO = {
		naijiu = "耐久",
		suoshu = "所属",
        yaoxiao = "药效",
        xiaoguo = "效果",
        lztime = "炼制时间",
        peifang = "配方",
	},
}



--------------------------------------------------------------------------
--[[ 杂七杂八 ]]
--------------------------------------------------------------------------
STRINGS.NAMES.MYTH_DOOR_EXIT = "门"
STRINGS.NAMES.MYTH_DOOR_EXIT_1 = "门"
STRINGS.NAMES.MYTH_DOOR_EXIT_2 = "门"

STRINGS.NAMES.MYTH_DOOR_ENTER = "大门"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_DOOR_ENTER = "灵台方寸，且去寻心"

STRINGS.NAMES.MYTH_SMALLLIGHT = "石灯"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_SMALLLIGHT = "妙法破禁，四方灯开"

STRINGS.MYTH_WEIGHDOWN = "压下去"

STRINGS.READ_FLY_BOOK = "阅读"
STRINGS.MYTH_CLEAR = "清扫"
STRINGS.MYTHNOFLYINROOM = "室内无法使用飞行术"

STRINGS.OLDMYTH_INTERIORS = "积灰的"

STRINGS.NAMES.BOOK_FLY_MYTH = "书"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.BOOK_FLY_MYTH = "遗留的无字天书"

STRINGS.NAMES.MYTH_INTERIORS_LIGHT = "油灯"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_INTERIORS_LIGHT = "只是一盏普通油灯"

STRINGS.NAMES.MYTH_INTERIORS_BED = "坐床"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_INTERIORS_BED = "品香茗，坐论道"

STRINGS.NAMES.MYTH_INTERIORS_GZ = "罐子"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_INTERIORS_GZ = "瓶瓶罐罐"

STRINGS.NAMES.MYTH_INTERIORS_GH = "挂画"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_INTERIORS_GH = "鸿蒙初辟本无性，打破冥顽须悟空"

STRINGS.NAMES.MYTH_INTERIORS_GH_SMALL = "挂画"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_INTERIORS_GH_SMALL = "心"

STRINGS.NAMES.MYTH_INTERIORS_PF = "屏风"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_INTERIORS_PF = "这种家具可不常见"

STRINGS.NAMES.MYTH_INTERIORS_XL = "香炉"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_INTERIORS_XL = "放入特制的香料就可以焚烟"

STRINGS.NAMES.MYTH_INTERIORS_ZZ = "桌子"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_INTERIORS_ZZ = "一张桌子上存放着一本书和未曾完稿的书卷。"

--新加食物
STRINGS.NAMES.MYTH_FOOD_ZPD = "猪皮冻"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_FOOD_ZPD = "让人头皮发麻"

STRINGS.NAMES.MYTH_FOOD_NX = "香蕉奶昔"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_FOOD_NX = "下午茶的美好时光"

STRINGS.NAMES.MYTH_FOOD_LXQ = "蕉叶龙虾球"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_FOOD_LXQ = "高端的食材往往只需要采用最朴素的烹饪方式..."

STRINGS.NAMES.MYTH_FOOD_FHY = "覆海宴"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_FOOD_FHY = "人间珍馐"

STRINGS.NAMES.MYTH_FOOD_HYMZ = "花月满盏"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_FOOD_HYMZ = "我可不忍心吃下它"

STRINGS.NAMES.MYTH_BANANA_LEAF = "蕉叶"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_BANANA_LEAF = "好大的蕉叶"

STRINGS.NAMES.MYTH_BUNDLE = "蕉叶包裹"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_BUNDLE = "蕉叶包裹"

STRINGS.NAMES.MYTH_BUNDLEWRAP = "蕉叶包装"
STRINGS.RECIPE_DESC.MYTH_BUNDLEWRAP = "打包你的东西！"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_BUNDLEWRAP = "里面包裹着一些东西"

STRINGS.NAMES.MYTH_BANANA_TREE = "芭蕉树"
STRINGS.RECIPE_DESC.MYTH_BANANA_TREE = "魔法能让你种下一颗芭蕉树"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_BANANA_TREE = "这可比地下的好看多了"

STRINGS.NAMES.MYTH_ZONGZI1 = "甜粽子"
STRINGS.RECIPE_DESC.MYTH_ZONGZI1 = "做一个甜粽子"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_ZONGZI1 = "白糯加红枣，好似镶玛瑙"

STRINGS.NAMES.MYTH_ZONGZI2 = "咸粽子"
STRINGS.RECIPE_DESC.MYTH_ZONGZI2 = "做一个咸粽子"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_ZONGZI2 = "咸咸的肉，糯糯的香"

STRINGS.NAMES.MYTH_ZONGZI_ITEM1 = "甜粽子"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_ZONGZI_ITEM1 = "香甜可口，美味即食"

STRINGS.NAMES.MYTH_ZONGZI_ITEM2 = "咸粽子"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_ZONGZI_ITEM2 = "咸香耐品，即刻享用"

STRINGS.NAMES.BANANAFAN_BIG = "芭蕉宝扇"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.BANANAFAN_BIG = "珠光宝色淋漓尽致"

STRINGS.NAMES.MYTH_FLYSKILL = "白云"
STRINGS.RECIPE_DESC.MYTH_FLYSKILL = "来自东方的古老秘术。"

STRINGS.NAMES.MYTH_FLYSKILL_MK = "筋斗云"
STRINGS.RECIPE_DESC.MYTH_FLYSKILL_MK = "一筋斗就有十万八千里。"

STRINGS.NAMES.MYTH_FLYSKILL_NZ = "风火轮"
STRINGS.RECIPE_DESC.MYTH_FLYSKILL_NZ = "顷刻行千里，须臾至九州。"

STRINGS.NAMES.MYTH_FLYSKILL_WB = "阴风"
STRINGS.RECIPE_DESC.MYTH_FLYSKILL_WB = "阴风四起，莫寻踪迹。"

STRINGS.NAMES.MYTH_FLYSKILL_PG = "棉花云"
STRINGS.RECIPE_DESC.MYTH_FLYSKILL_PG = "软绵绵，稳当当。"

STRINGS.NAMES.MYTH_FLYSKILL_YJ = "雷云"
STRINGS.RECIPE_DESC.MYTH_FLYSKILL_YJ = "奔走如雷，掠闪行空。"

STRINGS.CHARACTERS.GENERIC.ACTIONFAIL.FUR_COOK = {
    INUSE = "它正在被使用"
}

STRINGS.CHARACTERS.GENERIC.ACTIONFAIL.NZ_PLANT = {
    HASONE = "我不能种在这里"
}

STRINGS.NAMES.HEAT_RESISTANT_PILL = "避暑丹"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.HEAT_RESISTANT_PILL = "有了它我感觉不到火焰和毒辣的太阳了！"

STRINGS.NAMES.COLD_RESISTANT_PILL = "避寒丹"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.COLD_RESISTANT_PILL = "我不用怕冷了，雨也淋不着我！"

STRINGS.NAMES.DUST_RESISTANT_PILL = "避尘丹"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.DUST_RESISTANT_PILL = "不用再担心尘土干扰！"

STRINGS.NAMES.FLY_PILL = "腾云丹"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.FLY_PILL = "真的？我也能够飞起来？"

STRINGS.NAMES.BLOODTHIRSTY_PILL = "嗜血丹"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.BLOODTHIRSTY_PILL = "像蝙蝠一样疯狂！"

STRINGS.NAMES.CONDENSED_PILL = "凝味丹"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.CONDENSED_PILL = "吃下去让我不得不集中精神了！"

STRINGS.NAMES.PEACH = "蟠桃"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.PEACH = "这可不是一般的桃子！"
STRINGS.NAMES.PEACH_COOKED = "烤蟠桃"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.PEACH_COOKED = "烤熟了就变得普通了"
STRINGS.NAMES.PEACH_BANQUET = "蟠桃大会"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.PEACH_BANQUET = "简单的水果拼盘被这桃子赋予了魔力似的！"
STRINGS.NAMES.PEACH_WINE = "蟠桃素酒"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.PEACH_WINE = "这水果酒不一般！"

STRINGS.NAMES.MK_BATTLE_FLAG = "战旗"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MK_BATTLE_FLAG = "这是一面战旗，可以写字！"
STRINGS.NAMES.MK_BATTLE_FLAG_ITEM = "战旗"
STRINGS.RECIPE_DESC.MK_BATTLE_FLAG_ITEM = "为战斗竖起旗帜！"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MK_BATTLE_FLAG_ITEM = "这是一面战旗，可以写字！"

STRINGS.NAMES.HONEY_PIE = "蜂蜜素饼"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.HONEY_PIE = "粗糙的食物加了些蜜糖。"

STRINGS.NAMES.VEGETARIAN_FOOD = "素斋"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.VEGETARIAN_FOOD = "好清淡的味道！"

STRINGS.NAMES.CASSOCK = "袈裟"
STRINGS.RECIPE_DESC.CASSOCK = "披在身上远离凡尘"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.CASSOCK = "远离尘世。"

STRINGS.NAMES.KAM_LAN_CASSOCK = "锦襕袈裟"
STRINGS.RECIPE_DESC.KAM_LAN_CASSOCK = "披上它远离魑魅魍魉。"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.KAM_LAN_CASSOCK = "这件袈裟好闪亮！"

STRINGS.NAMES.GOLDEN_HAT_MK = "凤翅紫金冠"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.GOLDEN_HAT_MK = "好一个威风堂堂的头冠！"

STRINGS.NAMES.GOLDEN_ARMOR_MK = "锁子黄金甲"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.GOLDEN_ARMOR_MK = "战无不胜的盔甲！"

STRINGS.NAMES.XZHAT_MK = "行者帽"
STRINGS.RECIPE_DESC.XZHAT_MK = "做个西行的行者"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.XZHAT_MK = "好舒适的帽子!"

STRINGS.NAMES.BIGPEACH = "大蟠桃"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.BIGPEACH = "这个桃子比其他的大！"

STRINGS.NAMES.MK_HUALING = "花翎"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MK_HUALING = "好漂亮的长翎！"

STRINGS.NAMES.MK_HUOYUAN = "火猿石心"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MK_HUOYUAN = "一颗烫手的石心！"

STRINGS.NAMES.MK_LONGPI = "龙皮绸缎"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MK_LONGPI = "炽热的绸缎！"

STRINGS.NAMES.LOTUS_FLOWER = "莲花"
STRINGS.RECIPE_DESC.LOTUS_FLOWER = "割肉还母，剔骨还父"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.LOTUS_FLOWER = "A lovely science flower."

STRINGS.NAMES.LOTUS_FLOWER_COOKED = "烤莲子"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.LOTUS_FLOWER_COOKED = "A delicacy."

STRINGS.NAMES.GOURD = "葫芦"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.GOURD = "是种好蔬菜"

STRINGS.NAMES.GOURD_COOKED = "烤葫芦"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.GOURD_COOKED = "更香了"

STRINGS.NAMES.GOURD_SEEDS = "葫芦种子"

STRINGS.NAMES.GOURD_SOUP = "葫芦汤"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.GOURD_SOUP = "可口"

STRINGS.NAMES.GOURD_OMELET = "葫芦鸡蛋饼"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.GOURD_OMELET = "是道可口的小菜"

STRINGS.NAMES.PILL_BOTTLE_GOURD = "丹药葫芦"
STRINGS.RECIPE_DESC.PILL_BOTTLE_GOURD = "将丹药存入葫芦中"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.PILL_BOTTLE_GOURD = "用来盛丹药"

STRINGS.NAMES.WINE_BOTTLE_GOURD = "酒葫芦"
STRINGS.RECIPE_DESC.WINE_BOTTLE_GOURD = "好酒好葫芦"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.WINE_BOTTLE_GOURD = "我闻到了酒香"

STRINGS.NAMES.THORNS_PILL = "荆棘丹"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.THORNS_PILL = "荆棘护我！"

STRINGS.NAMES.ARMOR_PILL = "壮骨丹"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.ARMOR_PILL = "强身健体"

STRINGS.NAMES.DETOXIC_PILL = "化毒丹"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.DETOXIC_PILL = "用来解世间百毒"

STRINGS.NAMES.LAOZI_SP = "急急如律令"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.LAOZI_SP = "太上老君，急急如律令"

STRINGS.NAMES.LAOZI = "太上老君"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.LAOZI = "这是东方老神仙！"

STRINGS.NAMES.BANANAFAN = "芭蕉扇"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.BANANAFAN = "这宝扇非同一般"

STRINGS.NAMES.ALCHMY_FUR = "八卦炉"
STRINGS.RECIPE_DESC.ALCHMY_FUR = "只有这个炉子才能控制三昧真火"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.ALCHMY_FUR = {
    EMPTY = "东方传说中的炼丹炉？",
    GENERIC = "我的天，那火焰高温无法想象！",
    DONE = "这丹药在这炉子里经历了什么？！"
}

STRINGS.MKRECIPE = "神话"

STRINGS.LAOZI = {
    A = "你可是在说笑...",
    B = "无礼!",
    C = "休得放肆!",
    D = "莫要贪得无厌!",
    E = "妖精莫要得寸进尺",
    F = "它曾驮吾西出函谷，托付尔等多照拂。",
}

STRINGS.NAMES.PEACHSPROUT_MYTH = "蟠桃树芽"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.PEACHSPROUT_MYTH = "希望它快些长出来！"

STRINGS.NAMES.PEACHSAPLING_MYTH = "蟠桃树苗"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.PEACHSAPLING_MYTH = "希望它快点长大！"

STRINGS.NAMES.PEACHSTUMP_MYTH = "蟠桃树桩"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.PEACHSTUMP_MYTH = "砍掉太可惜了。"

STRINGS.NAMES.PEACHTREEBURNT_MYTH = "烧焦的蟠桃树"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.PEACHTREEBURNT_MYTH = "完全毁了。"

STRINGS.NAMES.PEACHTREE_MYTH = "蟠桃树"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.PEACHTREE_MYTH = {
    GENERIC = "传说中这神树三千年才开一次花，三千年才结一次果!",
    BURNING = "别烧！别烧这么珍贵的树！",
    BLOOM = "为此情此景，仿佛已经等了三千年。",
    FRUIT = "生生世世的等待，就为了这一刻。"
}
STRINGS.CHARACTERS.WENDY.DESCRIBE.PEACHTREE_MYTH = {
    GENERIC = "桃花坞里桃花庵，桃花庵下桃花仙。",
    BURNING = "世人笑我太疯癫，我笑他人看不穿。",
    BLOOM = "桃花仙人种桃树，又摘桃花换酒钱。",
    FRUIT = "半醉半醒日复日，花落花开年复年。"
}

STRINGS.NAMES.FANGCUNHILL = "灵台方寸山"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.FANGCUNHILL = "门扉紧闭。"

STRINGS.NAMES.BOOK_MYTH = "无字天书"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.BOOK_MYTH = "妙意慧法，皆在不言。"
STRINGS.NAMES.BOOK_MYTH_YJ = "无字天书"
STRINGS.RECIPE_DESC.BOOK_MYTH_YJ = "妙意慧法，皆在不言"

STRINGS.NAMES.PURPLE_GOURD = "紫金红葫芦"
STRINGS.NAMES.PURPLE_GOURD_MALE = "紫金葫芦·雄"
STRINGS.NAMES.PURPLE_GOURD_FEMALE = "紫金葫芦·雌"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.PURPLE_GOURD = "宝光凛凛。"

GLOBAL.Myth_AddCachedStr(
    function()
        --蟠桃树芽
        STRINGS.CHARACTERS.MONKEY_KING.DESCRIBE.PEACHSPROUT_MYTH = "这可得让俺老孙好生照顾。"
        STRINGS.CHARACTERS.NEZA.DESCRIBE.PEACHSPROUT_MYTH = "这小树才发芽竟然有冉冉仙气。"
        STRINGS.CHARACTERS.WHITE_BONE.DESCRIBE.PEACHSPROUT_MYTH = "没用的东西。"
        STRINGS.CHARACTERS.PIGSY.DESCRIBE.PEACHSPROUT_MYTH = "要俺等多久才能结果啊。"

        --蟠桃树苗
        STRINGS.CHARACTERS.MONKEY_KING.DESCRIBE.PEACHSAPLING_MYTH = "快长快长，你孙爷爷等着尝尝鲜呢。"
        STRINGS.CHARACTERS.NEZA.DESCRIBE.PEACHSAPLING_MYTH = "树木发春华，遒劲生夏花。"
        STRINGS.CHARACTERS.WHITE_BONE.DESCRIBE.PEACHSAPLING_MYTH = "待仙树开花结果再毁掉岂不美哉。"
        STRINGS.CHARACTERS.PIGSY.DESCRIBE.PEACHSAPLING_MYTH = "长得太慢了，撒泡尿行不行。"

        --蟠桃树桩
        STRINGS.CHARACTERS.MONKEY_KING.DESCRIBE.PEACHSTUMP_MYTH = "可惜了可惜了！"
        STRINGS.CHARACTERS.NEZA.DESCRIBE.PEACHSTUMP_MYTH = "何方妖孽所为，王母得知定要震怒。"
        STRINGS.CHARACTERS.WHITE_BONE.DESCRIBE.PEACHSTUMP_MYTH = "劝君斩草除根，不留后患。"
        STRINGS.CHARACTERS.PIGSY.DESCRIBE.PEACHSTUMP_MYTH = "这可不是俺做的，猴哥你要相信俺。"

        --烧焦的蟠桃树
        STRINGS.CHARACTERS.MONKEY_KING.DESCRIBE.PEACHTREEBURNT_MYTH = "啊呀呀，还我花果山！"
        STRINGS.CHARACTERS.NEZA.DESCRIBE.PEACHTREEBURNT_MYTH = "虽为仙根，仍为木属。"
        STRINGS.CHARACTERS.WHITE_BONE.DESCRIBE.PEACHTREEBURNT_MYTH = "从未拥有，不要也罢。"
        STRINGS.CHARACTERS.PIGSY.DESCRIBE.PEACHTREEBURNT_MYTH = "哼哼，仙树也怕火烧吗。"

        --蟠桃树
        STRINGS.CHARACTERS.MONKEY_KING.DESCRIBE.PEACHTREE_MYTH = {
            GENERIC = "土地老儿说这仙树三千载一开花，三千载一结果。",
            BURNING = "呸！放火算不上什么好汉！",
            BLOOM = "哈，和屁股一样红！",
            FRUIT = "俺老孙可要好好尝尝这仙桃的滋味。"
        }
        STRINGS.CHARACTERS.NEZA.DESCRIBE.PEACHTREE_MYTH = {
            GENERIC = "瑶池仙种，怎落凡尘。",
            BURNING = "火德真君怎敢降灾于此。",
            BLOOM = "丹灶初开火，仙桃正落红。",
            FRUIT = "蟠桃宴上倒是尝过几个，不如此番让小爷过过瘾。"
        }
        STRINGS.CHARACTERS.WHITE_BONE.DESCRIBE.PEACHTREE_MYTH = {
            GENERIC = "此树本生于瑶池，妖众只得听闻，今儿可让我见着了。",
            BURNING = "我心甚欢！",
            BLOOM = "正好补我的胭脂粉。",
            FRUIT = "毁掉此树，定能气毙那死猴子！"
        }
        STRINGS.CHARACTERS.PIGSY.DESCRIBE.PEACHTREE_MYTH = {
            GENERIC = "此树和俺一样，落入凡尘不得志。",
            BURNING = "哎呀呀，俺可没做这缺心眼的事儿！",
            BLOOM = "在下面睡会儿，也许醒来就有桃儿吃了。",
            FRUIT = "哎嘿嘿，俺就多吃几个，猴哥不会知道的。"
        }

        --灵台方寸山
        STRINGS.CHARACTERS.MONKEY_KING.DESCRIBE.FANGCUNHILL = "七载岁月，一道长生。"
        STRINGS.CHARACTERS.NEZA.DESCRIBE.FANGCUNHILL = "不知何方高人居住于此。"
        STRINGS.CHARACTERS.WHITE_BONE.DESCRIBE.FANGCUNHILL = "仙府飘渺，机缘未到。"
        STRINGS.CHARACTERS.PIGSY.DESCRIBE.FANGCUNHILL = "那..那个桃子好像很好吃。"
        STRINGS.CHARACTERS.YANGJIAN.DESCRIBE.FANGCUNHILL = "此处比之桃山又如何？"

        --无字天书
        STRINGS.CHARACTERS.MONKEY_KING.DESCRIBE.BOOK_MYTH = "啥破烂玩意，俺不中意，拿走拿走。"
        STRINGS.CHARACTERS.NEZA.DESCRIBE.BOOK_MYTH = "无字天书不是在姜师叔那吗？"
        STRINGS.CHARACTERS.WHITE_BONE.DESCRIBE.BOOK_MYTH = "道不可名。"
        STRINGS.CHARACTERS.PIGSY.DESCRIBE.BOOK_MYTH = "有没有字俺都不认识。"
        STRINGS.CHARACTERS.YANGJIAN.DESCRIBE.BOOK_MYTH = "此书所载，难逃我法眼"

        --紫金葫芦
        STRINGS.CHARACTERS.MONKEY_KING.DESCRIBE.PURPLE_GOURD = "嘿嘿，你猜猜这葫芦是公的还是母的。"
        STRINGS.CHARACTERS.NEZA.DESCRIBE.PURPLE_GOURD = "师伯祖盛放丹药的宝葫芦。"
        STRINGS.CHARACTERS.WHITE_BONE.DESCRIBE.PURPLE_GOURD = "若得仙丹一粒，省去苦修千载。"
        STRINGS.CHARACTERS.PIGSY.DESCRIBE.PURPLE_GOURD = "让俺瞧瞧里面有啥好吃的。"
        STRINGS.CHARACTERS.YANGJIAN.DESCRIBE.PURPLE_GOURD = "掌中葫芦，乾坤浩大。"
    end
)

--以前的内容集成
STRINGS.FUR_HARVEST = "取丹"
STRINGS.FUR_COOK = "炼丹"
STRINGS.MYTH_USE_INVENTORY = "使用"
STRINGS.USE_GOURD = "喝"
STRINGS.RHI_PLACEITEM = "放置贡品"
STRINGS.MYTH_RED_GIVE = "挂灯笼"
STRINGS.MYTH_RED_TACK = "取灯笼"
STRINGS.MKFLYLAND = "着陆"
STRINGS.NAMES.MYTH_RHINO_DESK = "破旧的供桌"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_RHINO_DESK = "我是不是该虔诚地献上贡品？"

------------------------月宫系列
STRINGS.MKCERECIPE = "月宫的馈赠"

----嫦娥说的话
STRINGS.CHARACTERS.GENERIC.ACTIONFAIL.MYTH_ENTER_HOUSE = {
    BANNED = "既然得罪人还是过几日再来吧",
    FLY = "飞行时候不能这么做!",
    NOTIME = "我不能这么做!" --白天不可以进
}

--[[
STRINGS.CHARACTERS.MONKEY_KING.ACTIONFAIL.MYTH_ENTER_HOUSE ={
	BANNED = "还是等几天再来吧",
	FLY = "飞行时候不能这么做!",
	NOTIME = "我不能这么做!", --白天不可以进
}
STRINGS.CHARACTERS.NEZA.ACTIONFAIL.MYTH_ENTER_HOUSE.BANNED = {
	BANNED = "还是等嫦娥姐姐消气了再去吧",
	FLY = "飞行时候不能这么做!",
	NOTIME = "我不能这么做!", --白天不可以进
}
STRINGS.CHARACTERS.YANGJIAN.ACTIONFAIL.MYTH_ENTER_HOUSE.BANNED = {
	BANNED = "仙子莫要生气了，杨戬改日再来",
	FLY = "飞行时候不能这么做!",
	NOTIME = "我不能这么做!", --白天不可以进
}
STRINGS.CHARACTERS.PIGSY.ACTIONFAIL.MYTH_ENTER_HOUSE.BANNED = {
	BANNED = "俺这糊涂脑子，啥事都能搞砸",
	FLY = "飞行时候不能这么做!",
	NOTIME = "我不能这么做!", --白天不可以进
}
STRINGS.CHARACTERS.WHITE_BONE.ACTIONFAIL.MYTH_ENTER_HOUSE.BANNED = {
	BANNED = "白骨失礼，望仙子海涵",
	FLY = "飞行时候不能这么做!",
	NOTIME = "我不能这么做!", --白天不可以进
}
]]
STRINGS.MYTHGHG_ISNIGHT = {
    --被赶出
    MONKEY_KING = "糟糕！俺老孙一时忘了时辰",
    NEZA = "不好，哪吒好像惹嫦娥姐姐生气了",
    WHITE_BONE = "天下之大，何处有我容身之所",
    PIGSY = "俺今日难道又被糟酒迷了心？",
    YANGJIAN = "下次再向仙子赔罪吧",
    GENERIC = "我不该这么无礼的"
}

STRINGS.MYTHCEHAOGANDU = {
    --好感度 20 50 100 150
    [2] = {
        MONKEY_KING = "大圣客气了",
        NEZA = "三太子客气了",
        WHITE_BONE = "好意我心领了",
        PIGSY = "元帅客气了",
        YANGJIAN = "真君客气了",
        MYTH_YUTU = "我可要好好谢谢你的礼物",
        GENERIC = "实在是客气了"
    },
    [4] = {
        MONKEY_KING = "多谢大圣的礼物",
        NEZA = "多谢三太子的礼物",
        WHITE_BONE = "你倒不必如此",
        PIGSY = "天蓬可是有事相求",
        YANGJIAN = "真君可有什么事情要委托我",
        MYTH_YUTU = "你倒是会拿些小玩意哄我开心",
        GENERIC = "多谢你的礼物"
    },
    [6] = {
        MONKEY_KING = "大圣如此倒让我不好意思了",
        NEZA = "有时间多来我这坐坐",
        WHITE_BONE = "哎，若有灾祸来我这一避吧",
        PIGSY = "往事如烟，元帅不必记再心头",
        YANGJIAN = "原来真君不似传言那般",
        MYTH_YUTU = "罢了罢了，便免了今日的份的捣药",
        GENERIC = "倒也不必如此费心思"
    },
    [7] = {
        MONKEY_KING = "些许斋饼，便赠与大圣西行",
        NEZA = "哪吒之心，有荷之芬芳",
        WHITE_BONE = "日行一善，静思己过，则无灾无祸",
        PIGSY = "望元帅早成正果，重归本位。",
        YANGJIAN = "若有所需，嫦娥定会鼎力相助",
        MYTH_YUTU = "在外遇事莫慌，我自会护你周全 ",
        GENERIC = "你我缘分，不止如此"
    }
}

STRINGS.MYTHGHG_NOCURRENTITEM = {
    --物品不对
    MONKEY_KING = "大圣莫要开玩笑了。",
    NEZA = "这物件还是三太子留着吧。",
    WHITE_BONE = "莫以为我不敢动你。",
    PIGSY = "元帅自重。",
    YANGJIAN = "真君是来消遣我的？",
    MYTH_YUTU = "哈哈，心意我领了。",
    GENERIC = "莫当我是街边的乞丐"
}

--问候
STRINGS.MYTHGHG_RCWH = {
    MONKEY_KING = {"大圣怎不在保你师傅西去取经", "大圣当年大闹天宫真是一段传说", "我这点心可比不上那瑶池蟠桃"},
    NEZA = {"这月饼要是喜欢就带点回去吧", "太乙倒是疼你，赐下这诸般法宝", "吃慢点，喝口茶解解腻"},
    WHITE_BONE = {"善恶有报，时候未到", "望多行善事，以功德洗去诸般业障", "大道有情未必不肯予你一线生机"},
    PIGSY = {"元帅只是被贬凡身，怎的投错了猪胎", "浊酒误事，切勿多饮", "不必拘束，尝点点心吧"},
    YANGJIAN = {"真君来此可有什么心事？", "些许粗茶，聊慰君心", "哮天怎么变得这般圆润，哈哈"},
    MYTH_YUTU = {"来和我说说今日在外面又见到了什么", "今日份的药物可做好了，可不许偷懒", "若是玩好了不如随我回天宫吧"},
    GENERIC = {"尝尝我这茶与你们的可有不同", "饿了的话，不妨尝几块月饼", "能在此地相遇是我等的缘分"}
}

--见面
STRINGS.MYTHGHG_JMWH = {
    MONKEY_KING = "不知大圣到来，有失远迎，来品一杯茶吧",
    NEZA = "哪吒太子，令尊近况如何？",
    WHITE_BONE = "你来我这广寒宫也避不得三灾六祸，也罢也罢，坐下喝杯茶吧。",
    PIGSY = "天蓬元帅，许久不见，近来可好？",
    YANGJIAN = "真君掌法司水，公务繁忙，怎有空来此。",
    MYTH_YUTU = "你这贪玩孩子，这次又到哪里耍去了？",
    GENERIC = "有朋自远方来，不亦说乎？"
}

--嫦娥
STRINGS.MKCETALK_TOLEAVE = "天色已晚，诸位请回吧。。" --时间到了
STRINGS.MKCETALK_TOMANYPEOLE = "广寒宫倒是许久未曾这般热闹了" --人多

STRINGS.SIT_ON_MYTH = "坐" --坐在垫子上

--玉兔重做tip：玉兔给予嫦娥道具触发的台词
STRINGS.MKCETALK_YUTU = {
    POWDER_M_HYPNOTICHERB = { --草参药粉
        GENERIC = "这草药中的极品，研磨时可得拿捏好了。", --教玉兔时
        LEARNED = "珍稀草药，哪来这么多呢。", --玉兔已经学过了
        WRONGSTATE = nil, --没有达到特殊条件
    },
    POWDER_M_LIFEELIXIR = { --犀茸药粉
        GENERIC = "孩子，你怎么有这个，没得罪谁吧？",
        LEARNED = "孩子，停手吧。",
        WRONGSTATE = nil,
    },
    POWDER_M_CHARGED = { --惊厥药粉
        GENERIC = "研磨和装袋时很容易触电，万万要小心。",
        LEARNED = "惊讶，我都教过你了，你忘啦。",
        WRONGSTATE = nil,
    },
    POWDER_M_IMPROVEHEALTH = { --活血药粉
        GENERIC = "这本身很粘稠，需要辅以佐料，听到了吗。",
        LEARNED = "我可忘不掉这甜美的气味。",
        WRONGSTATE = nil,
    },
    POWDER_M_COLDEYE = { --寒眸药粉
        GENERIC = "取自妖邪之物，往往用于以毒攻毒。",
        LEARNED = "怪不得我一阵寒意，快拿走。",
        WRONGSTATE = nil,
    },
    POWDER_M_BECOMESTAR = { --夜明药粉
        GENERIC = "捣烂后与香粉混合，涂于肌肤便能容光焕发，懂了吧。",
        LEARNED = "我不缺这个，孩子，你自己用吧。",
        WRONGSTATE = nil,
    },
    POWDER_M_TAKEITEASY = { --排郁药粉
        GENERIC = "百无聊赖的时候，希望孩子你能多出去转转，散散心。",
        LEARNED = "谢谢，有你陪伴我可开心多了。",
        WRONGSTATE = nil,
    },

    SONG_M_WORKUP = { --《田中乐》
        GENERIC = "蜂群辛勤劳作，孩子你得学学它们，切记不可游手好闲。",
        LEARNED = "别玩了，今天的药粉做好了吗？",
        WRONGSTATE = nil,
    },
    SONG_M_INSOMNIA = { --《春光曲》
        GENERIC = "想念的滋味可不好受，辗转反侧，夜不能寐。",
        LEARNED = "孩子，别想太多，注意休息。",
        WRONGSTATE = nil,
    },
    SONG_M_FIREIMMUNE = { --《浴火奏》
        GENERIC = "浴火重生，犹似凤凰。",
        LEARNED = "我不需要了，你自己拿着吧。",
        WRONGSTATE = nil,
    },
    SONG_M_ICEIMMUNE = { --《寒风调》
        GENERIC = "寒风瑟瑟，冰冻九重。",
        LEARNED = "这暖心的温度，总让我忽然想起这蟾宫的冷清。",
        WRONGSTATE = "蟾宫并不缺这普通的石头。",
    },
    SONG_M_ICESHIELD = { --《梦飞霜》
        GENERIC = "好奇特的鱼，冰鳞冰心，我倒想养一只试试。",
        LEARNED = "孩子你自己要吧，我已经有一条了。",
        WRONGSTATE = nil,
    },

    SONG_M_NOCURE = { --《怨缠身》
        GENERIC = "怨别人，怨自己，怨这怨那，悔不当初。",
        LEARNED = "蟾宫里容不得怪物常驻，快丢外面去。",
        WRONGSTATE = nil,
    },
    SONG_M_WEAKATTACK = { --《春风化雨》
        GENERIC = "以怜悯心待万事万物，方能春风化雨，百里屠苏。",
        LEARNED = "倘若有人一错再错，你可记得不要仁慈。",
        WRONGSTATE = nil,
    },
    SONG_M_WEAKDEFENSE = { --《霸王卸甲》
        GENERIC = "往日盼他卸甲归田，可如今我落得此般境地。",
        LEARNED = "现在你是我唯一的依靠，我已不再需要盼着谁。",
        WRONGSTATE = nil,
    },
    SONG_M_NOLOVE = { --《流水无情》
        GENERIC = "昔日伊人耳边话，已和潮声向东流。",
        LEARNED = "你走吧，我想一个人待一会。",
        WRONGSTATE = nil,
    },
    SONG_M_SWEETDREAM = { --《夜阑谣》
        GENERIC = "甚好，若哪天夜深难寐，便可吹奏一曲解寂寥。",
        LEARNED = "宫中平日只有你我二人，我要这多一个有何用。",
        WRONGSTATE = nil,
    },
}

--玉兔重做tip：buff名字全部挪到这里了
STRINGS.NAMES.BUFF_M_LOCO_UP = "疾行"
STRINGS.NAMES.BUFF_M_BLOODSUCK = "嗜血"
STRINGS.NAMES.BUFF_M_ATK_UP = "强健"
STRINGS.NAMES.BUFF_M_DEF_UP = "坚固"
STRINGS.NAMES.BUFF_M_UNDEAD = "不死"
STRINGS.NAMES.BUFF_M_ATK_ICE = "凝霜"
STRINGS.NAMES.BUFF_M_HUNGER_STAY = "饱腹"
STRINGS.NAMES.BUFF_M_SANITY_STAY = "凝神"
STRINGS.NAMES.BUFF_M_HUNGER_STRONG = "饕餮"
STRINGS.NAMES.BUFF_M_STRENGTH_UP = "移山"
STRINGS.NAMES.BUFF_M_IMMUNE_FIRE = "避火"
STRINGS.NAMES.BUFF_M_IMMUNE_WATER = "避水"
STRINGS.NAMES.BUFF_M_WARM = "避寒"
STRINGS.NAMES.BUFF_M_COOL = "避暑"
STRINGS.NAMES.BUFF_M_DUST = "避尘"
STRINGS.NAMES.BUFF_M_DEATHHEART = "黑心"
STRINGS.NAMES.BUFF_M_ICESHIELD = "霜甲"
STRINGS.NAMES.BUFF_M_IMMUNE_ICE = "抗冻"
STRINGS.NAMES.BUFF_M_INSOMNIA = "难眠"
STRINGS.NAMES.BUFF_M_PROMOTE_HEALTH = "营养"
STRINGS.NAMES.BUFF_M_PROMOTE_HUNGER = "开胃"
STRINGS.NAMES.BUFF_M_PROMOTE_SANITY = "舒适"
STRINGS.NAMES.BUFF_M_STENCH = "芬芳"
STRINGS.NAMES.BUFF_M_THORNS = "荆棘"

---------------------------------------------------------------------

STRINGS.NAMES.MYTH_GHG = "广寒宫" --广寒宫名字
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_GHG = "明月的精魄"
--广寒宫检查

STRINGS.NAMES.MYTH_CHANG_E = "嫦娥" --嫦娥名字
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_CHANG_E = "凌波仙子恰临凡"
--嫦娥检查

STRINGS.NAMES.MYTH_INTERIORS_GHG_LU = "香炉" --广寒宫的炉子
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_INTERIORS_GHG_LU = "香炉"
--广寒宫的炉子检查
STRINGS.NAMES.MYTH_INTERIORS_GHG_LIGHT = "宫灯" --广寒宫的灯
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_INTERIORS_GHG_LIGHT = "宫灯"
--广寒宫的灯检查
STRINGS.NAMES.MYTH_INTERIORS_GHG_FLOWER = "月枝盆景" --广寒宫的月花
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_INTERIORS_GHG_FLOWER = "月枝盆景"
--广寒宫的月花检查
STRINGS.NAMES.MYTH_INTERIORS_GHG_HE_RIGHT = "仙鹤" --广寒宫的仙鹤
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_INTERIORS_GHG_HE_RIGHT = "仙鹤"
--广寒宫的仙鹤检查
STRINGS.NAMES.MYTH_INTERIORS_GHG_HE_LEFT = "仙鹤" --广寒宫的仙鹤
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_INTERIORS_GHG_HE_LEFT = "仙鹤"
--广寒宫的仙鹤检查

STRINGS.NAMES.MYTH_REDLANTERN = "灯笼" --灯笼名字
STRINGS.RECIPE_DESC.MYTH_REDLANTERN = "一盏古朴的中式灯笼"
--灯笼配方描述
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_REDLANTERN = "黑暗中的温柔"
--灯笼检查

STRINGS.NAMES.MYTH_REDLANTERN_GROUND = "灯笼架" --灯笼架子名字
STRINGS.RECIPE_DESC.MYTH_REDLANTERN_GROUND = "放置你的灯笼"
--灯笼架子配方描述
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_REDLANTERN_GROUND = "倒也方便"
--灯笼架子检查

STRINGS.NAMES.MYTH_RUYI = "莹月如意" --如意名字
STRINGS.RECIPE_DESC.MYTH_RUYI = "如意轻击，桃果自落"
--如意配方描述
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_RUYI = "如意如意，成我心意"
--如意检查

STRINGS.NAMES.MYTH_FENCE = "屏风" --屏风名字
STRINGS.RECIPE_DESC.MYTH_FENCE = "中国传统建筑物"
--屏风配方描述
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_FENCE = "屏其风也，屏其风也。"
--屏风检查

STRINGS.NAMES.MYTH_BBN = "莹月百宝囊" --百宝囊名字
STRINGS.RECIPE_DESC.MYTH_BBN = "还需要注入月华"
--百宝囊配方描述
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_BBN = "记得及时补充能量"
--百宝囊检查

STRINGS.NAMES.MYTH_YYLP = "莹月轮盘" --莹月轮盘名字
STRINGS.RECIPE_DESC.MYTH_YYLP = "很有用"
--莹月轮盘配方描述
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_YYLP = "疑似明月坠凡尘"
--莹月轮盘检查

STRINGS.NAMES.MYTH_MOONCAKE_ICE = "冰皮月饼" --冰月饼名字
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_MOONCAKE_ICE = "让人头脑清醒"
--冰月饼检查

STRINGS.NAMES.MYTH_MOONCAKE_NUTS = "五仁月饼" --五仁月饼名字
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_MOONCAKE_NUTS = "让人肚子饱饱"
--五仁月饼检查

STRINGS.NAMES.MYTH_MOONCAKE_LOTUS = "莲蓉月饼" --莲蓉月饼名字
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_MOONCAKE_LOTUS = "让我胃口大开，吃啥都行"
--莲蓉月饼检查

STRINGS.NAMES.MYTH_FLYSKILL_YT = "霜玉云" --霜玉云
STRINGS.RECIPE_DESC.MYTH_FLYSKILL_YT = "寒霜雾起，足踏青云" --霜玉云配方描述

STRINGS.NAMES.MYTH_CHANG_E_FURNITURE = "坐垫" --嫦娥旁边的垫子名字
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_CHANG_E_FURNITURE = "可以去休息一会"
--垫子检查

STRINGS.NAMES.MYTH_CASH_TREE_GROUND = "摇钱树" --摇钱树名字
STRINGS.RECIPE_DESC.MYTH_CASH_TREE_GROUND = "你得到了无尽的财宝"
--百宝囊配方描述
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_CASH_TREE_GROUND = "东方神话的摇钱树"
--摇钱树检查
STRINGS.NAMES.MYTH_CASH_TREE_GROUND_RECIPE = STRINGS.NAMES.MYTH_CASH_TREE_GROUND

STRINGS.NAMES.MYTH_CASH_TREE = "摇钱树苗" --摇钱树树苗名字
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_CASH_TREE = "还没有长大"
--摇钱树树苗检查

STRINGS.NAMES.MYTH_TREASURE_BOWL = "聚宝盆" --聚宝盆名字
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_TREASURE_BOWL = "这可比点金术厉害多了"
--聚宝盆检查

STRINGS.NAMES.MYTH_SMALL_GOLDFROG = "小金蟾" --小金蟾名字
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_SMALL_GOLDFROG = "大蟾蜍的侍从"
--小金蟾检查

STRINGS.NAMES.MYTH_GOLDFROG_BASE = "元宝雕像" --元宝雕像名字 挖boss 用的
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_GOLDFROG_BASE = "最好小心一点"
--元宝雕像检查

STRINGS.NAMES.MYTH_GOLDFROG = "聚宝金蟾" --大蛤蟆名字
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_GOLDFROG = "它身上有好多宝贝"
--大蛤蟆检查

STRINGS.NAMES.MYTH_COIN = "铜钱" --铜钱名字
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_COIN = "天圆地方，招财进宝"
--铜钱检查

STRINGS.NAMES.MYTH_FENCE_ITEM = STRINGS.NAMES.MYTH_FENCE
STRINGS.RECIPE_DESC.MYTH_FENCE_ITEM = STRINGS.RECIPE_DESC.MYTH_FENCE
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_FENCE_ITEM = STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_FENCE

STRINGS.NAMES.MYTH_FENCE_ITEM_BLUEPRINT = STRINGS.NAMES.MYTH_FENCE .. STRINGS.NAMES.BLUEPRINT
STRINGS.RECIPE_DESC.MYTH_FENCE_ITEM_BLUEPRINT = STRINGS.RECIPE_DESC.MYTH_FENCE

STRINGS.NAMES.MYTH_REDLANTERN_GROUND_BLUEPRINT = STRINGS.NAMES.MYTH_REDLANTERN_GROUND .. STRINGS.NAMES.BLUEPRINT
STRINGS.RECIPE_DESC.MYTH_REDLANTERN_GROUND_BLUEPRINT = STRINGS.RECIPE_DESC.MYTH_REDLANTERN_GROUND

STRINGS.NAMES.MYTH_REDLANTERN_BLUEPRINT = STRINGS.NAMES.MYTH_REDLANTERN .. STRINGS.NAMES.BLUEPRINT
STRINGS.RECIPE_DESC.MYTH_REDLANTERN_BLUEPRINT = STRINGS.RECIPE_DESC.MYTH_REDLANTERN

STRINGS.RECIPE_DESC.MYTH_INTERIORS_GHG_LIGHT = STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_INTERIORS_GHG_LIGHT
STRINGS.NAMES.MYTH_INTERIORS_GHG_LIGHT_BLUEPRINT = STRINGS.NAMES.MYTH_INTERIORS_GHG_LIGHT .. STRINGS.NAMES.BLUEPRINT
STRINGS.RECIPE_DESC.MYTH_INTERIORS_GHG_LIGHT_BLUEPRINT = STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_INTERIORS_GHG_LIGHT

STRINGS.NAMES.MYTH_INTERIORS_GHG_GROUNDLIGHT = STRINGS.NAMES.MYTH_INTERIORS_GHG_LIGHT
STRINGS.RECIPE_DESC.MYTH_INTERIORS_GHG_GROUNDLIGHT = STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_INTERIORS_GHG_LIGHT
STRINGS.NAMES.MYTH_INTERIORS_GHG_GROUNDLIGHT_BLUEPRINT = STRINGS.NAMES.MYTH_INTERIORS_GHG_LIGHT .. STRINGS.NAMES.BLUEPRINT
STRINGS.RECIPE_DESCMYTH_INTERIORS_GHG_GROUNDLIGHT_BLUEPRINT = STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_INTERIORS_GHG_LIGHT

STRINGS.RECIPE_DESC.MYTH_INTERIORS_GHG_FLOWER = STRINGS.NAMES.MYTH_INTERIORS_GHG_FLOWER
STRINGS.NAMES.MYTH_INTERIORS_GHG_FLOWER_BLUEPRINT = STRINGS.NAMES.MYTH_INTERIORS_GHG_FLOWER .. STRINGS.NAMES.BLUEPRINT
STRINGS.RECIPE_DESC.MYTH_INTERIORS_GHG_FLOWER_BLUEPRINT = STRINGS.NAMES.MYTH_INTERIORS_GHG_FLOWER

STRINGS.RECIPE_DESC.MYTH_INTERIORS_GHG_HE_LEFT = STRINGS.NAMES.MYTH_INTERIORS_GHG_HE_LEFT
STRINGS.NAMES.MYTH_INTERIORS_GHG_HE_LEFT_BLUEPRINT = STRINGS.NAMES.MYTH_INTERIORS_GHG_HE_LEFT .. STRINGS.NAMES.BLUEPRINT
STRINGS.RECIPE_DESC.MYTH_INTERIORS_GHG_HE_LEFT_BLUEPRINT = STRINGS.NAMES.MYTH_INTERIORS_GHG_HE_LEFT

STRINGS.RECIPE_DESC.MYTH_INTERIORS_GHG_HE_RIGHT = STRINGS.NAMES.MYTH_INTERIORS_GHG_HE_RIGHT
STRINGS.NAMES.MYTH_INTERIORS_GHG_HE_RIGHT_BLUEPRINT = STRINGS.NAMES.MYTH_INTERIORS_GHG_HE_RIGHT .. STRINGS.NAMES.BLUEPRINT
STRINGS.RECIPE_DESC.MYTH_INTERIORS_GHG_HE_RIGHT_BLUEPRINT = STRINGS.NAMES.MYTH_INTERIORS_GHG_HE_RIGHT

STRINGS.RECIPE_DESC.MYTH_INTERIORS_GHG_LU = STRINGS.NAMES.MYTH_INTERIORS_GHG_LU
STRINGS.NAMES.MYTH_INTERIORS_GHG_LU_BLUEPRINT = STRINGS.NAMES.MYTH_INTERIORS_GHG_LU .. STRINGS.NAMES.BLUEPRINT
STRINGS.RECIPE_DESC.MYTH_INTERIORS_GHG_LU_BLUEPRINT =STRINGS.NAMES.MYTH_INTERIORS_GHG_LU


STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_DOOR_EXIT_2 = "我应该注意离去的时辰"

STRINGS.MYTH_SKIN_ALCHMY_FUR_COPPER = "铜牛丹炉"
STRINGS.MYTH_SKIN_ALCHMY_FUR_RUINS = "暗影转化炉"

STRINGS.MYTH_SKIN_REDLANTERN_MYTH_B = "莲花盏"
STRINGS.MYTH_SKIN_REDLANTERN_MYTH_C = "春花彩"
STRINGS.MYTH_SKIN_REDLANTERN_MYTH_D = "走马灯"
STRINGS.MYTH_SKIN_REDLANTERN_MYTH_E = "满月盈"

STRINGS.NAMES.FARM_PLANT_GOURD = "葫芦藤"
STRINGS.NAMES.GOURD_OVERSIZED = "巨型葫芦"
STRINGS.NAMES.GOURD_OVERSIZED_ROTTEN = "巨型腐烂葫芦"
STRINGS.UI.PLANTREGISTRY.DESCRIPTIONS.GOURD = "请精心照顾！"
STRINGS.NAMES.KNOWN_GOURD_SEEDS = "葫芦种子"

STRINGS.NAMES.MYTH_YJP = "羊脂玉净瓶"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_YJP = "充斥着生命气息的瓷瓶"

STRINGS.NAMES.MYTH_GRANARY = "谷仓"
STRINGS.RECIPE_DESC.MYTH_GRANARY = "用于存放大量粮食的专有建筑"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_GRANARY = "春耕夏耘，秋储冬藏"

STRINGS.NAMES.MYTH_TUDI_SHRINES = "土地庙"
STRINGS.RECIPE_DESC.MYTH_TUDI_SHRINES = "人所居处，皆有供奉"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_TUDI_SHRINES = "黄酒白酒不论，公鸡母鸡要肥"

STRINGS.NAMES.MYTH_WELL = "水井"
STRINGS.RECIPE_DESC.MYTH_WELL = "清甜甘洌，冬暖夏凉"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_WELL = "好清甜的井水"

STRINGS.NAMES.MOVEMOUNTAIN_PILL = "移山丹"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MOVEMOUNTAIN_PILL = "吃下它沃尔夫冈也不是我的对手"

STRINGS.NAMES.MYTH_TUDI = "土地公公"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_TUDI = "你也是一位神仙吗"

STRINGS.MYTH_TUDI_TRADE = "来而不往，非礼也"
STRINGS.MYTH_TUDI_ALREADYTRADE = "老儿虽纳禄，却也非贪财"

STRINGS.MYTH_TUDI_TIRED = {"锄禾日当午，汗滴禾下土", "哎呦我的老腰啊", "风调雨顺融融，水明山秀葱葱"}

STRINGS.MYTH_TUDI_ROTTEN_SPEAK = {"四海无闲田，农夫犹饿死", "粒米虽小犹不易，莫把辛苦当儿戏"}
STRINGS.MYTH_TUDI_RUNAWAY = "小神法力低微，先行一步。"

STRINGS.MYTH_TUDI_PLAYER_SPEAK = {
    common = {"多谢施主来此供奉", "愿善士风调雨顺，得享安乐"},
    monkey_king = {"不知大圣至此，未曾远迎，万望恕罪", "大圣可有什么吩咐？"},
    neza = {"但听三太子吩咐", "三太子可有要事要告知小老儿"},
    white_bone = {"有大妖接近"},
    pigsy = {"天蓬元帅，我这庙小供奉少，您还是手下留情吧", "元帅要是打秋风，还是换家吧"},
    myth_yutu = {"你这小兔子，又偷跑出来玩", "等会嫦娥仙子便来拿你回去"},
    yangjian = {"真君可有法旨调度", "真君莅临，蓬荜生辉？"}
}

STRINGS.NAMES.MYTH_TOY_FEATHERBUNDLE = "毽子"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_TOY_FEATHERBUNDLE = "攒花脚尖弄，翻云飞鸿来"

STRINGS.NAMES.MYTH_TOY_TIGERDOLL = "布老虎"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_TOY_TIGERDOLL = "虎头虎脑，甚是可爱"

STRINGS.NAMES.MYTH_TOY_TUMBLER = "土地不倒翁"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_TOY_TUMBLER = "制作精良，神似土地公公的不倒翁"

STRINGS.NAMES.MYTH_TOY_TWIRLDRUM = "拨浪鼓"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_TOY_TWIRLDRUM = "咕咚咕咚咕咚"

STRINGS.NAMES.MYTH_TOY_CHINESEKNOT = "中国结"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_TOY_CHINESEKNOT = "福气相结，岁岁年年"

STRINGS.NAMES.MYTH_FOOD_TABLE = "红木餐桌"
STRINGS.RECIPE_DESC.MYTH_FOOD_TABLE = "红彤彤的餐桌，是喜庆的年味"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_FOOD_TABLE = "团团圆圆，岁岁年年"

STRINGS.NAMES.MYTH_FOOD_SJ = "水饺"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_FOOD_SJ = "略同汤饼赛新年，各色中含齿藏鲜。"

STRINGS.NAMES.MYTH_FOOD_BZ = "大肉包子"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_FOOD_BZ = "美好的清晨，从一份大肉包开始"

STRINGS.NAMES.MYTH_FOOD_XJDMG = "小鸡炖蘑菇"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_FOOD_XJDMG = "天王盖地虎，小鸡炖蘑菇"

STRINGS.NAMES.MYTH_FOOD_HSY = "麻辣红烧鱼"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_FOOD_HSY = "暖心暖胃"

STRINGS.NAMES.MYTH_FOOD_BBF = "八宝饭"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_FOOD_BBF = "甜而不腻，多有裨益"

STRINGS.NAMES.MYTH_FOOD_CJ = "折月春卷儿"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_FOOD_CJ = "折一束月光，寄送你的心房"

STRINGS.NAMES.MYTH_FOOD_HLBZ = "胡萝卜汁"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_FOOD_HLBZ = "明目养颜，佳人专属"

STRINGS.NAMES.MYTH_FOOD_LWHZ = "腊味合蒸"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_FOOD_LWHZ = "瘦而不柴，香而不腻。腊香满口，熏香扑鼻。"

STRINGS.NAMES.MYTH_FOOD_TSJ = "屠苏酒"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_FOOD_TSJ = "春风送暖入屠苏"

STRINGS.NAMES.MYTH_FOOD_TR = "糖人"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_FOOD_TR = "他是神话里的大英雄"

STRINGS.TUDI_SHRINES_NEEDGOODFOOD = "祭祀土地，诸食需烹。"
STRINGS.TUDI_SHRINES_NEEDOTHERFOOD = "凡所种种，皆需不同。"
STRINGS.TUDI_SHRINES_REFUSEFOOD = "感君挂怀，愧不敢当"

STRINGS.NAMES.BOOKINFO_MYTH = "天书"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.BOOKINFO_MYTH = "这是一本记录诸多秘闻的宝典"

STRINGS.NAMES.MYTH_HONEYPOT = "蜜罐"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_HONEYPOT = "用蜂蜜填满它会有惊喜"

STRINGS.NAMES.LAOZI_BELL = "兜率牛铃"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.LAOZI_BELL = "太上老君为青牛铸造的铃铛"

STRINGS.NAMES.LAOZI_BELL_BROKEN = "破碎的牛铃"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.LAOZI_BELL_BROKEN = "残破不堪，或许炼丹炉可以修补"

STRINGS.NAMES.SADDLE_QINGNIU = "兜率牛鞍"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.SADDLE_QINGNIU = "太上老君为青牛铸造的铃铛"

STRINGS.NAMES.LAOZI_QINGNIU = "板角青牛"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.LAOZI_QINGNIU = "上古瑞兽'兕'，盛世而现"

STRINGS.ACTIONS.CASTAOE.MYTH_QXJ = "一尺寒光"
STRINGS.ACTIONS.CASTAOE.MYTH_WEAPON_SYF = "寒冰横扫"
STRINGS.ACTIONS.CASTAOE.MYTH_WEAPON_GTT = "蓄力重锤"
STRINGS.ACTIONS.CASTAOE.MYTH_WEAPON_SYD = "炙热重斩"

STRINGS.MYTH_SKIN_GROUNDLIGHT_STD = "石塔蹬"
STRINGS.MYTH_SKIN_GROUNDLIGHT_RYX = "如意霄"
STRINGS.MYTH_SKIN_GROUNDLIGHT_QZH = "青竹辉"
STRINGS.MYTH_SKIN_GROUNDLIGHT_LLT = "玲珑塔"
STRINGS.MYTH_SKIN_GROUNDLIGHT_BGZ = "白骨枝"
STRINGS.MYTH_SKIN_GROUNDLIGHT_BLZ = "宝莲盏"
STRINGS.MYTH_SKIN_GROUNDLIGHT_GXY = "桂香盈"
STRINGS.MYTH_SKIN_GROUNDLIGHT_YHY = "幽魂引"

STRINGS.NAMES.MYTH_SIVING_BOSS = "子圭玄鸟"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_SIVING_BOSS = "北海有山，其名幽都。黑水出焉，上有玄鸟"

STRINGS.NAMES.SIVING_ROCKS = "子圭石"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.SIVING_ROCKS = "生命的力量在其中游动"

STRINGS.NAMES.SIVING_STONE = "子圭青金"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.SIVING_STONE = "佛不问名，道不问寿，悠悠此金，长生不朽"

STRINGS.NAMES.ARMORSIVING = "子圭战甲"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.ARMORSIVING = "敌若云兮士争先。"

STRINGS.NAMES.SIVING_HAT = "子圭战盔"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.ARMORSIVING = "身既死兮神以灵！"

STRINGS.NAMES.MYTH_PLANT_LOTUS = "莲花株"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_PLANT_LOTUS = "小荷才露尖尖角，早有蜻蜓立上头。" --待修改

STRINGS.NAMES.MYTH_LOTUS_FLOWER = "莲花"
STRINGS.RECIPE_DESC.MYTH_LOTUS_FLOWER = "割肉还母，剔骨还父"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_LOTUS_FLOWER = "香远益清，亭亭净植"

STRINGS.NAMES.LOTUS_ROOT = "莲藕"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.LOTUS_ROOT = "清脆爽口"

STRINGS.NAMES.LOTUS_ROOT_COOKED = "烤藕片"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.LOTUS_ROOT_COOKED = "脆糯适中，不似生食那般爽口"

STRINGS.NAMES.LOTUS_SEEDS = "莲子"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.LOTUS_SEEDS = "味甘而性平，甚益脾胃"

STRINGS.NAMES.LOTUS_SEEDS_COOKED = "烤莲子"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.LOTUS_SEEDS_COOKED = "软糯香甜的莲子，温暖你的心"

STRINGS.NAMES.MYTH_LOTUSLEAF = "莲叶"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_LOTUSLEAF = "一夜风雨过，我自不染尘"

STRINGS.NAMES.MYTH_LOTUSLEAF_HAT = "莲叶帽"
STRINGS.RECIPE_DESC.MYTH_LOTUSLEAF_HAT = "时复风吹荷叶香"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_LOTUSLEAF_HAT = "路边行人莫笑，诸般孩童为宝"--????

STRINGS.NAMES.MYTH_FOOD_LZG = "冰糖莲子羹"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_FOOD_LZG = "补益脾胃，舒缓身心"

STRINGS.NAMES.MYTH_FOOD_ZYOH = "折月藕盒"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_FOOD_ZYOH = "沁香如脾，花满月溢"

STRINGS.NAMES.MYTH_FOOD_PGT = "莲藕排骨汤"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_FOOD_PGT = "让我看看配料是两份大排骨和一份..哪吒？"

STRINGS.NAMES.MYTH_FOOD_HBJ = "荷包鸡"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_FOOD_HBJ = "香味浓烈逼人，甚美"

STRINGS.NAMES.MYTH_WEAPON_SYF = "霜钺斧"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_WEAPON_SYF = "坎水之精所铸，严寒异常，小心噬主"

STRINGS.NAMES.MYTH_WEAPON_SYD = "暑熤刀"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_WEAPON_SYD = "离火之精所铸，烈火会焚尽所有接近之物"

STRINGS.NAMES.MYTH_WEAPON_GTT = "扢挞藤"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_WEAPON_GTT = "巽风之精所铸，可调动沙石之力"

STRINGS.NAMES.MYTH_QXJ = "七星剑"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_QXJ = "文犀六属铠，宝剑七星光。"

STRINGS.NAMES.MYTH_RHINO_BLUEHEART = "辟寒心脏"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_RHINO_BLUEHEART = "澎湃着坎水灵力的心脏"

STRINGS.NAMES.MYTH_RHINO_REDHEART = "辟暑心脏"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_RHINO_REDHEART = "澎湃着离火灵力的心脏"

STRINGS.NAMES.MYTH_RHINO_YELLOWHEART = "辟尘心脏"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_RHINO_YELLOWHEART = "澎湃着巽风灵力的心脏"

STRINGS.NAMES.TURF_MYTH_ZHU = "草地地皮"
STRINGS.RECIPE_DESC.TURF_MYTH_ZHU = "草地地皮"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.TURF_MYTH_ZHU = "草地的地皮。"

STRINGS.NAMES.TURF_QUAGMIRE_PARKFIELD = "桃园地皮"
STRINGS.RECIPE_DESC.TURF_QUAGMIRE_PARKFIELD = "烂漫桃花尽入泥"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.TURF_QUAGMIRE_PARKFIELD = "芳草鲜美，落英缤纷"

STRINGS.NAMES.MYTH_PLANT_BAMBOO = "竹子"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_PLANT_BAMBOO = "四青青碧竹，盎然新发"

STRINGS.NAMES.MYTH_BAMBOO = "竹子"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_BAMBOO = "四季青翠，傲雪凌霜"

STRINGS.NAMES.MYTH_GREENBAMBOO = "苍竹"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_GREENBAMBOO = "不历风雨，难成苍竹"

STRINGS.NAMES.MYTH_BAMBOO_SHOOTS = "竹笋"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_BAMBOO_SHOOTS = "居不可无竹，食不可无笋"

STRINGS.NAMES.MYTH_BAMBOO_SHOOTS_COOKED = "烤笋"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_BAMBOO_SHOOTS_COOKED = "笋难长存，烤烙久驻之"

STRINGS.NAMES.MYTH_FOOD_ZTF = "竹筒饭"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_FOOD_ZTF = "垂涎三尺，异香扑鼻"

STRINGS.NAMES.MYTH_FOOD_ZSCR = "竹笋炒肉"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_FOOD_ZSCR = "我请你吃竹笋炒肉？"

STRINGS.NAMES.MYTH_FUCHEN = "拂尘"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_FUCHEN = "时时拂拭，莫使惹尘"

STRINGS.LZOZI_QINGNIU_EATPILL = {
    SX = "这连老君的炉灰都不如",
    TY = "腾云起雾",
    ZG = "不动如山",
    NS = "屏气凝神",
}

STRINGS.MYTH_LAOZIPACK = "封印"

STRINGS.NAMES.KRAMPUSSACK_SEALED = "封印的坎普斯背包"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.KRAMPUSSACK_SEALED = "炼制紫金葫芦的材料！"

STRINGS.NAMES.MYTH_STATUE_PANDAMAN = "神秘英雄的雕像"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_STATUE_PANDAMAN = "神秘英雄的雕像"

STRINGS.NAMES.MYTH_STORE = "打烊的小店"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_STORE = "打烊的小店"

STRINGS.NAMES.MYTH_STORE_CONSTRUCTION = "建造中的小店"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_STORE_CONSTRUCTION = "建造中的小店"


STRINGS.NAMES.MYTH_PASSCARD_JIE = "通天敕令"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_PASSCARD_JIE = "‘有教无类’，三清之一通天教主的令牌。"

STRINGS.USE_MIRROR = "更衣"

STRINGS.NAMES.MYTH_PLANT_BAMBOO_0 = "种下的竹笋"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_PLANT_BAMBOO_0 = "长吧，长吧。"
STRINGS.NAMES.MYTH_PLANT_BAMBOO_1 = "青竹芽"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_PLANT_BAMBOO_1 = "长吧，长吧。"
STRINGS.NAMES.MYTH_PLANT_BAMBOO_2 = "青竹苗"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_PLANT_BAMBOO_2 = "长吧，长吧。"
STRINGS.NAMES.MYTH_PLANT_BAMBOO_3 = "青竹"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_PLANT_BAMBOO_3 = "四青青碧竹，盎然新发。"
STRINGS.NAMES.MYTH_PLANT_BAMBOO_4 = "青竹"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_PLANT_BAMBOO_4 = "四青青碧竹，盎然新发。"
STRINGS.NAMES.MYTH_PLANT_BAMBOO_5 = "苍竹"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_PLANT_BAMBOO_5 = "枯槎尚倚春风力，苍竹从来自岁寒。"
STRINGS.NAMES.MYTH_PLANT_BAMBOO_STUMP = "竹桩"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_PLANT_BAMBOO_STUMP = "粉骨碎身全不怕。"
STRINGS.NAMES.MYTH_PLANT_BAMBOO_BURNT = "烧焦的竹"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_PLANT_BAMBOO_BURNT = "要留清白在人间。"

STRINGS.NAMES.MYTH_HUANHUNDAN = "还魂丹"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_HUANHUNDAN = "还魂丹，起死人而肉白骨"

--特殊新加
STRINGS.NAMES.MYTH_TOY_BOOKINFO = "神话玩具" --玩具的名字
STRINGS.NAMES.MYTH_PIGSYSKILL_BOOKINFO = "刚鬣本相" --八戒的技能

STRINGS.NAMES.MYTH_FLYSKILL_YA = "幽冥身"
STRINGS.RECIPE_DESC.MYTH_FLYSKILL_YA = "红尘滚滚，入世拘魂"

STRINGS.USE_MYTH_SKELETON = "掩埋"

STRINGS.NAMES.MYTH_MOONCAKE_BOX = "月饼盒"
STRINGS.RECIPE_DESC.MYTH_MOONCAKE_BOX = "月儿弯弯，满载欣欢"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_MOONCAKE_BOX = "精致美妙的月饼盒子"

STRINGS.NAMES.MYTH_COIN_BOX = "铜钱串"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MYTH_COIN_BOX = "一大串铜钱"

STRINGS.USE_MYTH_COIN = "串一串"
STRINGS.USE_MYTH_ASTRAL = "回魂"
STRINGS.USE_MYTH_PLAYER = "缠身"

--BUFF
STRINGS.NAMES.BUFF_M_LOCO_UP = "疾行"
STRINGS.NAMES.BUFF_M_BLOODSUCK = "嗜血"
STRINGS.NAMES.BUFF_M_ATK_UP = "强健" --增加攻击力
STRINGS.NAMES.BUFF_M_DEF_UP = "坚固" --增加防御力
STRINGS.NAMES.BUFF_M_UNDEAD = "不死"
STRINGS.NAMES.BUFF_M_ATK_ICE = "凝霜" --攻击带冰
STRINGS.NAMES.BUFF_M_ATK_ELEC = "驭电" --攻击带电
STRINGS.NAMES.BUFF_M_CHARGED = "感电" --杨戬的
STRINGS.NAMES.BUFF_M_HUNGER_STAY = "饱腹"
STRINGS.NAMES.BUFF_M_SANITY_STAY = "凝神"
STRINGS.NAMES.BUFF_M_HUNGER_STRONG = "饕餮"
STRINGS.NAMES.BUFF_M_STRENGTH_UP = "移山"
STRINGS.NAMES.BUFF_M_IMMUNE_FIRE = "避火"
STRINGS.NAMES.BUFF_M_IMMUNE_WATER = "避水"
STRINGS.NAMES.BUFF_M_WARM = "避寒"
STRINGS.NAMES.BUFF_M_COOL = "避暑"
STRINGS.NAMES.BUFF_M_DUST = "避尘"
STRINGS.NAMES.BUFF_M_DEATHHEART = "黑心" --白骨夫人的
STRINGS.NAMES.BUFF_M_ICESHIELD = "霜甲" --被攻击冻结敌人（单体）
STRINGS.NAMES.BUFF_M_IMMUNE_ICE = "抗冻" --免疫冰冻
STRINGS.NAMES.BUFF_M_INSOMNIA = "难眠" --免疫催眠
STRINGS.NAMES.BUFF_M_THORNS = "荆棘"
STRINGS.NAMES.BUFF_M_WORKUP = "高效" --工作效率提高
STRINGS.NAMES.BUFF_M_HEALTH_REGEN = "治疗"
STRINGS.NAMES.BUFF_M_SANITY_REGEN = "回神"
STRINGS.NAMES.BUFF_M_HUNGER_REGEN = "果腹"
STRINGS.NAMES.BUFF_M_GLOW = "闪耀"
--以下都是熊猫人铺子的
STRINGS.NAMES.BUFF_M_PROMOTE_HEALTH = "营养"
STRINGS.NAMES.BUFF_M_PROMOTE_HUNGER = "开胃"
STRINGS.NAMES.BUFF_M_PROMOTE_SANITY = "美味"
STRINGS.NAMES.BUFF_M_STENCH = "芬芳"

