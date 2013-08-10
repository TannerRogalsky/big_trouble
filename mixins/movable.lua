-- this should probably only be used by a map entity.
-- not sure what else you would use it on anyway

local Movable = {
  move = function(self, delta_x, delta_y)
    self:move_by_pixel(delta_x * self.parent.tile_width, delta_y * self.parent.tile_height)
  end,

  move_to = function(self, x, y)
    self:move(x - self.x, y - self.y)
  end,

  move_by_pixel = function(self, delta_x, delta_y)
    local new_x, new_y = self.world_x + delta_x, self.world_y + delta_y
    local _, _, bw, bh = self:world_bounds()

    -- bounds check
    if new_x >= 0 and new_x + bw < self.parent.width * self.parent.tile_width and
       new_y >= 0 and new_y + bh < self.parent.height * self.parent.tile_height then

      -- new grid coords are got from new pixel coords + half of a tile
      local new_grid_x, new_grid_y = self.parent:world_to_grid_coords(new_x + self.parent.tile_width / 2, new_y + self.parent.tile_height / 2)

      -- they're different from our current grid coords
      if new_grid_x ~= self.x or new_grid_y ~= self.y then
        self:remove_from_grid()
        self.x, self.y = new_grid_x, new_grid_y
        self:insert_into_grid()
      end
      self.world_x, self.world_y = new_x, new_y
      self.angle = math.atan2(delta_y, delta_x)

      if self.physics_body then
        self.physics_body:move(delta_x, delta_y)
      end
    end
  end
}

return Movable
