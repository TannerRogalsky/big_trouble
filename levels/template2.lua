return {
  version = "1.1",
  luaversion = "5.1",
  orientation = "orthogonal",
  width = 14,
  height = 14,
  tilewidth = 50,
  tileheight = 50,
  properties = {},
  tilesets = {
    {
      name = "sprites",
      firstgid = 1,
      tilewidth = 50,
      tileheight = 50,
      spacing = 0,
      margin = 0,
      image = "../images/sprites.png",
      imagewidth = 512,
      imageheight = 256,
      properties = {},
      tiles = {}
    }
  },
  layers = {
    {
      type = "imagelayer",
      name = "Background",
      visible = true,
      opacity = 1,
      image = ""
    },
    {
      type = "objectgroup",
      name = "Nodes",
      visible = true,
      opacity = 1,
      properties = {},
      objects = {
        {
          name = "n_0107",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 300,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0207",
            ["sibling_north"] = "n_0106",
            ["sibling_south"] = "n_0108"
          }
        },
        {
          name = "n_0108",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 350,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0208",
            ["sibling_north"] = "n_0107",
            ["sibling_south"] = "n_0109"
          }
        },
        {
          name = "n_0109",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 400,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0209",
            ["sibling_north"] = "n_0108",
            ["sibling_south"] = "n_0110"
          }
        },
        {
          name = "n_0110",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 450,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0210",
            ["sibling_north"] = "n_0109",
            ["sibling_south"] = "n_0111"
          }
        },
        {
          name = "n_0111",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 500,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0211",
            ["sibling_north"] = "n_0110",
            ["sibling_south"] = "n_0112"
          }
        },
        {
          name = "n_0112",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 550,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0212",
            ["sibling_north"] = "n_0111",
            ["sibling_south"] = "n_0113"
          }
        },
        {
          name = "n_0113",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 600,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0213",
            ["sibling_north"] = "n_0112",
            ["sibling_south"] = "n_0114"
          }
        },
        {
          name = "n_0114",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 650,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0214",
            ["sibling_north"] = "n_0113"
          }
        },
        {
          name = "n_0207",
          type = "",
          shape = "rectangle",
          x = 50,
          y = 300,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0307",
            ["sibling_north"] = "n_0206",
            ["sibling_south"] = "n_0208",
            ["sibling_west"] = "n_0107"
          }
        },
        {
          name = "n_0208",
          type = "",
          shape = "rectangle",
          x = 50,
          y = 350,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0308",
            ["sibling_north"] = "n_0207",
            ["sibling_south"] = "n_0209",
            ["sibling_west"] = "n_0108"
          }
        },
        {
          name = "n_0209",
          type = "",
          shape = "rectangle",
          x = 50,
          y = 400,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0309",
            ["sibling_north"] = "n_0208",
            ["sibling_south"] = "n_0210",
            ["sibling_west"] = "n_0109"
          }
        },
        {
          name = "n_0210",
          type = "",
          shape = "rectangle",
          x = 50,
          y = 450,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0310",
            ["sibling_north"] = "n_0209",
            ["sibling_south"] = "n_0211",
            ["sibling_west"] = "n_0110"
          }
        },
        {
          name = "n_0211",
          type = "",
          shape = "rectangle",
          x = 50,
          y = 500,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0311",
            ["sibling_north"] = "n_0210",
            ["sibling_south"] = "n_0212",
            ["sibling_west"] = "n_0111"
          }
        },
        {
          name = "n_0212",
          type = "",
          shape = "rectangle",
          x = 50,
          y = 550,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0312",
            ["sibling_north"] = "n_0211",
            ["sibling_south"] = "n_0213",
            ["sibling_west"] = "n_0112"
          }
        },
        {
          name = "n_0213",
          type = "",
          shape = "rectangle",
          x = 50,
          y = 600,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0313",
            ["sibling_north"] = "n_0212",
            ["sibling_south"] = "n_0214",
            ["sibling_west"] = "n_0113"
          }
        },
        {
          name = "n_0214",
          type = "",
          shape = "rectangle",
          x = 50,
          y = 650,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0314",
            ["sibling_north"] = "n_0213",
            ["sibling_west"] = "n_0114"
          }
        },
        {
          name = "n_0301",
          type = "",
          shape = "rectangle",
          x = 100,
          y = 0,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0401",
            ["sibling_south"] = "n_0302",
            ["sibling_west"] = "n_0201"
          }
        },
        {
          name = "n_0306",
          type = "",
          shape = "rectangle",
          x = 100,
          y = 250,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0406",
            ["sibling_north"] = "n_0305",
            ["sibling_south"] = "n_0307",
            ["sibling_west"] = "n_0206"
          }
        },
        {
          name = "n_0307",
          type = "",
          shape = "rectangle",
          x = 100,
          y = 300,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0407",
            ["sibling_north"] = "n_0306",
            ["sibling_south"] = "n_0308",
            ["sibling_west"] = "n_0207"
          }
        },
        {
          name = "n_0308",
          type = "",
          shape = "rectangle",
          x = 100,
          y = 350,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0408",
            ["sibling_north"] = "n_0307",
            ["sibling_south"] = "n_0309",
            ["sibling_west"] = "n_0208"
          }
        },
        {
          name = "n_0309",
          type = "",
          shape = "rectangle",
          x = 100,
          y = 400,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0409",
            ["sibling_north"] = "n_0308",
            ["sibling_south"] = "n_0310",
            ["sibling_west"] = "n_0209"
          }
        },
        {
          name = "n_0310",
          type = "",
          shape = "rectangle",
          x = 100,
          y = 450,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0410",
            ["sibling_north"] = "n_0309",
            ["sibling_south"] = "n_0311",
            ["sibling_west"] = "n_0210"
          }
        },
        {
          name = "n_0311",
          type = "",
          shape = "rectangle",
          x = 100,
          y = 500,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0411",
            ["sibling_north"] = "n_0310",
            ["sibling_south"] = "n_0312",
            ["sibling_west"] = "n_0211"
          }
        },
        {
          name = "n_0312",
          type = "",
          shape = "rectangle",
          x = 100,
          y = 550,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0412",
            ["sibling_north"] = "n_0311",
            ["sibling_south"] = "n_0313",
            ["sibling_west"] = "n_0212"
          }
        },
        {
          name = "n_0313",
          type = "",
          shape = "rectangle",
          x = 100,
          y = 600,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0413",
            ["sibling_north"] = "n_0312",
            ["sibling_south"] = "n_0314",
            ["sibling_west"] = "n_0213"
          }
        },
        {
          name = "n_0314",
          type = "",
          shape = "rectangle",
          x = 100,
          y = 650,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0414",
            ["sibling_north"] = "n_0313",
            ["sibling_west"] = "n_0214"
          }
        },
        {
          name = "n_0401",
          type = "",
          shape = "rectangle",
          x = 150,
          y = 0,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0501",
            ["sibling_south"] = "n_0402",
            ["sibling_west"] = "n_0301"
          }
        },
        {
          name = "n_0406",
          type = "",
          shape = "rectangle",
          x = 150,
          y = 250,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0506",
            ["sibling_north"] = "n_0405",
            ["sibling_south"] = "n_0407",
            ["sibling_west"] = "n_0306"
          }
        },
        {
          name = "n_0407",
          type = "",
          shape = "rectangle",
          x = 150,
          y = 300,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0507",
            ["sibling_north"] = "n_0406",
            ["sibling_south"] = "n_0408",
            ["sibling_west"] = "n_0307"
          }
        },
        {
          name = "n_0408",
          type = "",
          shape = "rectangle",
          x = 150,
          y = 350,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0508",
            ["sibling_north"] = "n_0407",
            ["sibling_south"] = "n_0409",
            ["sibling_west"] = "n_0308"
          }
        },
        {
          name = "n_0409",
          type = "",
          shape = "rectangle",
          x = 150,
          y = 400,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0509",
            ["sibling_north"] = "n_0408",
            ["sibling_south"] = "n_0410",
            ["sibling_west"] = "n_0309"
          }
        },
        {
          name = "n_0410",
          type = "",
          shape = "rectangle",
          x = 150,
          y = 450,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0510",
            ["sibling_north"] = "n_0409",
            ["sibling_south"] = "n_0411",
            ["sibling_west"] = "n_0310"
          }
        },
        {
          name = "n_0411",
          type = "",
          shape = "rectangle",
          x = 150,
          y = 500,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0511",
            ["sibling_north"] = "n_0410",
            ["sibling_south"] = "n_0412",
            ["sibling_west"] = "n_0311"
          }
        },
        {
          name = "n_0412",
          type = "",
          shape = "rectangle",
          x = 150,
          y = 550,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0512",
            ["sibling_north"] = "n_0411",
            ["sibling_south"] = "n_0413",
            ["sibling_west"] = "n_0312"
          }
        },
        {
          name = "n_0413",
          type = "",
          shape = "rectangle",
          x = 150,
          y = 600,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0513",
            ["sibling_north"] = "n_0412",
            ["sibling_south"] = "n_0414",
            ["sibling_west"] = "n_0313"
          }
        },
        {
          name = "n_0414",
          type = "",
          shape = "rectangle",
          x = 150,
          y = 650,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0514",
            ["sibling_north"] = "n_0413",
            ["sibling_west"] = "n_0314"
          }
        },
        {
          name = "n_0501",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 0,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0601",
            ["sibling_south"] = "n_0502",
            ["sibling_west"] = "n_0401"
          }
        },
        {
          name = "n_0504",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 150,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0604",
            ["sibling_north"] = "n_0503",
            ["sibling_south"] = "n_0505",
            ["sibling_west"] = "n_0404"
          }
        },
        {
          name = "n_0505",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 200,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0605",
            ["sibling_north"] = "n_0504",
            ["sibling_south"] = "n_0506",
            ["sibling_west"] = "n_0405"
          }
        },
        {
          name = "n_0506",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 250,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0606",
            ["sibling_north"] = "n_0505",
            ["sibling_south"] = "n_0507",
            ["sibling_west"] = "n_0406"
          }
        },
        {
          name = "n_0507",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 300,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0607",
            ["sibling_north"] = "n_0506",
            ["sibling_south"] = "n_0508",
            ["sibling_west"] = "n_0407"
          }
        },
        {
          name = "n_0508",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 350,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0608",
            ["sibling_north"] = "n_0507",
            ["sibling_south"] = "n_0509",
            ["sibling_west"] = "n_0408"
          }
        },
        {
          name = "n_0509",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 400,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0609",
            ["sibling_north"] = "n_0508",
            ["sibling_south"] = "n_0510",
            ["sibling_west"] = "n_0409"
          }
        },
        {
          name = "n_0510",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 450,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0610",
            ["sibling_north"] = "n_0509",
            ["sibling_south"] = "n_0511",
            ["sibling_west"] = "n_0410"
          }
        },
        {
          name = "n_0511",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 500,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0611",
            ["sibling_north"] = "n_0510",
            ["sibling_south"] = "n_0512",
            ["sibling_west"] = "n_0411"
          }
        },
        {
          name = "n_0512",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 550,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0612",
            ["sibling_north"] = "n_0511",
            ["sibling_south"] = "n_0513",
            ["sibling_west"] = "n_0412"
          }
        },
        {
          name = "n_0513",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 600,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0613",
            ["sibling_north"] = "n_0512",
            ["sibling_south"] = "n_0514",
            ["sibling_west"] = "n_0413"
          }
        },
        {
          name = "n_0514",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 650,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0614",
            ["sibling_north"] = "n_0513",
            ["sibling_west"] = "n_0414"
          }
        },
        {
          name = "n_0601",
          type = "",
          shape = "rectangle",
          x = 250,
          y = 0,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0701",
            ["sibling_south"] = "n_0602",
            ["sibling_west"] = "n_0501"
          }
        },
        {
          name = "n_0604",
          type = "",
          shape = "rectangle",
          x = 250,
          y = 150,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0704",
            ["sibling_north"] = "n_0603",
            ["sibling_south"] = "n_0605",
            ["sibling_west"] = "n_0504"
          }
        },
        {
          name = "n_0605",
          type = "",
          shape = "rectangle",
          x = 250,
          y = 200,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0705",
            ["sibling_north"] = "n_0604",
            ["sibling_south"] = "n_0606",
            ["sibling_west"] = "n_0505"
          }
        },
        {
          name = "n_0606",
          type = "",
          shape = "rectangle",
          x = 250,
          y = 250,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0706",
            ["sibling_north"] = "n_0605",
            ["sibling_south"] = "n_0607",
            ["sibling_west"] = "n_0506"
          }
        },
        {
          name = "n_0607",
          type = "",
          shape = "rectangle",
          x = 250,
          y = 300,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0707",
            ["sibling_north"] = "n_0606",
            ["sibling_south"] = "n_0608",
            ["sibling_west"] = "n_0507"
          }
        },
        {
          name = "n_0608",
          type = "",
          shape = "rectangle",
          x = 250,
          y = 350,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0708",
            ["sibling_north"] = "n_0607",
            ["sibling_south"] = "n_0609",
            ["sibling_west"] = "n_0508"
          }
        },
        {
          name = "n_0609",
          type = "",
          shape = "rectangle",
          x = 250,
          y = 400,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0709",
            ["sibling_north"] = "n_0608",
            ["sibling_south"] = "n_0610",
            ["sibling_west"] = "n_0509"
          }
        },
        {
          name = "n_0610",
          type = "",
          shape = "rectangle",
          x = 250,
          y = 450,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0710",
            ["sibling_north"] = "n_0609",
            ["sibling_south"] = "n_0611",
            ["sibling_west"] = "n_0510"
          }
        },
        {
          name = "n_0611",
          type = "",
          shape = "rectangle",
          x = 250,
          y = 500,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0711",
            ["sibling_north"] = "n_0610",
            ["sibling_south"] = "n_0612",
            ["sibling_west"] = "n_0511"
          }
        },
        {
          name = "n_0612",
          type = "",
          shape = "rectangle",
          x = 250,
          y = 550,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0712",
            ["sibling_north"] = "n_0611",
            ["sibling_south"] = "n_0613",
            ["sibling_west"] = "n_0512"
          }
        },
        {
          name = "n_0613",
          type = "",
          shape = "rectangle",
          x = 250,
          y = 600,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0713",
            ["sibling_north"] = "n_0612",
            ["sibling_south"] = "n_0614",
            ["sibling_west"] = "n_0513"
          }
        },
        {
          name = "n_0614",
          type = "",
          shape = "rectangle",
          x = 250,
          y = 650,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0714",
            ["sibling_north"] = "n_0613",
            ["sibling_west"] = "n_0514"
          }
        },
        {
          name = "n_0701",
          type = "",
          shape = "rectangle",
          x = 300,
          y = 0,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["on_enter"] = "test_enter_function",
            ["on_exit"] = "test_exit_function",
            ["sibling_east"] = "n_0801",
            ["sibling_south"] = "n_0702",
            ["sibling_west"] = "n_0601"
          }
        },
        {
          name = "n_0702",
          type = "",
          shape = "rectangle",
          x = 300,
          y = 50,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0802",
            ["sibling_north"] = "n_0701",
            ["sibling_south"] = "n_0703",
            ["sibling_west"] = "n_0602"
          }
        },
        {
          name = "n_0703",
          type = "",
          shape = "rectangle",
          x = 300,
          y = 100,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0803",
            ["sibling_north"] = "n_0702",
            ["sibling_south"] = "n_0704",
            ["sibling_west"] = "n_0603"
          }
        },
        {
          name = "n_0704",
          type = "",
          shape = "rectangle",
          x = 300,
          y = 150,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0804",
            ["sibling_north"] = "n_0703",
            ["sibling_south"] = "n_0705",
            ["sibling_west"] = "n_0604"
          }
        },
        {
          name = "n_0705",
          type = "",
          shape = "rectangle",
          x = 300,
          y = 200,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0805",
            ["sibling_north"] = "n_0704",
            ["sibling_south"] = "n_0706",
            ["sibling_west"] = "n_0605"
          }
        },
        {
          name = "n_0706",
          type = "",
          shape = "rectangle",
          x = 300,
          y = 250,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0806",
            ["sibling_north"] = "n_0705",
            ["sibling_south"] = "n_0707",
            ["sibling_west"] = "n_0606"
          }
        },
        {
          name = "n_0707",
          type = "",
          shape = "rectangle",
          x = 300,
          y = 300,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0807",
            ["sibling_north"] = "n_0706",
            ["sibling_south"] = "n_0708",
            ["sibling_west"] = "n_0607"
          }
        },
        {
          name = "n_0708",
          type = "",
          shape = "rectangle",
          x = 300,
          y = 350,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0808",
            ["sibling_north"] = "n_0707",
            ["sibling_south"] = "n_0709",
            ["sibling_west"] = "n_0608"
          }
        },
        {
          name = "n_0709",
          type = "",
          shape = "rectangle",
          x = 300,
          y = 400,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0809",
            ["sibling_north"] = "n_0708",
            ["sibling_south"] = "n_0710",
            ["sibling_west"] = "n_0609"
          }
        },
        {
          name = "n_0710",
          type = "",
          shape = "rectangle",
          x = 300,
          y = 450,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0810",
            ["sibling_north"] = "n_0709",
            ["sibling_south"] = "n_0711",
            ["sibling_west"] = "n_0610"
          }
        },
        {
          name = "n_0711",
          type = "",
          shape = "rectangle",
          x = 300,
          y = 500,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0811",
            ["sibling_north"] = "n_0710",
            ["sibling_south"] = "n_0712",
            ["sibling_west"] = "n_0611"
          }
        },
        {
          name = "n_0712",
          type = "",
          shape = "rectangle",
          x = 300,
          y = 550,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0812",
            ["sibling_north"] = "n_0711",
            ["sibling_south"] = "n_0713",
            ["sibling_west"] = "n_0612"
          }
        },
        {
          name = "n_0713",
          type = "",
          shape = "rectangle",
          x = 300,
          y = 600,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0813",
            ["sibling_north"] = "n_0712",
            ["sibling_south"] = "n_0714",
            ["sibling_west"] = "n_0613"
          }
        },
        {
          name = "n_0714",
          type = "",
          shape = "rectangle",
          x = 300,
          y = 650,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0814",
            ["sibling_north"] = "n_0713",
            ["sibling_west"] = "n_0614"
          }
        },
        {
          name = "n_0801",
          type = "",
          shape = "rectangle",
          x = 350,
          y = 0,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0901",
            ["sibling_south"] = "n_0802",
            ["sibling_west"] = "n_0701"
          }
        },
        {
          name = "n_0802",
          type = "",
          shape = "rectangle",
          x = 350,
          y = 50,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0902",
            ["sibling_north"] = "n_0801",
            ["sibling_south"] = "n_0803",
            ["sibling_west"] = "n_0702"
          }
        },
        {
          name = "n_0805",
          type = "",
          shape = "rectangle",
          x = 350,
          y = 200,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0905",
            ["sibling_north"] = "n_0804",
            ["sibling_south"] = "n_0806",
            ["sibling_west"] = "n_0705"
          }
        },
        {
          name = "n_0806",
          type = "",
          shape = "rectangle",
          x = 350,
          y = 250,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0906",
            ["sibling_north"] = "n_0805",
            ["sibling_south"] = "n_0807",
            ["sibling_west"] = "n_0706"
          }
        },
        {
          name = "n_0807",
          type = "",
          shape = "rectangle",
          x = 350,
          y = 300,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0907",
            ["sibling_north"] = "n_0806",
            ["sibling_south"] = "n_0808",
            ["sibling_west"] = "n_0707"
          }
        },
        {
          name = "n_0808",
          type = "",
          shape = "rectangle",
          x = 350,
          y = 350,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0908",
            ["sibling_north"] = "n_0807",
            ["sibling_south"] = "n_0809",
            ["sibling_west"] = "n_0708"
          }
        },
        {
          name = "n_0809",
          type = "",
          shape = "rectangle",
          x = 350,
          y = 400,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0909",
            ["sibling_north"] = "n_0808",
            ["sibling_south"] = "n_0810",
            ["sibling_west"] = "n_0709"
          }
        },
        {
          name = "n_0810",
          type = "",
          shape = "rectangle",
          x = 350,
          y = 450,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0910",
            ["sibling_north"] = "n_0809",
            ["sibling_south"] = "n_0811",
            ["sibling_west"] = "n_0710"
          }
        },
        {
          name = "n_0811",
          type = "",
          shape = "rectangle",
          x = 350,
          y = 500,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0911",
            ["sibling_north"] = "n_0810",
            ["sibling_south"] = "n_0812",
            ["sibling_west"] = "n_0711"
          }
        },
        {
          name = "n_0812",
          type = "",
          shape = "rectangle",
          x = 350,
          y = 550,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0912",
            ["sibling_north"] = "n_0811",
            ["sibling_south"] = "n_0813",
            ["sibling_west"] = "n_0712"
          }
        },
        {
          name = "n_0813",
          type = "",
          shape = "rectangle",
          x = 350,
          y = 600,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0913",
            ["sibling_north"] = "n_0812",
            ["sibling_south"] = "n_0814",
            ["sibling_west"] = "n_0713"
          }
        },
        {
          name = "n_0814",
          type = "",
          shape = "rectangle",
          x = 350,
          y = 650,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_0914",
            ["sibling_north"] = "n_0813",
            ["sibling_west"] = "n_0714"
          }
        },
        {
          name = "n_0901",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 0,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1001",
            ["sibling_south"] = "n_0902",
            ["sibling_west"] = "n_0801"
          }
        },
        {
          name = "n_0902",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 50,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1002",
            ["sibling_north"] = "n_0901",
            ["sibling_south"] = "n_0903",
            ["sibling_west"] = "n_0802"
          }
        },
        {
          name = "n_0905",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 200,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1005",
            ["sibling_north"] = "n_0904",
            ["sibling_south"] = "n_0906",
            ["sibling_west"] = "n_0805"
          }
        },
        {
          name = "n_0906",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 250,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1006",
            ["sibling_north"] = "n_0905",
            ["sibling_south"] = "n_0907",
            ["sibling_west"] = "n_0806"
          }
        },
        {
          name = "n_0907",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 300,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1007",
            ["sibling_north"] = "n_0906",
            ["sibling_south"] = "n_0908",
            ["sibling_west"] = "n_0807"
          }
        },
        {
          name = "n_0908",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 350,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1008",
            ["sibling_north"] = "n_0907",
            ["sibling_south"] = "n_0909",
            ["sibling_west"] = "n_0808"
          }
        },
        {
          name = "n_0909",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 400,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1009",
            ["sibling_north"] = "n_0908",
            ["sibling_south"] = "n_0910",
            ["sibling_west"] = "n_0809"
          }
        },
        {
          name = "n_0910",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 450,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1010",
            ["sibling_north"] = "n_0909",
            ["sibling_south"] = "n_0911",
            ["sibling_west"] = "n_0810"
          }
        },
        {
          name = "n_0911",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 500,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1011",
            ["sibling_north"] = "n_0910",
            ["sibling_south"] = "n_0912",
            ["sibling_west"] = "n_0811"
          }
        },
        {
          name = "n_0912",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 550,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1012",
            ["sibling_north"] = "n_0911",
            ["sibling_south"] = "n_0913",
            ["sibling_west"] = "n_0812"
          }
        },
        {
          name = "n_0913",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 600,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1013",
            ["sibling_north"] = "n_0912",
            ["sibling_south"] = "n_0914",
            ["sibling_west"] = "n_0813"
          }
        },
        {
          name = "n_0914",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 650,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1014",
            ["sibling_north"] = "n_0913",
            ["sibling_west"] = "n_0814"
          }
        },
        {
          name = "n_1001",
          type = "",
          shape = "rectangle",
          x = 450,
          y = 0,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1101",
            ["sibling_south"] = "n_1002",
            ["sibling_west"] = "n_0901"
          }
        },
        {
          name = "n_1006",
          type = "",
          shape = "rectangle",
          x = 450,
          y = 250,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1106",
            ["sibling_north"] = "n_1005",
            ["sibling_south"] = "n_1007",
            ["sibling_west"] = "n_0906"
          }
        },
        {
          name = "n_1007",
          type = "",
          shape = "rectangle",
          x = 450,
          y = 300,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1107",
            ["sibling_north"] = "n_1006",
            ["sibling_south"] = "n_1008",
            ["sibling_west"] = "n_0907"
          }
        },
        {
          name = "n_1008",
          type = "",
          shape = "rectangle",
          x = 450,
          y = 350,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1108",
            ["sibling_north"] = "n_1007",
            ["sibling_south"] = "n_1009",
            ["sibling_west"] = "n_0908"
          }
        },
        {
          name = "n_1009",
          type = "",
          shape = "rectangle",
          x = 450,
          y = 400,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1109",
            ["sibling_north"] = "n_1008",
            ["sibling_south"] = "n_1010",
            ["sibling_west"] = "n_0909"
          }
        },
        {
          name = "n_1010",
          type = "",
          shape = "rectangle",
          x = 450,
          y = 450,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1110",
            ["sibling_north"] = "n_1009",
            ["sibling_south"] = "n_1011",
            ["sibling_west"] = "n_0910"
          }
        },
        {
          name = "n_1011",
          type = "",
          shape = "rectangle",
          x = 450,
          y = 500,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1111",
            ["sibling_north"] = "n_1010",
            ["sibling_south"] = "n_1012",
            ["sibling_west"] = "n_0911"
          }
        },
        {
          name = "n_1012",
          type = "",
          shape = "rectangle",
          x = 450,
          y = 550,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1112",
            ["sibling_north"] = "n_1011",
            ["sibling_south"] = "n_1013",
            ["sibling_west"] = "n_0912"
          }
        },
        {
          name = "n_1013",
          type = "",
          shape = "rectangle",
          x = 450,
          y = 600,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1113",
            ["sibling_north"] = "n_1012",
            ["sibling_south"] = "n_1014",
            ["sibling_west"] = "n_0913"
          }
        },
        {
          name = "n_1014",
          type = "",
          shape = "rectangle",
          x = 450,
          y = 650,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1114",
            ["sibling_north"] = "n_1013",
            ["sibling_west"] = "n_0914"
          }
        },
        {
          name = "n_1101",
          type = "",
          shape = "rectangle",
          x = 500,
          y = 0,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1201",
            ["sibling_south"] = "n_1102",
            ["sibling_west"] = "n_1001"
          }
        },
        {
          name = "n_1106",
          type = "",
          shape = "rectangle",
          x = 500,
          y = 250,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1206",
            ["sibling_north"] = "n_1105",
            ["sibling_south"] = "n_1107",
            ["sibling_west"] = "n_1006"
          }
        },
        {
          name = "n_1107",
          type = "",
          shape = "rectangle",
          x = 500,
          y = 300,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1207",
            ["sibling_north"] = "n_1106",
            ["sibling_south"] = "n_1108",
            ["sibling_west"] = "n_1007"
          }
        },
        {
          name = "n_1108",
          type = "",
          shape = "rectangle",
          x = 500,
          y = 350,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1208",
            ["sibling_north"] = "n_1107",
            ["sibling_south"] = "n_1109",
            ["sibling_west"] = "n_1008"
          }
        },
        {
          name = "n_1109",
          type = "",
          shape = "rectangle",
          x = 500,
          y = 400,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1209",
            ["sibling_north"] = "n_1108",
            ["sibling_south"] = "n_1110",
            ["sibling_west"] = "n_1009"
          }
        },
        {
          name = "n_1110",
          type = "",
          shape = "rectangle",
          x = 500,
          y = 450,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1210",
            ["sibling_north"] = "n_1109",
            ["sibling_south"] = "n_1111",
            ["sibling_west"] = "n_1010"
          }
        },
        {
          name = "n_1111",
          type = "",
          shape = "rectangle",
          x = 500,
          y = 500,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1211",
            ["sibling_north"] = "n_1110",
            ["sibling_south"] = "n_1112",
            ["sibling_west"] = "n_1011"
          }
        },
        {
          name = "n_1112",
          type = "",
          shape = "rectangle",
          x = 500,
          y = 550,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1212",
            ["sibling_north"] = "n_1111",
            ["sibling_south"] = "n_1113",
            ["sibling_west"] = "n_1012"
          }
        },
        {
          name = "n_1113",
          type = "",
          shape = "rectangle",
          x = 500,
          y = 600,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1213",
            ["sibling_north"] = "n_1112",
            ["sibling_south"] = "n_1114",
            ["sibling_west"] = "n_1013"
          }
        },
        {
          name = "n_1114",
          type = "",
          shape = "rectangle",
          x = 500,
          y = 650,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1214",
            ["sibling_north"] = "n_1113",
            ["sibling_west"] = "n_1014"
          }
        },
        {
          name = "n_1201",
          type = "",
          shape = "rectangle",
          x = 550,
          y = 0,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1301",
            ["sibling_south"] = "n_1202",
            ["sibling_west"] = "n_1101"
          }
        },
        {
          name = "n_1202",
          type = "",
          shape = "rectangle",
          x = 550,
          y = 50,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1302",
            ["sibling_north"] = "n_1201",
            ["sibling_south"] = "n_1203",
            ["sibling_west"] = "n_1102"
          }
        },
        {
          name = "n_1203",
          type = "",
          shape = "rectangle",
          x = 550,
          y = 100,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1303",
            ["sibling_north"] = "n_1202",
            ["sibling_south"] = "n_1204",
            ["sibling_west"] = "n_1103"
          }
        },
        {
          name = "n_1204",
          type = "",
          shape = "rectangle",
          x = 550,
          y = 150,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1304",
            ["sibling_north"] = "n_1203",
            ["sibling_south"] = "n_1205",
            ["sibling_west"] = "n_1104"
          }
        },
        {
          name = "n_1205",
          type = "",
          shape = "rectangle",
          x = 550,
          y = 200,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1305",
            ["sibling_north"] = "n_1204",
            ["sibling_south"] = "n_1206",
            ["sibling_west"] = "n_1105"
          }
        },
        {
          name = "n_1206",
          type = "",
          shape = "rectangle",
          x = 550,
          y = 250,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1306",
            ["sibling_north"] = "n_1205",
            ["sibling_south"] = "n_1207",
            ["sibling_west"] = "n_1106"
          }
        },
        {
          name = "n_1207",
          type = "",
          shape = "rectangle",
          x = 550,
          y = 300,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1307",
            ["sibling_north"] = "n_1206",
            ["sibling_south"] = "n_1208",
            ["sibling_west"] = "n_1107"
          }
        },
        {
          name = "n_1208",
          type = "",
          shape = "rectangle",
          x = 550,
          y = 350,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1308",
            ["sibling_north"] = "n_1207",
            ["sibling_south"] = "n_1209",
            ["sibling_west"] = "n_1108"
          }
        },
        {
          name = "n_1209",
          type = "",
          shape = "rectangle",
          x = 550,
          y = 400,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1309",
            ["sibling_north"] = "n_1208",
            ["sibling_south"] = "n_1210",
            ["sibling_west"] = "n_1109"
          }
        },
        {
          name = "n_1210",
          type = "",
          shape = "rectangle",
          x = 550,
          y = 450,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1310",
            ["sibling_north"] = "n_1209",
            ["sibling_south"] = "n_1211",
            ["sibling_west"] = "n_1110"
          }
        },
        {
          name = "n_1211",
          type = "",
          shape = "rectangle",
          x = 550,
          y = 500,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1311",
            ["sibling_north"] = "n_1210",
            ["sibling_south"] = "n_1212",
            ["sibling_west"] = "n_1111"
          }
        },
        {
          name = "n_1212",
          type = "",
          shape = "rectangle",
          x = 550,
          y = 550,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1312",
            ["sibling_north"] = "n_1211",
            ["sibling_south"] = "n_1213",
            ["sibling_west"] = "n_1112"
          }
        },
        {
          name = "n_1213",
          type = "",
          shape = "rectangle",
          x = 550,
          y = 600,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1313",
            ["sibling_north"] = "n_1212",
            ["sibling_south"] = "n_1214",
            ["sibling_west"] = "n_1113"
          }
        },
        {
          name = "n_1214",
          type = "",
          shape = "rectangle",
          x = 550,
          y = 650,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1314",
            ["sibling_north"] = "n_1213",
            ["sibling_west"] = "n_1114"
          }
        },
        {
          name = "n_1301",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 0,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1401",
            ["sibling_south"] = "n_1302",
            ["sibling_west"] = "n_1201"
          }
        },
        {
          name = "n_1302",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 50,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1402",
            ["sibling_north"] = "n_1301",
            ["sibling_south"] = "n_1303",
            ["sibling_west"] = "n_1202"
          }
        },
        {
          name = "n_1303",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 100,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1403",
            ["sibling_north"] = "n_1302",
            ["sibling_south"] = "n_1304",
            ["sibling_west"] = "n_1203"
          }
        },
        {
          name = "n_1304",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 150,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1404",
            ["sibling_north"] = "n_1303",
            ["sibling_south"] = "n_1305",
            ["sibling_west"] = "n_1204"
          }
        },
        {
          name = "n_1305",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 200,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1405",
            ["sibling_north"] = "n_1304",
            ["sibling_south"] = "n_1306",
            ["sibling_west"] = "n_1205"
          }
        },
        {
          name = "n_1306",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 250,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1406",
            ["sibling_north"] = "n_1305",
            ["sibling_south"] = "n_1307",
            ["sibling_west"] = "n_1206"
          }
        },
        {
          name = "n_1307",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 300,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1407",
            ["sibling_north"] = "n_1306",
            ["sibling_south"] = "n_1308",
            ["sibling_west"] = "n_1207"
          }
        },
        {
          name = "n_1308",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 350,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1408",
            ["sibling_north"] = "n_1307",
            ["sibling_south"] = "n_1309",
            ["sibling_west"] = "n_1208"
          }
        },
        {
          name = "n_1309",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 400,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1409",
            ["sibling_north"] = "n_1308",
            ["sibling_south"] = "n_1310",
            ["sibling_west"] = "n_1209"
          }
        },
        {
          name = "n_1310",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 450,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1410",
            ["sibling_north"] = "n_1309",
            ["sibling_south"] = "n_1311",
            ["sibling_west"] = "n_1210"
          }
        },
        {
          name = "n_1311",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 500,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1411",
            ["sibling_north"] = "n_1310",
            ["sibling_south"] = "n_1312",
            ["sibling_west"] = "n_1211"
          }
        },
        {
          name = "n_1312",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 550,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1412",
            ["sibling_north"] = "n_1311",
            ["sibling_south"] = "n_1313",
            ["sibling_west"] = "n_1212"
          }
        },
        {
          name = "n_1313",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 600,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1413",
            ["sibling_north"] = "n_1312",
            ["sibling_south"] = "n_1314",
            ["sibling_west"] = "n_1213"
          }
        },
        {
          name = "n_1314",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 650,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_east"] = "n_1414",
            ["sibling_north"] = "n_1313",
            ["sibling_west"] = "n_1214"
          }
        },
        {
          name = "n_1401",
          type = "",
          shape = "rectangle",
          x = 650,
          y = 0,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_south"] = "n_1402",
            ["sibling_west"] = "n_1301"
          }
        },
        {
          name = "n_1402",
          type = "",
          shape = "rectangle",
          x = 650,
          y = 50,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_north"] = "n_1401",
            ["sibling_south"] = "n_1403",
            ["sibling_west"] = "n_1302"
          }
        },
        {
          name = "n_1403",
          type = "",
          shape = "rectangle",
          x = 650,
          y = 100,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_north"] = "n_1402",
            ["sibling_south"] = "n_1404",
            ["sibling_west"] = "n_1303"
          }
        },
        {
          name = "n_1404",
          type = "",
          shape = "rectangle",
          x = 650,
          y = 150,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_north"] = "n_1403",
            ["sibling_south"] = "n_1405",
            ["sibling_west"] = "n_1304"
          }
        },
        {
          name = "n_1405",
          type = "",
          shape = "rectangle",
          x = 650,
          y = 200,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_north"] = "n_1404",
            ["sibling_south"] = "n_1406",
            ["sibling_west"] = "n_1305"
          }
        },
        {
          name = "n_1406",
          type = "",
          shape = "rectangle",
          x = 650,
          y = 250,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_north"] = "n_1405",
            ["sibling_south"] = "n_1407",
            ["sibling_west"] = "n_1306"
          }
        },
        {
          name = "n_1407",
          type = "",
          shape = "rectangle",
          x = 650,
          y = 300,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_north"] = "n_1406",
            ["sibling_south"] = "n_1408",
            ["sibling_west"] = "n_1307"
          }
        },
        {
          name = "n_1408",
          type = "",
          shape = "rectangle",
          x = 650,
          y = 350,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_north"] = "n_1407",
            ["sibling_south"] = "n_1409",
            ["sibling_west"] = "n_1308"
          }
        },
        {
          name = "n_1409",
          type = "",
          shape = "rectangle",
          x = 650,
          y = 400,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_north"] = "n_1408",
            ["sibling_south"] = "n_1410",
            ["sibling_west"] = "n_1309"
          }
        },
        {
          name = "n_1410",
          type = "",
          shape = "rectangle",
          x = 650,
          y = 450,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_north"] = "n_1409",
            ["sibling_south"] = "n_1411",
            ["sibling_west"] = "n_1310"
          }
        },
        {
          name = "n_1411",
          type = "",
          shape = "rectangle",
          x = 650,
          y = 500,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_north"] = "n_1410",
            ["sibling_south"] = "n_1412",
            ["sibling_west"] = "n_1311"
          }
        },
        {
          name = "n_1412",
          type = "",
          shape = "rectangle",
          x = 650,
          y = 550,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_north"] = "n_1411",
            ["sibling_south"] = "n_1413",
            ["sibling_west"] = "n_1312"
          }
        },
        {
          name = "n_1413",
          type = "",
          shape = "rectangle",
          x = 650,
          y = 600,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_north"] = "n_1412",
            ["sibling_south"] = "n_1414",
            ["sibling_west"] = "n_1313"
          }
        },
        {
          name = "n_1414",
          type = "",
          shape = "rectangle",
          x = 650,
          y = 650,
          width = 50,
          height = 50,
          visible = true,
          properties = {
            ["sibling_north"] = "n_1413",
            ["sibling_west"] = "n_1314"
          }
        }
      }
    },
    {
      type = "tilelayer",
      name = "Tile Layer 1",
      x = 0,
      y = 0,
      width = 14,
      height = 14,
      visible = true,
      opacity = 1,
      properties = {},
      encoding = "lua",
      data = {
        1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        11, 12, 25, 26, 23, 24, 0, 0, 0, 7, 8, 0, 0, 0,
        1, 2, 35, 36, 23, 24, 0, 7, 8, 17, 18, 0, 0, 0,
        11, 12, 25, 26, 0, 0, 0, 17, 18, 5, 6, 0, 0, 0,
        3, 4, 35, 36, 0, 0, 0, 0, 0, 15, 16, 0, 0, 0,
        13, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    }
  }
}
