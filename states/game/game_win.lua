local Win = Game:addState('Win')

function Win:enteredState()
end

function Win:render()
  g.setColor(COLORS.white:rgb())
  g.print("win", 100, 100)
end

function Win:exitedState()
end

return Win
