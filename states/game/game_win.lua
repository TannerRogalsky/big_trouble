local Win = Game:addState('Win')

function Win:enteredState()
  self.bg = self.preloaded_image["romjam_win.png"]
  self.scalex = g.getWidth() / self.bg:getWidth()
  self.scaley = g.getHeight() / self.bg:getHeight()

  self.text = "Congratulations! You Win!"

  -- self.temp_font = g.newFont("fonts/xerxes-regular.ttf", 128)
end

function Win:render()
  g.setColor(COLORS.white:rgb())
  g.draw(self.bg, 0, 0, 0, self.scalex, self.scaley)

  -- g.setFont(self.temp_font)
  -- g.setColor(COLORS.black:rgb())
  -- g.printf(self.text, 0, g.getHeight() / 2, g.getWidth(), "center")
  -- g.setFont(self.default_font)

  g.setColor(COLORS.white:rgb())
  g.printf("Press 'Start' to try again.", 0, g.getHeight() - 80, g.getWidth(), "center")
end

function Win:keyreleased(key, unicode)
  if key == "return" then
    self:gotoState("Menu")
  end
end

function Win:joystickreleased(joystick, button)
  local key = joy_to_key[button]
  if key == "Start" then
    self:gotoState("Menu")
  end
end

function Win:exitedState()
  self.bg = nil
  self.scalex = nil
  self.scaley = nil
  self.temp_font = nil
end

return Win
