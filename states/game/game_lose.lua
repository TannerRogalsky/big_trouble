local Lose = Game:addState('Lose')

function Lose:enteredState()
end

function Lose:render()
  g.setColor(COLORS.white:rgb())
  g.print("lose", 100, 100)
end

function Lose:exitedState()
end

return Lose
