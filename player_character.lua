PlayerCharacter = class('PlayerCharacter', MapEntity)
PlayerCharacter.static.z = 1

function PlayerCharacter:initialize(parent, x, y, width, height)
  MapEntity.initialize(self, parent, x, y, width, height, PlayerCharacter.z)

  self.controls = {
    keyboard = {
      update = {
      },
      pressed = {
        up = self.keypressed_up,
        down = self.keypressed_down,
        left = self.keypressed_left,
        right = self.keypressed_right
      }
    }
  }
end

function PlayerCharacter:update(dt)
  local actions = self.controls.keyboard.update
  for key,action in pairs(actions) do
    if love.keyboard.isDown(key) then action(self) end
  end
end

function PlayerCharacter:keypressed(key, unicode)
  local action = self.controls.keyboard.pressed[key]
  if is_func(action) then action(self) end
end

function PlayerCharacter:render()
  g.setColor(COLORS.red:rgb())
  g.rectangle("fill", self:world_bounds())
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

function PlayerCharacter:request_movement(direction)
  local current_tile = self.parent.grid:g(self.x, self.y)
  local new_tile = current_tile.siblings[direction]

  if new_tile then
    if is_func(current_tile.on_exit) then current_tile:on_exit() end
    self:move(direction:unpack())
    if is_func(new_tile.on_enter) then new_tile:on_enter() end
  end
end
