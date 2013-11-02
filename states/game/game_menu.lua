local Menu = Game:addState('Menu')

function Menu:enteredState()
  self.menu_image = self.preloaded_image["title2_large.png"]
end

function Menu:render()
  g.setColor(COLORS.white:rgb())
  g.draw(self.menu_image, 0, 0)
end

function Menu:keyreleased()
  self:gotoState("Main")
end

function Menu:joystickreleased()
  self:gotoState("Main")
end

function Menu:mousereleased()
  self:gotoState("Main")
end

function Menu:exitedState()
  self.menu_image = nil
end

return Menu
