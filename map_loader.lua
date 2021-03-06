MapLoader = class('MapLoader', Base)
MapLoader.static.maps_folder = "levels/"

function MapLoader.load(map_name)
  local path = MapLoader.maps_folder .. map_name
  local map_data = require(path)
  local map_area = MapArea:new(0, 0, map_data.width, map_data.height, map_data.tilewidth, map_data.tileheight)

  -- grab the tileset info from the data and build it
  local tileset_quads = {}

  local tileset_data = map_data.tilesets[1]
  tileset_data.image = g.newImage(MapLoader.fix_relative_path(tileset_data.image))
  for y = 0, tileset_data.imageheight, tileset_data.tileheight do
    for x = 0, tileset_data.imagewidth, tileset_data.tilewidth do
      local tile_width, tile_height = tileset_data.tilewidth, tileset_data.tileheight
      local image_width, image_height = tileset_data.imagewidth, tileset_data.imageheight
      table.insert(tileset_quads, g.newQuad(x, y, tile_width, tile_height, image_width, image_height))

      if y == 0 then
        print(x, y, #tileset_quads)
      end
    end
  end

  -- layers by type and name
  local layers = {}
  for _,layer in ipairs(map_data.layers) do
    if layers[layer.type] == nil then layers[layer.type] = {} end
    layers[layer.type][layer.name] = layer
  end

  -- nodes by name
  local nodes = {}
  for index,tile_data in ipairs(layers.objectgroup["Nodes"].objects) do
    nodes[tile_data.name] = tile_data
  end

  for index,tile_data in ipairs(layers.objectgroup["Nodes"].objects) do
    local grid_x, grid_y = tile_data.x / map_data.tilewidth + 1, tile_data.y / map_data.tileheight + 1
    local tile = map_area.grid:g(grid_x, grid_y)

    for _,direction in ipairs(Direction.list) do
      local sibling_name = tile_data.properties["sibling_"  .. direction.cardinal_name:lower()]

      if sibling_name and nodes[sibling_name] then
        local sibling_x, sibling_y = MapLoader.parse_grid_coords(sibling_name)
        local sibling = map_area.grid:g(sibling_x, sibling_y)

        tile.siblings[direction] = sibling
      end
    end
  end

  -- tile layers
  map_area.tile_layers = {}
  g.setColor(COLORS.white:rgb())
  for name, tiles_metadata in pairs(layers.tilelayer) do
    local canvas = g.newCanvas(map_area.width * map_area.tile_width, map_area.height * map_area.tile_height)
    g.setCanvas(canvas)
    local data_index = 0
    for x=0,tiles_metadata.width - 1 do
      for y=0,tiles_metadata.height - 1 do
        data_index = data_index + 1
        local quad_index = tiles_metadata.data[data_index]
        local quad = tileset_quads[quad_index]

        if quad then
          g.drawq(tileset_data.image, quad, x * map_area.tile_width, y * map_area.tile_height)
        end
      end
    end
    g.setCanvas()
    table.insert(map_area.tile_layers, canvas)
  end

  return map_area
end

function MapLoader.parse_grid_coords(sibling_name)
  local x, y = sibling_name:match("n_(..)(..)")
  return tonumber(x), tonumber(y)
end

function MapLoader.fix_relative_path(asset_path)
  return asset_path:gsub(".*/images", "images")
end
