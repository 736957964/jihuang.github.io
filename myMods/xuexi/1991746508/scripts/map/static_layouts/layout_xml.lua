return {
  version = "1.1",
  luaversion = "5.1",
  orientation = "orthogonal",
  width = 32, --最大边界值
  height = 32, --最大边界值，一定要设置成正方形！
  tilewidth = 64,  --像素点，推荐64
  tileheight = 64, --像素点，推荐64
  properties = {},
  tilesets = {
    {
      name = "tiles",
      firstgid = 1,
      tilewidth = 64,   --像素点，推荐64
      tileheight = 64,  --像素点，推荐64
      spacing = 0,
      margin = 0,
      image = "../../../../tools/tiled/dont_starve/tiles.png",
      imagewidth = 512,   --不要动
      imageheight = 384,  --不要动
      properties = {},
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "BG_TILES",
      x = 0,
      y = 0,
      width = 32,  --最大边界值
      height = 32, --最大边界值
      visible = true,
      opacity = 1,
      properties = {},
      encoding = "lua",
		data = {
			0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 
			0,1,1,1,1,1,1,1,1,1,4,4,4,4,4,4,4,4,1,1,1,1,1,1,1,1,1,1,1,1,1,0, 
			0,1,1,1,4,4,1,1,1,4,4,3,3,3,3,3,4,4,4,4,1,1,1,1,1,1,1,1,1,1,1,0, 
			0,1,1,4,4,1,1,1,4,4,3,3,2,3,2,3,3,4,4,4,4,4,1,1,1,1,1,1,1,1,1,0, 
			0,1,1,1,1,1,1,4,4,3,3,2,2,3,2,2,3,3,4,4,4,4,4,4,1,1,1,1,1,1,1,0, 
			0,1,1,1,1,1,1,4,4,3,2,2,3,3,3,2,2,3,4,4,4,4,4,4,1,1,1,1,1,1,1,0, 
			0,1,1,1,1,1,1,4,4,3,3,3,3,2,3,3,3,3,4,3,4,4,4,4,4,4,1,1,1,1,1,0, 
			0,1,1,1,1,1,1,4,4,3,2,2,3,3,3,2,2,3,4,4,4,4,4,4,4,4,1,1,1,1,1,0, 
			0,1,1,1,1,1,1,4,4,3,3,2,2,3,2,2,3,3,4,4,4,4,4,4,4,4,1,1,1,1,1,0, 
			0,1,1,1,1,1,1,4,4,4,3,3,2,3,2,3,3,4,4,4,4,4,4,4,4,4,4,1,1,1,1,0, 
			0,1,1,1,1,1,1,1,4,4,4,3,3,3,3,3,4,4,4,4,4,4,3,3,4,4,4,1,1,1,1,0, 
			0,1,1,1,1,1,1,1,4,4,4,4,4,4,4,4,4,4,4,3,3,4,4,4,4,4,4,1,1,1,1,0, 
			0,1,1,1,1,1,1,1,1,1,1,4,4,4,4,4,4,4,4,4,3,3,4,4,4,4,4,4,1,1,1,0, 
			0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,4,4,4,4,4,4,4,4,4,1,1,1,0, 
			0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,4,4,4,4,3,4,4,4,1,1,1,0, 
			0,1,1,1,1,1,1,1,1,1,4,4,4,4,4,4,4,1,1,1,4,4,4,4,4,4,4,4,1,1,1,0, 
			0,1,1,1,1,1,1,1,4,4,4,3,3,3,3,3,4,4,1,1,1,4,4,3,4,4,4,4,1,1,1,0, 
			0,1,1,1,1,1,1,1,4,4,3,3,2,2,2,3,3,4,4,1,1,1,4,3,3,4,3,4,1,1,1,0, 
			0,1,1,1,1,1,1,4,4,3,3,2,2,3,2,2,3,3,4,4,1,1,4,4,3,4,4,4,1,1,1,0, 
			0,1,1,1,1,1,1,4,4,3,2,2,3,3,3,2,2,3,4,4,1,1,4,4,3,4,4,4,1,1,1,0, 
			0,1,1,1,1,1,1,4,4,3,2,3,3,2,3,3,2,3,4,4,1,1,4,4,4,4,4,4,1,1,1,0, 
			0,1,1,1,1,1,1,4,4,3,2,2,3,3,3,2,2,3,4,4,1,1,4,4,4,4,4,1,1,1,1,0, 
			0,1,1,1,1,1,1,4,4,3,3,2,2,3,2,2,3,3,4,4,1,1,4,4,3,4,4,1,1,1,1,0, 
			0,1,1,1,1,1,1,1,4,4,3,3,2,2,2,3,3,4,4,1,1,1,4,3,3,4,1,1,1,1,1,0, 
			0,1,1,1,1,1,1,1,4,4,4,3,3,3,3,3,4,4,4,1,1,4,4,3,4,4,1,1,1,1,1,0, 
			0,1,1,1,1,1,1,1,1,4,4,4,4,4,4,4,4,4,1,1,1,4,4,4,4,1,1,1,1,1,1,0, 
			0,1,1,1,1,1,1,1,1,1,4,4,4,4,4,4,1,1,1,1,4,4,4,4,1,1,1,1,1,1,1,0, 
			0,1,1,1,1,1,4,1,1,1,1,1,1,1,1,1,1,1,1,4,4,4,4,1,1,1,1,1,1,1,1,0, 
			0,1,1,1,1,1,4,4,4,1,1,1,1,1,1,1,1,4,4,4,4,4,1,1,1,1,1,1,1,1,1,0, 
			0,1,1,1,1,1,1,1,4,4,4,1,1,4,4,4,4,4,4,1,1,1,1,1,1,1,1,1,1,1,1,0, 
			0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0, 
			0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 
		}

		-- 17 13 
	},
	{
		type = "objectgroup",
		name = "FG_OBJECTS",
		visible = true,
		opacity = 1,
		properties = {},
		objects = {

			{
				name = "",
				type = "myth_pond_spawner",			
				shape = "rectangle",
				x = 23*64,			
				y = 8*64,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "myth_pond_spawner",			
				shape = "rectangle",
				x = 20*64,			
				y = 13*64,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bullkelp_plant",			
				shape = "rectangle",
				x = 15.22,			
				y = 1261.41,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bullkelp_plant",			
				shape = "rectangle",
				x = 14.10,			
				y = 1360.78,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bullkelp_plant",			
				shape = "rectangle",
				x = 42.43,			
				y = 1243.34,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flyerfx_yutu_fx",			
				shape = "rectangle",
				x = 44.88,			
				y = 26.41,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 193.65,			
				y = 219.49,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 221.36,			
			-- 	y = 220.94,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 235.17,			
				y = 206.37,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 242.05,			
			-- 	y = 181.34,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "fireflies",			
				shape = "rectangle",
				x = 249.35,			
				y = 197.07,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "berrybush2",			
				shape = "rectangle",
				x = 251.82,			
				y = 214.42,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 256.19,			
				y = 141.95,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 261.86,			
			-- 	y = 231.90,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 263.79,			
				y = 263.98,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "butterfly",			
				shape = "rectangle",
				x = 263.79,			
				y = 263.98,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bullkelp_plant",			
				shape = "rectangle",
				x = 285.14,			
				y = 657.41,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "driftwood_log",			
				shape = "rectangle",
				x = 277.76,			
				y = 1895.04,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 287.30,			
				y = 227.01,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "butterfly",			
				shape = "rectangle",
				x = 287.85,			
				y = 31.12,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 295.79,			
			-- 	y = 145.95,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 315.50,			
			-- 	y = 149.28,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 318.94,			
				y = 199.36,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "fireflies",			
				shape = "rectangle",
				x = 318.42,			
				y = 176.01,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 323.78,			
				y = 153.84,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 340.14,			
				y = 183.28,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "berrybush2",			
				shape = "rectangle",
				x = 340.51,			
				y = 174.90,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 347.10,			
				y = 151.22,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 378.35,			
				y = 140.78,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 407.65,			
			-- 	y = 1766.94,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 424.54,			
				y = 1728.16,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 425.01,			
			-- 	y = 1833.71,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "wobster_den",			
				shape = "rectangle",
				x = 434.56,			
				y = 1650.08,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 445.31,			
				y = 1341.39,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 448.59,			
			-- 	y = 1405.90,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 449.87,			
				y = 1429.86,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 455.31,			
			-- 	y = 1223.18,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 455.54,			
				y = 1251.07,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 458.05,			
			-- 	y = 1193.12,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 453.79,			
				y = 563.10,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 457.97,			
			-- 	y = 1435.33,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 464.27,			
				y = 1160.56,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 450.35,			
			-- 	y = 372.56,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 444.24,			
				y = 1801.26,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "blue_mushroom",			
			-- 	shape = "rectangle",
			-- 	x = 449.23,			
			-- 	y = 1764.48,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 450.59,			
				y = 276.32,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "blue_mushroom",			
				shape = "rectangle",
				x = 464.30,			
				y = 581.28,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 468.58,			
				y = 1378.85,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 468.59,			
			-- 	y = 1460.11,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 472.62,			
				y = 1321.87,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 471.47,			
				y = 606.32,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 479.89,			
			-- 	y = 1290.98,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 463.42,			
				y = 1770.72,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 470.72,			
			-- 	y = 400.93,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 471.30,			
			-- 	y = 325.58,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 482.70,			
				y = 1438.38,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 491.90,			
				y = 1244.54,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 490.24,			
			-- 	y = 1385.12,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 479.68,			
				y = 307.60,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 491.28,			
				y = 564.50,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 486.02,			
			-- 	y = 387.74,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 498.43,			
				y = 1275.23,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "berrybush2",			
				shape = "rectangle",
				x = 479.58,			
				y = 1793.86,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "blue_mushroom",			
				shape = "rectangle",
				x = 479.82,			
				y = 255.20,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 492.13,			
				y = 508.78,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 495.46,			
			-- 	y = 1490.98,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 505.66,			
			-- 	y = 1140.56,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "fireflies",			
				shape = "rectangle",
				x = 485.42,			
				y = 1822.06,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 483.73,			
				y = 1855.15,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "fireflies",			
				shape = "rectangle",
				x = 502.08,			
				y = 592.20,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 491.12,			
				y = 320.62,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 508.61,			
			-- 	y = 1121.82,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "red_mushroom",			
				shape = "rectangle",
				x = 504.11,			
				y = 1426.40,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 505.86,			
				y = 606.64,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "berrybush2",			
				shape = "rectangle",
				x = 497.82,			
				y = 356.06,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 510.98,			
			-- 	y = 1336.24,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 510.46,			
			-- 	y = 1518.11,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "grass",			
				shape = "rectangle",
				x = 512.00,			
				y = 563.90,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 517.81,			
				y = 1293.36,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 522.64,			
			-- 	y = 1049.15,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 509.36,			
			-- 	y = 411.68,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 522.64,			
				y = 1099.58,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "blue_mushroom",			
				shape = "rectangle",
				x = 498.35,			
				y = 1867.84,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 505.84,			
				y = 262.67,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 524.35,			
			-- 	y = 1470.45,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 522.85,			
				y = 423.47,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 520.43,			
				y = 351.54,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 527.41,			
			-- 	y = 1541.39,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 537.39,			
			-- 	y = 733.30,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 516.98,			
				y = 198.77,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "berrybush2",			
				shape = "rectangle",
				x = 535.30,			
				y = 1478.08,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 526.99,			
				y = 352.70,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 540.35,			
				y = 697.86,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 537.89,			
			-- 	y = 571.71,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 546.58,			
			-- 	y = 1077.02,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 538.43,			
				y = 530.24,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 535.79,			
				y = 452.91,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 525.55,			
				y = 1813.01,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 549.95,			
			-- 	y = 1049.86,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 545.95,			
				y = 652.82,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 526.26,			
				y = 1865.95,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 548.77,			
			-- 	y = 633.79,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 544.37,			
			-- 	y = 1598.37,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "sapling",			
				shape = "rectangle",
				x = 556.98,			
				y = 1154.80,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 533.79,			
				y = 1899.20,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "fireflies",			
				shape = "rectangle",
				x = 556.38,			
				y = 646.50,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "blue_mushroom",			
				shape = "rectangle",
				x = 546.45,			
				y = 361.97,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "blue_mushroom",			
				shape = "rectangle",
				x = 553.97,			
				y = 502.66,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 556.14,			
			-- 	y = 1499.62,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "sapling",			
				shape = "rectangle",
				x = 562.91,			
				y = 691.42,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "blue_mushroom",			
				shape = "rectangle",
				x = 558.58,			
				y = 1532.45,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 545.17,			
			-- 	y = 219.87,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 561.20,			
			-- 	y = 1576.83,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 569.39,			
				y = 733.30,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 551.36,			
				y = 245.87,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 569.15,			
			-- 	y = 697.86,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 572.96,			
				y = 626.24,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 559.25,			
				y = 245.17,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "blue_mushroom",			
				shape = "rectangle",
				x = 582.96,			
				y = 1011.94,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 562.24,			
				y = 163.52,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 578.16,			
				y = 1615.20,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "butterfly",			
				shape = "rectangle",
				x = 564.76,			
				y = 166.56,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 593.50,			
			-- 	y = 1034.29,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "fireflies",			
				shape = "rectangle",
				x = 570.22,			
				y = 1874.86,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 567.15,			
				y = 1928.00,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "berrybush2",			
				shape = "rectangle",
				x = 593.66,			
				y = 720.34,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "red_mushroom",			
				shape = "rectangle",
				x = 596.94,			
				y = 1039.47,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 573.30,			
				y = 175.26,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "berrybush2",			
				shape = "rectangle",
				x = 572.34,			
				y = 1893.62,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "red_mushroom",			
				shape = "rectangle",
				x = 589.10,			
				y = 1562.59,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 580.94,			
			-- 	y = 1842.46,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 606.74,			
				y = 692.34,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "cutgrass",			
				shape = "rectangle",
				x = 593.03,			
				y = 315.27,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 597.82,			
				y = 1661.82,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "butterfly",			
				shape = "rectangle",
				x = 597.86,			
				y = 228.02,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 595.39,			
			-- 	y = 1874.35,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 620.00,			
			-- 	y = 731.81,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 613.12,			
				y = 1556.59,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 624.11,			
				y = 1015.76,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 624.48,			
				y = 1027.12,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 611.84,			
			-- 	y = 1641.20,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 613.84,			
				y = 1634.64,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 635.95,			
				y = 983.10,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 612.75,			
				y = 179.90,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 640.16,			
			-- 	y = 718.78,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 618.91,			
			-- 	y = 1892.58,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 632.48,			
				y = 1689.78,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 648.08,			
				y = 1075.66,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 620.98,			
				y = 112.08,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "dirtpile",			
				shape = "rectangle",
				x = 626.92,			
				y = 177.18,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "twigs",			
				shape = "rectangle",
				x = 649.65,			
				y = 644.06,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 630.75,			
			-- 	y = 151.86,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 650.64,			
			-- 	y = 1629.04,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 635.09,			
				y = 1924.86,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 663.34,			
				y = 725.34,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "berrybush2",			
				shape = "rectangle",
				x = 638.10,			
				y = 125.07,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 672.50,			
			-- 	y = 1001.52,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "blue_mushroom",			
				shape = "rectangle",
				x = 648.77,			
				y = 1872.38,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "sapling",			
				shape = "rectangle",
				x = 644.11,			
				y = 98.77,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 676.19,			
				y = 963.50,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "fireflies",			
				shape = "rectangle",
				x = 674.04,			
				y = 733.26,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "fireflies",			
				shape = "rectangle",
				x = 650.63,			
				y = 126.99,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 652.08,			
				y = 105.73,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 654.80,			
				y = 97.57,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "blue_mushroom",			
				shape = "rectangle",
				x = 672.13,			
				y = 1669.94,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 673.66,			
			-- 	y = 1708.53,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 688.66,			
				y = 746.72,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 671.41,			
				y = 166.70,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 700.80,			
			-- 	y = 973.20,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 672.35,			
			-- 	y = 120.77,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 672.35,			
				y = 73.87,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 693.98,			
			-- 	y = 1693.18,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 684.64,			
			-- 	y = 1892.64,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 708.45,			
				y = 741.38,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 698.54,			
				y = 1667.87,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "myth_store",			
				shape = "rectangle",
				x = 702.88,			
				y = 480.00,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 715.68,			
				y = 974.16,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 718.86,			
			-- 	y = 770.66,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "myth_store_construction",			
				shape = "rectangle",
				x = 706.43,			
				y = 352.30,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 694.14,			
				y = 73.87,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 731.10,			
			-- 	y = 954.78,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 732.22,			
			-- 	y = 803.54,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "sapling",			
				shape = "rectangle",
				x = 734.08,			
				y = 830.22,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 707.58,			
				y = 115.71,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "twigs",			
				shape = "rectangle",
				x = 712.59,			
				y = 171.81,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 722.42,			
				y = 1722.56,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "red_mushroom",			
				shape = "rectangle",
				x = 726.34,			
				y = 1664.80,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 729.07,			
				y = 1695.38,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "red_mushroom",			
				shape = "rectangle",
				x = 743.76,			
				y = 789.84,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "blue_mushroom",			
				shape = "rectangle",
				x = 746.30,			
				y = 762.19,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 753.87,			
				y = 966.13,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "fireflies",			
				shape = "rectangle",
				x = 756.90,			
				y = 1354.00,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 764.78,			
				y = 1015.04,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 765.62,			
			-- 	y = 814.86,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 760.75,			
			-- 	y = 1699.23,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 775.81,			
				y = 776.13,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 782.91,			
				y = 981.20,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 782.37,			
			-- 	y = 781.81,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 785.31,			
			-- 	y = 1631.10,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "fireflies",			
				shape = "rectangle",
				x = 797.29,			
				y = 1375.57,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 806.05,			
				y = 990.18,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "myth_store_construction",			
				shape = "rectangle",
				x = 801.30,			
				y = 577.60,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 797.46,			
				y = 1652.18,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "myth_store_construction",			
				shape = "rectangle",
				x = 799.84,			
				y = 256.00,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 819.31,			
			-- 	y = 784.24,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "berrybush2",			
				shape = "rectangle",
				x = 827.39,			
				y = 983.87,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 813.38,			
				y = 1721.86,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 800.45,			
				y = 73.81,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 831.28,			
			-- 	y = 812.82,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "berrybush2",			
				shape = "rectangle",
				x = 818.18,			
				y = 1690.06,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 842.43,			
				y = 971.79,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 846.61,			
				y = 793.57,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 822.70,			
				y = 96.05,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 821.84,			
				y = 59.18,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 826.48,			
				y = 88.14,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 858.85,			
				y = 1007.20,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 848.88,			
			-- 	y = 1701.34,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 865.82,			
			-- 	y = 807.38,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "myth_rhino_desk_spawner",			
				shape = "rectangle",
				x = 864.96,			
				y = 1309.74,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 842.35,			
			-- 	y = 61.57,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "red_mushroom",			
				shape = "rectangle",
				x = 874.59,			
				y = 815.28,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "myth_statue_pandaman",			
				shape = "rectangle",
				x = 863.84,			
				y = 417.26,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 874.40,			
				y = 762.86,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 850.67,			
			-- 	y = 1920.42,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 858.93,			
			-- 	y = 1865.78,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 872.10,			
				y = 1677.90,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 885.06,			
				y = 788.14,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 875.89,			
			-- 	y = 1655.84,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 890.98,			
			-- 	y = 957.07,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 893.20,			
				y = 984.54,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "blue_mushroom",			
				shape = "rectangle",
				x = 878.14,			
				y = 1861.15,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 902.91,			
			-- 	y = 793.31,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 888.62,			
			-- 	y = 1721.86,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "driftwood_log",			
				shape = "rectangle",
				x = 874.88,			
				y = 2012.45,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "fireflies",			
				shape = "rectangle",
				x = 907.31,			
				y = 1270.54,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 881.41,			
				y = 92.91,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 885.28,			
			-- 	y = 1893.86,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 916.50,			
				y = 966.21,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 916.32,			
				y = 796.38,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 921.02,			
				y = 1010.74,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "red_mushroom",			
				shape = "rectangle",
				x = 914.93,			
				y = 1702.98,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 905.47,			
			-- 	y = 1894.43,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 931.20,			
			-- 	y = 821.07,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "blue_mushroom",			
				shape = "rectangle",
				x = 909.26,			
				y = 1878.27,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "grass",			
				shape = "rectangle",
				x = 933.38,			
				y = 778.69,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "myth_store",			
				shape = "rectangle",
				x = 928.51,			
				y = 575.34,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 911.70,			
				y = 1853.20,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "blue_mushroom",			
				shape = "rectangle",
				x = 907.78,			
				y = 119.90,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 938.14,			
				y = 800.13,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 940.08,			
			-- 	y = 971.73,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "blue_mushroom",			
				shape = "rectangle",
				x = 930.62,			
				y = 1609.52,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "grass",			
				shape = "rectangle",
				x = 912.59,			
				y = 82.37,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "red_mushroom",			
				shape = "rectangle",
				x = 947.02,			
				y = 995.58,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 918.45,			
				y = 99.25,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 935.34,			
				y = 1680.13,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 920.93,			
				y = 99.10,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "myth_store_construction",			
				shape = "rectangle",
				x = 930.26,			
				y = 256.64,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 949.39,			
				y = 794.85,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 931.14,			
				y = 1911.02,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "blue_mushroom",			
				shape = "rectangle",
				x = 939.60,			
				y = 1900.48,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 938.00,			
				y = 72.99,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 968.75,			
				y = 815.58,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 943.33,			
			-- 	y = 95.90,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 949.01,			
			-- 	y = 1887.46,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 975.82,			
			-- 	y = 956.00,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 948.64,			
				y = 114.32,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 977.31,			
				y = 781.42,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 980.88,			
			-- 	y = 806.51,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 960.37,			
				y = 78.40,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 992.03,			
				y = 1002.96,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "berrybush2",			
				shape = "rectangle",
				x = 980.06,			
				y = 1673.49,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 967.70,			
				y = 81.62,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 987.87,			
				y = 1638.32,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 977.89,			
				y = 1848.06,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 989.28,			
				y = 1707.01,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1004.11,			
				y = 794.74,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1004.91,			
				y = 777.90,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 983.42,			
			-- 	y = 1883.66,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1009.42,			
			-- 	y = 973.15,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "red_mushroom",			
				shape = "rectangle",
				x = 1015.22,			
				y = 792.58,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1021.87,			
				y = 826.21,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1006.69,			
			-- 	y = 1847.98,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "blue_mushroom",			
				shape = "rectangle",
				x = 1033.20,			
				y = 973.73,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "myth_store_construction",			
				shape = "rectangle",
				x = 1023.22,			
				y = 480.45,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1032.40,			
				y = 778.11,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1009.18,			
				y = 1911.97,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "myth_store",			
				shape = "rectangle",
				x = 1023.68,			
				y = 351.34,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1029.81,			
				y = 1681.55,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "berrybush2",			
				shape = "rectangle",
				x = 1050.86,			
				y = 813.26,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1052.80,			
			-- 	y = 961.22,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "fireflies",			
				shape = "rectangle",
				x = 1028.28,			
				y = 176.10,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1055.20,			
				y = 1082.08,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1045.71,			
				y = 1631.02,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1035.41,			
				y = 1887.46,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1064.21,			
				y = 821.15,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1064.66,			
				y = 791.86,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1056.42,			
				y = 1586.19,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1055.55,			
			-- 	y = 1644.80,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "blue_mushroom",			
				shape = "rectangle",
				x = 1044.93,			
				y = 1862.70,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "fireflies",			
				shape = "rectangle",
				x = 1068.35,			
				y = 808.05,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1073.07,			
				y = 992.99,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1046.00,			
				y = 115.49,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1064.64,			
			-- 	y = 1599.52,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1079.09,			
				y = 1082.30,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "berrybush2",			
				shape = "rectangle",
				x = 1081.86,			
				y = 1009.44,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1053.06,			
				y = 68.70,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1085.97,			
				y = 985.63,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1062.64,			
				y = 1887.46,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1090.59,			
			-- 	y = 1061.68,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "sapling",			
				shape = "rectangle",
				x = 1081.01,			
				y = 1609.36,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1063.12,			
				y = 85.36,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1094.72,			
				y = 788.02,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1097.34,			
			-- 	y = 1032.42,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1070.85,			
			-- 	y = 105.14,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1090.38,			
				y = 1574.24,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1078.94,			
				y = 1835.01,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1072.51,			
				y = 72.22,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1106.22,			
			-- 	y = 818.45,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1081.23,			
			-- 	y = 140.53,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1096.67,			
				y = 1614.18,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1105.79,			
				y = 657.82,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1090.54,			
			-- 	y = 1797.63,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1082.45,			
				y = 94.70,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1114.59,			
				y = 1014.06,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1111.25,			
				y = 684.53,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1103.02,			
			-- 	y = 1629.68,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1102.32,			
			-- 	y = 1652.58,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "fireflies",			
				shape = "rectangle",
				x = 1119.03,			
				y = 700.81,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1095.94,			
				y = 1906.50,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1126.00,			
			-- 	y = 1092.99,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1120.85,			
				y = 623.78,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1098.56,			
			-- 	y = 107.95,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "red_mushroom",			
				shape = "rectangle",
				x = 1122.69,			
				y = 1536.21,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1121.98,			
				y = 1584.48,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1101.36,			
				y = 65.49,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1134.85,			
			-- 	y = 1056.83,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1129.90,			
			-- 	y = 587.30,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1106.42,			
				y = 72.14,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1137.17,			
			-- 	y = 853.84,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1136.14,			
			-- 	y = 694.80,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1138.77,			
				y = 827.01,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1123.71,			
				y = 1784.42,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1136.21,			
				y = 1538.06,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1145.36,			
			-- 	y = 729.89,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "blue_mushroom",			
				shape = "rectangle",
				x = 1123.09,			
				y = 82.93,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1149.49,			
				y = 655.23,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1126.91,			
				y = 1916.88,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1149.49,			
			-- 	y = 596.03,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1158.86,			
				y = 1080.00,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1150.96,			
			-- 	y = 1573.15,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1150.13,			
				y = 1649.49,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "fireflies",			
				shape = "rectangle",
				x = 1137.93,			
				y = 1889.37,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "fireflies",			
				shape = "rectangle",
				x = 1144.64,			
				y = 241.26,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1158.70,			
				y = 573.12,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1162.21,			
				y = 610.24,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1165.49,			
				y = 685.46,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1163.81,			
			-- 	y = 1489.98,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1172.38,			
			-- 	y = 1107.46,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "berrybush2",			
				shape = "rectangle",
				x = 1165.04,			
				y = 1499.46,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1152.50,			
				y = 1809.26,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1174.93,			
				y = 748.48,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1174.54,			
			-- 	y = 652.40,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1179.26,			
			-- 	y = 1126.34,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1176.80,			
				y = 714.37,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1168.61,			
				y = 1616.16,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1182.10,			
			-- 	y = 863.71,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "fireflies",			
				shape = "rectangle",
				x = 1177.73,			
				y = 629.31,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1175.92,			
				y = 1514.59,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1159.09,			
			-- 	y = 1918.98,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1186.50,			
				y = 1079.98,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1185.46,			
				y = 1322.77,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1181.46,			
			-- 	y = 1570.67,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "red_mushroom",			
				shape = "rectangle",
				x = 1193.02,			
				y = 1138.94,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "blue_mushroom",			
				shape = "rectangle",
				x = 1171.82,			
				y = 1875.12,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "fireflies",			
				shape = "rectangle",
				x = 1177.23,			
				y = 1806.36,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1193.01,			
				y = 626.58,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1191.33,			
				y = 1489.82,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1197.76,			
				y = 1267.02,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "red_mushroom",			
				shape = "rectangle",
				x = 1180.85,			
				y = 1787.28,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "blue_mushroom",			
				shape = "rectangle",
				x = 1198.80,			
				y = 1285.50,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1197.71,			
				y = 684.27,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1186.32,			
				y = 332.90,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "red_mushroom",			
				shape = "rectangle",
				x = 1203.12,			
				y = 880.90,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1200.82,			
				y = 1465.38,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1182.32,			
			-- 	y = 1891.76,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1207.65,			
				y = 849.95,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1196.70,			
				y = 362.27,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1208.06,			
				y = 1427.71,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1195.38,			
				y = 271.86,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1208.21,			
			-- 	y = 1500.99,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1214.29,			
				y = 1263.04,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1197.14,			
				y = 1783.82,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1208.21,			
			-- 	y = 1539.49,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1218.64,			
				y = 872.58,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1202.16,			
			-- 	y = 305.86,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1220.70,			
				y = 906.43,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1219.39,			
				y = 1378.24,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1217.54,			
				y = 1458.24,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1208.03,			
			-- 	y = 289.47,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1207.23,			
			-- 	y = 256.80,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1226.16,			
				y = 1240.48,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1212.02,			
				y = 341.44,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1208.03,			
			-- 	y = 241.47,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1226.59,			
			-- 	y = 1321.33,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1229.71,			
				y = 907.97,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1230.32,			
				y = 1144.77,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "berrybush2",			
				shape = "rectangle",
				x = 1232.67,			
				y = 1181.12,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1218.42,			
			-- 	y = 226.22,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1213.78,			
				y = 1905.73,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1217.94,			
				y = 188.16,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1218.69,			
				y = 196.64,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1240.75,			
				y = 1223.38,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1242.02,			
			-- 	y = 951.71,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1237.55,			
			-- 	y = 1396.64,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1244.43,			
			-- 	y = 1307.10,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "blue_mushroom",			
				shape = "rectangle",
				x = 1246.77,			
				y = 901.97,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1231.23,			
				y = 1746.51,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "blue_mushroom",			
				shape = "rectangle",
				x = 1236.69,			
				y = 1735.04,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1252.05,			
			-- 	y = 1279.87,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1231.49,			
			-- 	y = 1862.96,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1252.05,			
				y = 1377.28,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1257.71,			
				y = 1187.42,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "berrybush2",			
				shape = "rectangle",
				x = 1240.24,			
				y = 210.99,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1265.17,			
				y = 918.86,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1265.55,			
			-- 	y = 932.08,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1259.31,			
				y = 1468.82,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1268.45,			
				y = 1153.76,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1246.43,			
				y = 193.47,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1269.82,			
			-- 	y = 985.98,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1252.42,			
				y = 187.46,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1254.88,			
			-- 	y = 1816.94,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "grass",			
				shape = "rectangle",
				x = 1259.86,			
				y = 1722.75,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1276.42,			
				y = 1328.91,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1282.08,			
				y = 1252.64,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "red_mushroom",			
				shape = "rectangle",
				x = 1287.26,			
				y = 931.58,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1283.12,			
			-- 	y = 1424.38,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1272.29,			
			-- 	y = 1724.67,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1292.82,			
				y = 957.74,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1294.27,			
				y = 986.93,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1269.20,			
				y = 152.26,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1269.20,			
			-- 	y = 135.47,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1288.13,			
				y = 1663.79,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1279.33,			
			-- 	y = 1847.12,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1277.62,			
				y = 160.05,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1292.50,			
				y = 424.30,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "berrybush2",			
				shape = "rectangle",
				x = 1308.40,			
				y = 999.47,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "fireflies",			
				shape = "rectangle",
				x = 1299.58,			
				y = 461.03,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1314.10,			
				y = 951.52,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1291.70,			
				y = 171.55,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1295.34,			
			-- 	y = 1823.55,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "berrybush2",			
				shape = "rectangle",
				x = 1307.42,			
				y = 1683.39,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1311.70,			
				y = 440.30,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1324.70,			
				y = 982.80,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1318.48,			
				y = 522.24,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "red_mushroom",			
				shape = "rectangle",
				x = 1312.67,			
				y = 1675.87,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1317.49,			
			-- 	y = 466.67,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1308.77,			
				y = 198.46,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1310.03,			
			-- 	y = 1837.79,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1334.91,			
			-- 	y = 1019.50,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1325.66,			
				y = 495.87,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1336.29,			
				y = 637.58,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1318.35,			
				y = 1853.07,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1328.72,			
			-- 	y = 1657.07,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1336.34,			
			-- 	y = 1616.02,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "grass",			
				shape = "rectangle",
				x = 1327.47,			
				y = 216.11,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1350.74,			
			-- 	y = 1032.64,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1345.87,			
				y = 489.09,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "fireflies",			
				shape = "rectangle",
				x = 1352.33,			
				y = 635.38,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1352.83,			
			-- 	y = 631.73,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1351.31,			
				y = 577.02,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1348.80,			
				y = 1556.02,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1335.63,			
				y = 188.16,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1349.30,			
			-- 	y = 1586.70,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1338.46,			
			-- 	y = 215.71,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1355.87,			
				y = 651.31,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1355.87,			
				y = 621.18,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1342.98,			
			-- 	y = 1802.11,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1348.32,			
				y = 1829.50,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1370.24,			
				y = 1051.82,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1366.80,			
				y = 637.18,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "berrybush2",			
				shape = "rectangle",
				x = 1367.74,			
				y = 1552.70,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1365.09,			
			-- 	y = 1630.30,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1382.51,			
				y = 1081.95,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1384.40,			
				y = 916.03,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "fireflies",			
				shape = "rectangle",
				x = 1373.90,			
				y = 1724.90,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1389.87,			
			-- 	y = 884.19,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1371.12,			
			-- 	y = 252.08,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1383.26,			
				y = 1541.92,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1369.89,			
			-- 	y = 206.19,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1374.98,			
				y = 1769.66,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1387.76,			
				y = 1519.55,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1381.07,			
				y = 328.19,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1377.23,			
			-- 	y = 1808.99,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1376.43,			
				y = 1857.49,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1403.46,			
				y = 857.82,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1384.85,			
				y = 241.46,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1407.94,			
			-- 	y = 1075.82,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1409.30,			
			-- 	y = 1118.85,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1410.78,			
				y = 932.82,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1394.78,			
				y = 288.69,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1411.98,			
			-- 	y = 1216.80,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1413.23,			
				y = 1361.14,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1417.76,			
			-- 	y = 1167.95,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1412.29,			
				y = 1484.64,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1417.81,			
				y = 1257.98,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1402.91,			
				y = 1751.55,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1399.06,			
			-- 	y = 1834.96,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "red_mushroom",			
				shape = "rectangle",
				x = 1399.92,			
				y = 224.85,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1423.82,			
			-- 	y = 834.26,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "berrybush2",			
				shape = "rectangle",
				x = 1408.00,			
				y = 307.06,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1409.50,			
				y = 325.79,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1410.93,			
				y = 1796.18,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1422.30,			
				y = 512.74,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1426.82,			
				y = 1424.54,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1411.58,			
			-- 	y = 232.48,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1418.67,			
				y = 372.35,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1434.62,			
				y = 1167.60,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1435.87,			
				y = 1124.24,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1437.01,			
				y = 973.71,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "fireflies",			
				shape = "rectangle",
				x = 1435.91,			
				y = 776.31,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1435.87,			
			-- 	y = 1317.71,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1438.08,			
			-- 	y = 1217.09,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1442.27,			
			-- 	y = 810.91,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1443.68,			
			-- 	y = 1360.16,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "berrybush2",			
				shape = "rectangle",
				x = 1446.86,			
				y = 1204.75,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1429.22,			
				y = 1776.22,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1432.80,			
			-- 	y = 1715.28,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1450.45,			
				y = 951.57,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1453.87,			
				y = 1271.18,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1441.28,			
				y = 271.52,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "blue_mushroom",			
				shape = "rectangle",
				x = 1459.54,			
				y = 1190.35,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1446.22,			
				y = 318.10,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1466.77,			
			-- 	y = 838.62,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1469.49,			
				y = 971.70,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1452.48,			
				y = 1743.60,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1454.24,			
			-- 	y = 1766.45,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "fireflies",			
				shape = "rectangle",
				x = 1468.02,			
				y = 1519.71,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1457.09,			
				y = 260.29,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "fireflies",			
				shape = "rectangle",
				x = 1474.31,			
				y = 737.91,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "blue_mushroom",			
				shape = "rectangle",
				x = 1475.81,			
				y = 1225.15,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1467.87,			
				y = 446.11,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1480.75,			
				y = 862.18,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1466.06,			
				y = 1707.63,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1466.94,			
			-- 	y = 347.81,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1481.57,			
				y = 765.71,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "fireflies",			
				shape = "rectangle",
				x = 1470.74,			
				y = 1666.46,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1486.82,			
				y = 884.24,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "cutgrass",			
				shape = "rectangle",
				x = 1481.07,			
				y = 575.50,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1490.02,			
				y = 947.97,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "red_mushroom",			
				shape = "rectangle",
				x = 1489.06,			
				y = 1332.45,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1493.22,			
			-- 	y = 919.17,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1475.57,			
				y = 1758.67,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1475.04,			
				y = 1793.65,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1483.25,			
				y = 405.78,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1494.86,			
				y = 570.02,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1487.44,			
			-- 	y = 1710.34,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "fireflies",			
				shape = "rectangle",
				x = 1503.45,			
				y = 1323.56,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "red_mushroom",			
				shape = "rectangle",
				x = 1496.54,			
				y = 1677.58,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1493.47,			
				y = 276.37,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1494.64,			
				y = 256.38,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1501.97,			
				y = 1689.42,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1509.14,			
			-- 	y = 349.87,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1509.14,			
			-- 	y = 306.67,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "sapling",			
				shape = "rectangle",
				x = 1516.43,			
				y = 1648.14,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1530.50,			
				y = 1379.66,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1524.03,			
				y = 383.71,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1525.98,			
			-- 	y = 1660.50,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "sapling",			
				shape = "rectangle",
				x = 1532.03,			
				y = 521.38,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1542.16,			
				y = 847.30,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1528.74,			
				y = 1727.12,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1542.99,			
				y = 1332.77,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "fireflies",			
				shape = "rectangle",
				x = 1547.80,			
				y = 1053.93,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "berrybush2",			
				shape = "rectangle",
				x = 1538.64,			
				y = 430.75,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1533.49,			
			-- 	y = 277.58,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1555.22,			
				y = 1036.91,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "blue_mushroom",			
				shape = "rectangle",
				x = 1545.87,			
				y = 1629.57,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1543.41,			
				y = 352.54,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1544.02,			
				y = 1703.97,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1556.08,			
			-- 	y = 1366.86,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1557.12,			
			-- 	y = 1339.73,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1547.81,			
				y = 407.47,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1552.14,			
				y = 473.38,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1550.24,			
			-- 	y = 1674.40,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "grass",			
				shape = "rectangle",
				x = 1561.38,			
				y = 641.86,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "blue_mushroom",			
				shape = "rectangle",
				x = 1563.54,			
				y = 668.69,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1559.12,			
				y = 509.39,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1558.78,			
			-- 	y = 1596.14,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1557.04,			
			-- 	y = 1648.42,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1557.95,			
				y = 1636.62,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1561.02,			
				y = 440.26,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1570.21,			
			-- 	y = 1343.70,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "fireflies",			
				shape = "rectangle",
				x = 1568.67,			
				y = 513.37,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1577.06,			
				y = 674.30,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1573.84,			
			-- 	y = 1565.07,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1574.78,			
				y = 1596.14,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1586.05,			
				y = 1321.46,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1584.18,			
			-- 	y = 465.94,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1584.18,			
			-- 	y = 379.55,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1595.17,			
				y = 708.42,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1591.95,			
				y = 542.21,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1599.14,			
				y = 1165.60,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1588.43,			
			-- 	y = 1628.54,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1596.11,			
				y = 640.59,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1591.55,			
			-- 	y = 1604.54,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "berrybush2",			
				shape = "rectangle",
				x = 1601.30,			
				y = 618.30,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1595.76,			
				y = 1663.28,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "red_mushroom",			
				shape = "rectangle",
				x = 1603.30,			
				y = 582.99,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1613.41,			
				y = 1102.61,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1606.22,			
				y = 1557.84,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1613.79,			
				y = 742.22,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "fireflies",			
				shape = "rectangle",
				x = 1605.50,			
				y = 442.93,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "fireflies",			
				shape = "rectangle",
				x = 1615.81,			
				y = 1397.52,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "blue_mushroom",			
				shape = "rectangle",
				x = 1623.17,			
				y = 1032.72,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "berrybush2",			
				shape = "rectangle",
				x = 1616.86,			
				y = 1529.78,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1614.26,			
			-- 	y = 403.09,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1622.14,			
			-- 	y = 608.18,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "berrybush2",			
				shape = "rectangle",
				x = 1626.02,			
				y = 768.69,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1628.88,			
				y = 1073.42,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1623.63,			
				y = 573.87,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1622.38,			
			-- 	y = 1594.59,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1628.58,			
				y = 1493.41,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1625.38,			
				y = 452.83,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1632.70,			
			-- 	y = 665.47,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1637.90,			
			-- 	y = 1042.98,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1637.94,			
				y = 1035.57,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "fireflies",			
				shape = "rectangle",
				x = 1638.46,			
				y = 766.66,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1642.46,			
				y = 961.74,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "red_mushroom",			
				shape = "rectangle",
				x = 1639.02,			
				y = 1378.42,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1643.22,			
				y = 771.65,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1641.15,			
			-- 	y = 1424.37,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "fireflies",			
				shape = "rectangle",
				x = 1650.07,			
				y = 1207.41,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1651.52,			
				y = 1006.00,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1650.02,			
				y = 699.62,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1645.31,			
				y = 1531.98,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1652.43,			
			-- 	y = 803.68,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1647.94,			
			-- 	y = 593.57,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1649.94,			
				y = 1379.62,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1654.29,			
				y = 983.39,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1645.97,			
			-- 	y = 487.68,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1644.85,			
			-- 	y = 1594.70,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1650.27,			
			-- 	y = 537.10,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1659.79,			
				y = 1313.31,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1649.73,			
				y = 383.70,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1660.42,			
				y = 667.30,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1661.14,			
				y = 1389.02,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1664.11,			
			-- 	y = 728.13,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "grass",			
				shape = "rectangle",
				x = 1665.95,			
				y = 1378.00,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1663.84,			
				y = 1466.59,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1667.84,			
				y = 607.95,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1675.31,			
			-- 	y = 1320.35,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1672.02,			
			-- 	y = 1519.55,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1682.56,			
				y = 774.88,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1683.06,			
			-- 	y = 1386.46,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1683.18,			
				y = 1480.00,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1683.12,			
				y = 564.50,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1689.97,			
			-- 	y = 1280.98,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "berrybush2",			
				shape = "rectangle",
				x = 1695.81,			
				y = 886.85,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "red_mushroom",			
				shape = "rectangle",
				x = 1696.46,			
				y = 567.06,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "fireflies",			
				shape = "rectangle",
				x = 1704.25,			
				y = 893.49,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1703.65,			
				y = 1260.18,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1702.64,			
				y = 1352.22,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1703.89,			
			-- 	y = 708.48,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1702.14,			
			-- 	y = 1424.29,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1703.76,			
				y = 651.60,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1709.66,			
				y = 964.77,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1713.81,			
				y = 858.11,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "sapling",			
				shape = "rectangle",
				x = 1715.39,			
				y = 1233.07,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1711.86,			
				y = 596.86,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1711.74,			
			-- 	y = 1461.04,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1717.12,			
				y = 835.58,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1716.21,			
				y = 743.17,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1724.22,			
				y = 1012.40,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1722.38,			
			-- 	y = 1270.72,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "flower",			
				shape = "rectangle",
				x = 1723.68,			
				y = 1226.13,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1722.51,			
				y = 1365.52,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "blue_mushroom",			
				shape = "rectangle",
				x = 1727.94,			
				y = 1066.18,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1727.65,			
				y = 890.91,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "driftwood_log",			
				shape = "rectangle",
				x = 1699.68,			
				y = 2021.74,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1732.11,			
			-- 	y = 1296.00,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "red_mushroom",			
				shape = "rectangle",
				x = 1736.00,			
				y = 1158.13,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1735.22,			
				y = 686.58,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1736.53,			
				y = 738.48,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1738.22,			
			-- 	y = 1230.88,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1742.00,			
				y = 872.59,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1742.53,			
			-- 	y = 936.18,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1741.12,			
				y = 793.89,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1747.04,			
				y = 1166.93,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "grass",			
				shape = "rectangle",
				x = 1749.86,			
				y = 1047.70,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "berrybush2",			
				shape = "rectangle",
				x = 1751.84,			
				y = 1063.46,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1751.31,			
			-- 	y = 1346.32,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1760.62,			
			-- 	y = 1130.94,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1760.11,			
				y = 827.63,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1762.88,			
				y = 970.37,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1767.41,			
				y = 916.29,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1766.06,			
			-- 	y = 1266.03,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1767.25,			
			-- 	y = 1196.96,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1769.68,			
				y = 1093.09,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1774.30,			
			-- 	y = 1293.71,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1778.56,			
				y = 1013.49,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1778.74,			
				y = 1044.03,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1783.78,			
			-- 	y = 961.33,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1784.91,			
			-- 	y = 773.92,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1788.08,			
			-- 	y = 859.02,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1788.08,			
				y = 815.82,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			-- {
			-- 	name = "",
			-- 	type = "bambooplant_mapspawn_myth",			
			-- 	shape = "rectangle",
			-- 	x = 1794.86,			
			-- 	y = 904.21,			
			-- 	width = 0,
			-- 	height = 0,
			-- 	visible = true,
			-- 	properties = {}
			-- },

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1793.62,			
				y = 1321.02,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1796.66,			
				y = 1149.74,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bambooplant_mapspawn_myth",			
				shape = "rectangle",
				x = 1800.00,			
				y = 1219.20,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bullkelp_plant",			
				shape = "rectangle",
				x = 1774.10,			
				y = 1947.82,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bullkelp_plant",			
				shape = "rectangle",
				x = 1812.96,			
				y = 1424.45,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "driftwood_log",			
				shape = "rectangle",
				x = 1882.88,			
				y = 212.64,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

			{
				name = "",
				type = "bullkelp_plant",			
				shape = "rectangle",
				x = 1961.30,			
				y = 849.12,			
				width = 0,
				height = 0,
				visible = true,
				properties = {}
			},

		}
    },			

	}
}
