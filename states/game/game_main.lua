local Main = Game:addState('Main')

function Main:enteredState()
  Collider = HC(100, self.on_start_collide, self.on_stop_collide)

  -- self.heartbeat = love.audio.newSource("sounds/Heartbeat.wav")
  -- self.heartbeat:play()
  -- self.heartbeat:setLooping(true)

  if self.map == nil then
    self.map = MapLoader.load("level3")
  end

  self.camera:setScale(0.25, 0.25)

  local cbounds = self.camera.bounds
  cbounds.negative_x = 0
  cbounds.negative_y = 0
  -- cbounds.positive_x = self.map.width * self.map.tile_width - g.getWidth()
  -- cbounds.positive_y = self.map.height * self.map.tile_height - g.getHeight()

  self.character = PlayerCharacter:new(self.map, 13, 2, 1, 1)
  self.map:add_entity(self.character)

  self.overlay = g.newCanvas(g.getWidth(), g.getHeight())
  self.light = game.preloaded_image["gradient_overlay.png"]

  game.preloaded_image["torch_left.png"]:setFilter("nearest", "nearest")
  game.preloaded_image["torch_middle.png"]:setFilter("nearest", "nearest")
  game.preloaded_image["torch_right.png"]:setFilter("nearest", "nearest")
  self.torch_animations = {
    left = newAnimation(game.preloaded_image["torch_left.png"], 16, 16, 0.1, 8),
    middle = newAnimation(game.preloaded_image["torch_middle.png"], 16, 16, 0.1, 8),
    right = newAnimation(game.preloaded_image["torch_right.png"], 16, 16, 0.1, 8)
  }

  self.heart_animations = {}
  for i=1,5 do
    local image = game.preloaded_image["scale (" .. i .. ").png"]
    image:setFilter("nearest", "nearest")
    local animation = newAnimation(image, 32, 32, 0.2, 5)
    self.heart_animations[i] = animation
  end
end

function Main:update(dt)
  self.character:update(dt)
  local cx, cy = self.character:world_bounds()
  self.camera:setPosition(cx - (g.getWidth() * self.camera.scaleX) / 2, cy - (g.getHeight() * self.camera.scaleY) / 2)

  for _,torch_animation in pairs(self.torch_animations) do
    torch_animation:update(dt)
  end

  for _,heart_animation in pairs(self.heart_animations) do
    heart_animation:update(dt)
  end
end

function Main:render()
  self.camera:set()

  self.map:render()

  for type,torches in pairs(self.map.torches) do
    for _,torch in ipairs(torches) do
      local x, y = torch.x, torch.y
      local animation = self.torch_animations[type]
      local iw, ih = 16, 16
      animation:draw(x, y)
    end
  end

  self.camera:unset()

  -- light mask
  self.overlay:clear()
  g.setCanvas(self.overlay)

  g.setColor(0, 0, 0, 200)
  g.rectangle("fill", 0, 0, g.getWidth(), g.getHeight())

  g.setColor(COLORS.white:rgb())
  local cx, cy = self.character:world_bounds()
  local iw, ih = self.light:getWidth(), self.light:getHeight()
  g.draw(self.light, cx / 0.25 - (iw / 2 - self.map.tile_width / 0.5) - self.camera.x / 0.25, cy / 0.25 - (ih / 2 - self.map.tile_height / 0.5) - self.camera.y / 0.25)

  g.draw(self.map.tile_layers["Light Mask"], -self.camera.x / self.camera.scaleX, -self.camera.y / self.camera.scaleY, 0, 1/self.camera.scaleX, 1/self.camera.scaleY)
  g.setCanvas()

  g.setColor(COLORS.white:rgb())
  g.setBlendMode("multiplicative")
  g.draw(self.overlay)
  g.setBlendMode("alpha")

  if self.character.has_scales then
    -- heart ui
    g.setColor(COLORS.white:rgb())
    local heart_animation = self.heart_animations[self.character.heart_weight]
    local scale = 2
    local offset = 32
    heart_animation:draw(g.getWidth() - heart_animation.fw * scale - offset, offset, 0, scale, scale)
  end

  -- g.setColor(COLORS.green:rgb())
  -- g.print(love.timer.getFPS(), 0, 0)
end

function Main:mousepressed(x, y, button)
end

function Main:mousereleased(x, y, button)
end

function Main:keypressed(key, unicode)
  self.character:keypressed(key, unicode)
end

function Main:keyreleased(key, unicode)
  if key == "m" then
    self:gotoState("Menu")
  end
end

function Main:joystickpressed(joystick, button)
  -- print(joystick, button)
end

function Main:joystickreleased(joystick, button)
  -- print(joystick, button)
  if button == 6 then
    self:gotoState("Menu")
  end
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
  DialogueSystem.clear()
  Collider:clear()
  Collider = nil

  self.map:clear_entities()
end

return Main
