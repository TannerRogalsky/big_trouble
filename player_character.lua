PlayerCharacter = class('PlayerCharacter', MapEntity)
PlayerCharacter.static.z = 1

function PlayerCharacter:initialize(parent, x, y, width, height)
  MapEntity.initialize(self, parent, x, y, width, height, PlayerCharacter.z)

  self.angle = 0

  local _, _, pixel_width, pixel_height = self:world_bounds()
  self.render_surface = g.newCanvas(pixel_width, pixel_height)
  g.setCanvas(self.render_surface)
  g.setColor(COLORS.red:rgb())
  g.rectangle("fill", 0, 0, pixel_width, pixel_height)
  g.setColor(COLORS.black:rgb())
  g.line(pixel_width / 2, 0, pixel_width / 2, pixel_height / 2)
  g.setCanvas()

  self.heart_weight = 3
  self.has_scales = false

  self.animations = {}
  for index, direction in ipairs(Direction.list) do
    local image = game.preloaded_image["walk" .. direction.cardinal_name:lower() .. ".png"]
    image:setFilter("nearest", "nearest")
    self.animations[direction] = newAnimation(image, 16, 16, 0.1, 4)
  end
  self.animation = self.animations[Direction.SOUTH]

  self.controls = {
    keyboard = {
      update = {
        up = self.keyupdate_up,
        down = self.keyupdate_down,
        left = self.keyupdate_left,
        right = self.keyupdate_right
      },
      pressed = {
        -- up = self.keypressed_up,
        -- down = self.keypressed_down,
        -- left = self.keypressed_left,
        -- right = self.keypressed_right
      }
    }, joystick = {
      up = self.keyupdate_up,
      down = self.keyupdate_down,
      left = self.keyupdate_left,
      right = self.keyupdate_right
    }
  }

  self.triggers_done = {}
end

function PlayerCharacter:delta_heart(weight_delta)
  self.heart_weight = math.clamp(1, self.heart_weight + weight_delta, 5)
  return self.heart_weight
end

function PlayerCharacter:update(dt)
  local actions = self.controls.keyboard.update
  for key,action in pairs(actions) do
    if love.keyboard.isDown(key) then action(self) end
  end

  actions = self.controls.joystick
  for key,action in pairs(actions) do
    if love.joystick.isDown(1, joy_to_key[key]) then action(self) end
  end

  if self.movement_tween then
    self.animation:update(dt)
  end
end

function PlayerCharacter:keypressed(key, unicode)
  local action = self.controls.keyboard.pressed[key]
  if is_func(action) then action(self) end
end

function PlayerCharacter:render()
  local x, y, width, height = self:world_bounds()
  g.setColor(COLORS.white:rgb())
  -- g.draw(self.render_surface, x + width / 2, y + height / 2, self.angle, 1, 1, width / 2, height / 2)
  self.animation:draw(x, y - 4)
end


function PlayerCharacter:keypressed_up()
  self:request_movement(Direction.NORTH)
end

function PlayerCharacter:keypressed_down()
  self:request_movement(Direction.SOUTH)
end

function PlayerCharacter:keypressed_left()
  self:request_movement(Direction.WEST)
end

function PlayerCharacter:keypressed_right()
  self:request_movement(Direction.EAST)
end

function PlayerCharacter:keyupdate_up()
  self:request_movement(Direction.NORTH)
end

function PlayerCharacter:keyupdate_down()
  self:request_movement(Direction.SOUTH)
end

function PlayerCharacter:keyupdate_left()
  self:request_movement(Direction.WEST)
end

function PlayerCharacter:keyupdate_right()
  self:request_movement(Direction.EAST)
end

function PlayerCharacter:request_movement(direction)
  local current_tile = self.parent.grid:g(self.x, self.y)
  local new_tile = current_tile.siblings[direction]

  if new_tile and self.movement_tween == nil then
    self.animation = self.animations[direction]
    if is_func(current_tile.on_exit) then current_tile:on_exit() end
    -- self:move(direction:unpack())

    local delta_x, delta_y = direction.x * self.parent.tile_width, direction.y * self.parent.tile_height
    local new_x, new_y = self.world_x + delta_x, self.world_y + delta_y
    local _, _, bw, bh = self:world_bounds()

    -- bounds check
    if new_x >= 0 and new_x + bw < self.parent.pixel_width and
       new_y >= 0 and new_y + bh < self.parent.pixel_height then

      self.angle = math.atan2(delta_y, delta_x) + math.pi / 2
      self.movement_tween = tween(0.3, self, {world_x = new_x, world_y = new_y}, "linear", function()
        self:remove_from_grid()
        self.x, self.y = new_tile.x, new_tile.y
        self:insert_into_grid()
        self.movement_tween = nil
        if is_func(new_tile.on_enter) then new_tile:on_enter() end
      end)
    end
  elseif self.movement_tween == nil then
    self.angle = math.atan2(direction.y, direction.x) + math.pi / 2
    self.animation = self.animations[direction]
  end
end

function PlayerCharacter:request_pixel_movement(direction)
  local dx, dy = direction:unpack()
  self:move_by_pixel(dx * 2, dy * 2)
end
