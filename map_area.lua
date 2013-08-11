MapArea = class('MapArea', Base)
MapArea.render_queue_depth = 3 -- this is just a best guess of how much map entities overlap

function MapArea:initialize(x, y, width, height, tile_width, tile_height)
  Base.initialize(self)
  assert(is_num(x) and is_num(y) and is_num(width) and is_num(height))
  assert(is_num(tile_width) and is_num(tile_width))

  self.x, self.y = x, y
  self.width, self.height = width, height
  self.tile_width, self.tile_height = tile_width, tile_height
  self.pixel_width = self.width * self.tile_width
  self.pixel_height = self.height * self.tile_height

  self.render_queue = Skiplist.new(self.width * self.height * MapArea.render_queue_depth)
  self.entity_list = {}
  self.rooms = {}

  self.grid = Grid:new(self.width, self.height)
  self.each = function(self, ...) return self.grid:each(...) end
  for x,y,_ in self.grid:each() do
    self.grid[x][y] = MapTile:new(self, x, y)
  end

  -- grid a* functions
  local function adjacency(tile)
    return pairs(tile.siblings)
  end

  local function cost(from, to)
    return to:cost_to_move_to(from)
  end

  local function distance(from, goal)
    return math.abs(goal.x - from.x) + math.abs(goal.y - from.y)
  end

  self.grid_astar = AStar:new(adjacency, cost, distance)
end

function MapArea:update(dt)
end

function MapArea:render()
  g.setColor(COLORS.white:rgb())
  -- g.draw(self.tileset_data.image, 0, 0)
  -- local index = 1
  -- for y = 0, self.tileset_data.imageheight, self.tileset_data.tileheight do
  --   for x = 0, self.tileset_data.imagewidth, self.tileset_data.tilewidth do
  --     -- g.newQuad(x, y, tile_width, tile_height, image_width, image_height)
  --     local quad = self.tileset_quads[index]
  --     if quad then
  --       g.drawq(self.tileset_data.image, self.tileset_quads[index], x, y)
  --       g.print(index, x, y, 0, 0.5)
  --       index = index + 1
  --     end
  --   end
  -- end


  for _, layer in ipairs(self.tile_layers) do
    g.draw(layer, 0, 0)
  end

  for index,entity in self.render_queue:ipairs() do
    entity:render()
  end
end

function MapArea:add_entity(entity)
  assert(instanceOf(MapEntity, entity))
  entity:insert_into_grid()
  self.entity_list[entity.id] = entity
  self.render_queue:insert(entity)
  if is_func(entity.add_to_map) then entity:add_to_map(self) end
end

function MapArea:remove_entity(entity)
  assert(instanceOf(MapEntity, entity))
  entity:remove_from_grid()
  self.entity_list[entity.id] = nil
  self.render_queue:delete(entity)
  if is_func(entity.remove_from_map) then entity:remove_from_map(self) end
end

function MapArea:find_path(x1, y1, x2, y2)
  local start_tile, end_tile = self.grid:g(x1, y1), self.grid:g(x2, y2)
  return self.grid_astar:find_path(start_tile, end_tile)
end

function MapArea:grid_to_world_coords(x, y)
  return (x - 1) * self.tile_width + self.x, (y - 1) * self.tile_height + self.y
end

function MapArea:world_to_grid_coords(x, y)
  return math.floor(x / self.tile_width + self.x + 1), math.floor(y / self.tile_height - self.y + 1)
end

