local triggers = {}

function triggers.anubis_welcome(tile)
  local player = tile:get_first_content_of_type(PlayerCharacter)
  if player.triggers_done["anubis_welcome"] then return end
  player.triggers_done["anubis_welcome"] = true

  DialogueSystem.say(DialogueSystem.entities.Anubis,
    "Welcome to the Duat, mortal. You will need to navigate these trials before you are allowed into the afterlife.", {
    [" "] = {
      text = "Press Space to continue.",
      action = function()
        DialogueSystem.clear()
        DialogueSystem.say(DialogueSystem.entities.Anubis,
          "If you manage to make it to the end of your journey, your heart will be weighed against Maat, the feather-goddess of judgement. The guilt of sin will weigh on your heart. Be warned!", {
          [" "] = {
            text = "Press Space to continue.",
            action = function()
              DialogueSystem.clear()
            end
          }
        })
      end
    }
  })
end

function triggers.anubis_warn(tile)
  local player = tile:get_first_content_of_type(PlayerCharacter)
  DialogueSystem.say(DialogueSystem.entities.Anubis,
    "Some Gods will help you along your journey. But some (like Set) will try to trick you.", {
    [" "] = {
      text = "Press Space to continue.",
      action = function()
        DialogueSystem.clear()
      end
    }
  })
end

function triggers.set_riddle1(tile)
  local player = tile:get_first_content_of_type(PlayerCharacter)
  if player.triggers_done["set_riddle1"] then return end

  local function wrong_answer()
    DialogueSystem.clear()
    DialogueSystem.say(DialogueSystem.entities.Set, "You may not pass until you answer correctly, mortal.", {
      [" "] = {
        text = "Press Space to continue.",
        action = function()
          DialogueSystem.clear()
          player:request_movement(Direction.WEST)
        end
      }
    })
  end

  DialogueSystem.say(DialogueSystem.entities.Set,
    "You must answer a riddle before you carry on, mortal. By what object is Maat, the goddess of judgement, represented?", {
    ["1"] = {
      text = "A golden leaf.",
      action = function()
        wrong_answer()
      end
    },
    ["2"] = {
      text = "A feather.",
      action = function()
        player:delta_heart(-1)
        player.triggers_done["set_riddle1"] = true
        DialogueSystem.clear()
        DialogueSystem.say(DialogueSystem.entities.Set, "WHAT?! How did you know that!", {
          [" "] = {
            text = "Press Space to continue.",
            action = function()
              DialogueSystem.clear()
            end
          }
        })
      end
    },
    ["3"] = {
      text = "An ankh.",
      action = function()
        wrong_answer()
      end
    },
    ["4"] = {
      text = "The rising sun.",
      action = function()
        wrong_answer()
      end
    }
  })
end

function triggers.gold_temptation(tile)
  local player = tile:get_first_content_of_type(PlayerCharacter)
  if player.triggers_done["gold_temptation"] then return end
  player.triggers_done["gold_temptation"] = true

  DialogueSystem.say(DialogueSystem.entities.Set,
    "There is gold scattered on the floor here. It doesn't belong to you but I won't stop you if you take some.", {
    ["1"] = {
      text = "Take the gold.",
      action = function()
        player:delta_heart(1)
        DialogueSystem.clear()
        DialogueSystem.say(DialogueSystem.entities.Anubis, "The guilt of taking the gold weighs on your heart.", {
          [" "] = {
            text = "Press Space to continue.",
            action = function()
              DialogueSystem.clear()
            end
          }
        })
      end
    },
    ["2"] = {
      text = "Leave the gold.",
      action = function()
        DialogueSystem.clear()
      end
    }
  })
end

function triggers.set_threat(tile)
  local player = tile:get_first_content_of_type(PlayerCharacter)
  if player.triggers_done["set_threat"] then return end
  player.triggers_done["set_threat"] = true

  DialogueSystem.say(DialogueSystem.entities.Set, "Careful, Mortal! Listen, if you worship me, I will guide you through this lava maze.", {
    ["1"] = {
      text = "Take your chances and don't worship Set.",
      action = function()
        player:delta_heart(-1)
        DialogueSystem.clear()
        DialogueSystem.say(DialogueSystem.entities.Set, "You'll regret this, Mortal!", {
          [" "] = {
            text = "Press Space to continue.",
            action = function()
              DialogueSystem.clear()
            end
          }
        })
      end
    },
    ["2"] = {
      text = "Worship Set.",
      action = function()
        player:delta_heart(1)
        DialogueSystem.clear()
        DialogueSystem.say(DialogueSystem.entities.Set, "Hahaha! You are a fool, Mortal.", {
          [" "] = {
            text = "Press Space to continue.",
            action = function()
              DialogueSystem.clear()
            end
          }
        })
      end
    }
  })
end

function triggers.maat_judgement(tile)
  local player = tile:get_first_content_of_type(PlayerCharacter)
  DialogueSystem.say(DialogueSystem.entities.Maat,
    "Your heart will now be weighed.", {
    ["1"] = {
      text = "Thank you, Goddess Ma'at.",
      action = function()
        DialogueSystem.clear()
        DialogueSystem.say(DialogueSystem.entities.Ammit,
          "YOU HAVE LEAD A SINFUL LIFE AND NOW I WILL EAT YOUR HEART.", {
          [" "] = {
            text = "Press Space to have your heart eaten.",
            action = function()
              DialogueSystem.clear()
              game:gotoState("Lose")
            end
          }
        })
      end
    },
    ["2"] = {
      text = "Lighten the weight of your heart with a spell from the Book of the Dead.",
      action = function()
        DialogueSystem.clear()
        DialogueSystem.say(DialogueSystem.entities.Maat,
          "You have lead a virtuous life, mortal. You may board Ra's boat to the afterlife.", {
          [" "] = {
            text = "Press Space to go to the afterlife.",
            action = function()
              DialogueSystem.clear()
              game:gotoState("Win")
            end
          }
        })
      end
    }
  })
end

return triggers
