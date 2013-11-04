love.filesystem.load('requirements.lua')()

function love.load()
  game = Game:new()
  local bg_music = love.audio.newSource("sounds/bg_music.ogg")
  bg_music:play()
  bg_music:setLooping(true)
end

function love.update(dt)
  game:update(dt)
  cron.update(dt)
  tween.update(dt)
  loveframes.update(dt)
  DialogueSystem.update(dt)
end

function love.mousepressed(x, y, button)
  game:mousepressed(x, y, button)
  loveframes.mousepressed(x, y, button)
end

function love.mousereleased(x, y, button)
  game:mousereleased(x, y, button)
  loveframes.mousereleased(x, y, button)
end

function love.keypressed(key, unicode)
  game:keypressed(key, unicode)
  loveframes.keypressed(key, unicode)
  DialogueSystem.keypressed(key, unicode)

  if key == "escape" then
    love.event.push("quit")
  end
end

function love.keyreleased(key, unicode)
  game:keyreleased(key, unicode)
  loveframes.keyreleased(key, unicode)
end

function love.joystickpressed(joystick, button)
  print(button)
  game:joystickpressed(joystick, button)
  DialogueSystem.joystickpressed(joystick, button)
end

function love.joystickreleased(joystick, button)
  game:joystickreleased(joystick, button)
end

function love.draw()
  game:render()
  loveframes.draw()
  DialogueSystem.render()
end

function love.focus(has_focus)
  game:focus(has_focus)
end

function love.quit()
  game:quit()
end
