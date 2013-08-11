local NotMoving = PlayerCharacter:addState('NotMoving')

function NotMoving:enteredState()
  self.old_controls = self.controls
  self.controls = {
    keyboard = {
      update = {
        -- up = self.keyupdate_up,
        -- down = self.keyupdate_down,
        -- left = self.keyupdate_left,
        -- right = self.keyupdate_right
      },
      pressed = {
        -- up = self.keypressed_up,
        -- down = self.keypressed_down,
        -- left = self.keypressed_left,
        -- right = self.keypressed_right
      }
    }
  }
end

function NotMoving:exitedState()
  self.controls = self.old_controls
  self.old_controls = nil
end

return NotMoving
