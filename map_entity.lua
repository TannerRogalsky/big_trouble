MapEntity = class('MapEntity', Base):include(Stateful)

function MapEntity:initialize(parent, x, y, width, height, z)
  Base.initialize(self)
  assert(instanceOf(Map, parent))
  assert(is_num(x) and is_num(y))
  assert(is_num(width) or width == nil)
  assert(is_num(height) or height == nil)
  assert(is_num(z) or z == nil)

  self.parent = parent
  self.x, self.y = x, y
  self.world_x, self.world_y = self.parent:grid_to_world_coords(self.x, self.y)
  self.width, self.height = width or 1, height or 1
  self.z = z or 1
end

function MapEntity:insert_into_grid()
  for _, _, tile in self.parent:each(self.x, self.y, self.width, self.height) do
    tile.content[self.id] = self
  end
end

function MapEntity:remove_from_grid()
  for _, _, tile in self.parent:each(self.x, self.y, self.width, self.height) do
    tile.content[self.id] = nil
  end
end

function MapEntity:world_bounds()
  local pixel_width, pixel_height = self.parent.tile_width * self.width - 1, self.parent.tile_height * self.height - 1
  return self.world_x, self.world_y, pixel_width, pixel_height
end

function MapEntity:world_center()
  return self.world_x + self.width * self.parent.tile_width / 2, self.world_y + self.height * self.parent.tile_height / 2
end

function MapEntity:grid_center()
  return self.x + math.floor(self.width / 2), self.y + math.floor(self.height / 2)
end

function MapEntity:contains(world_x, world_y)
  return world_x > self.world_x and world_y > self.world_y and
     world_x < self.world_x + self.width * self.parent.tile_width and
     world_y < self.world_y + self.height * self.parent.tile_height
end

function MapEntity:__lt(other)
  if self.z < other.z then return true
  elseif self.z == other.z and self.id < other.id then return true
  else return false
  end
end

function MapEntity:__le(other)
  return self < other
end
