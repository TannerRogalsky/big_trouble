local Win = Game:addState('Win')

function Win:enteredState()
  self.map:clear_entities()

  self.bg = self.preloaded_image["barque_of_ra.jpg"]
  self.scalex = g.getWidth() / self.bg:getWidth()
  self.scaley = g.getHeight() / self.bg:getHeight()

  self.text = "Congratulations! You Win!"

  self.temp_font = g.newFont("fonts/xerxes-regular.ttf", 128)
end

function Win:render()
  g.setColor(COLORS.white:rgb())
  g.draw(self.bg, 0, 0, 0, self.scalex, self.scaley)

  g.setFont(self.temp_font)
  g.setColor(COLORS.black:rgb())
  g.printf(self.text, 0, g.getHeight() / 2, g.getWidth(), "center")
  g.setFont(self.default_font)

  g.printf("Press Enter to try again.", 0, g.getHeight() - 80, g.getWidth(), "center")
end

function Win:keypressed(key, unicode)
  if key == "return" then
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
