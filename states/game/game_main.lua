local Main = Game:addState('Main')

function Main:enteredState()
  Collider = HC(100, self.on_start_collide, self.on_stop_collide)

  self.map = MapLoader.load("level1")

  self.camera:setScale(0.25, 0.25)

  local cbounds = self.camera.bounds
  cbounds.negative_x = 0
  cbounds.negative_y = 0
  -- cbounds.positive_x = self.map.width * self.map.tile_width - g.getWidth()
  -- cbounds.positive_y = self.map.height * self.map.tile_height - g.getHeight()

  self.character = PlayerCharacter:new(self.map, 3, 2, 1, 1)
  self.map:add_entity(self.character)

  self.overlay = g.newCanvas(g.getWidth(), g.getHeight())
  self.light = g.newImage("images/gradient_overlay.png")

  local bg_music = love.audio.newSource("sounds/bg_music.ogg")
  -- bg_music:play()
  bg_music:setLooping(true)
end

function Main:update(dt)
  self.character:update(dt)
end

function Main:render()
  self.camera:set()

  local cx, cy = self.character:world_bounds()

  self.camera:setPosition(cx - (g.getWidth() * self.camera.scaleX) / 2, cy - (g.getHeight() * self.camera.scaleY) / 2)
  self.map:render()

  self.camera:unset()

  self.overlay:clear()
  g.setCanvas(self.overlay)

  g.setColor(COLORS.black:rgb())
  g.rectangle("fill", 0, 0, g.getWidth(), g.getHeight())

  g.setColor(COLORS.white:rgb())
  g.draw(self.light, cx / 0.25 - 96, cy / 0.25 - 96)

  g.draw(self.light, 200, 200)
  g.setCanvas()

  g.setBlendMode("multiplicative")
  g.draw(self.overlay)
  g.setBlendMode("alpha")
end

function Main:mousepressed(x, y, button)
end

function Main:mousereleased(x, y, button)
end

function Main:keypressed(key, unicode)
  self.character:keypressed(key, unicode)
end

function Main:keyreleased(key, unicode)
end

function Main:joystickpressed(joystick, button)
end

function Main:joystickreleased(joystick, button)
end

function Main:focus(has_focus)
end

-- shape_one and shape_two are the colliding shapes. mtv_x and mtv_y define the minimum translation vector,
-- i.e. the direction and magnitude shape_one has to be moved so that the collision will be resolved.
-- Note that if one of the shapes is a point shape, the translation vector will be invalid.
function Main.on_start_collide(dt, shape_one, shape_two, mtv_x, mtv_y)
  local object_one, object_two = shape_one.parent, shape_two.parent

  if object_one and is_func(object_one.on_collide) then
    object_one:on_collide(dt, shape_one, shape_two, mtv_x, mtv_y)
  end

  if object_two and is_func(object_two.on_collide) then
    object_two:on_collide(dt, shape_one, shape_two, mtv_x, mtv_y)
  end
end

function Main.on_stop_collide(dt, shape_one, shape_two)
end

function Main:exitedState()
  Collider:clear()
  Collider = nil
end

return Main
