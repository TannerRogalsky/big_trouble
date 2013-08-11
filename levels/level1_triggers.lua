local triggers = {}

function triggers.anubis_welcome(tile)
  local player = tile:get_first_content_of_type(PlayerCharacter)
  DialogueSystem.say(DialogueSystem.entities.Anubis,
    "Welcome to the underworld, mortal. You will need to navigate these trials before you are allowed into the afterlife.", {
    [" "] = {
      text = "Press Space to continue.",
      action = function()
        DialogueSystem.clear()
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

function triggers.set_threat(tile)
  local player = tile:get_first_content_of_type(PlayerCharacter)
  DialogueSystem.say(DialogueSystem.entities.Set, "I AM SET. GOD OF CHAOS. WORSHIP ME IF YOU WANT TO SAVE YOUR SOUL.", {
    ["1"] = {
      text = "Plee with Osiris for protection from Set.",
      action = function()
        DialogueSystem.clear()
        DialogueSystem.say(DialogueSystem.entities.Set, "NOOOOOOOOO!", {
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
        DialogueSystem.say(DialogueSystem.entities.Maat,
          "You have lead a virtuous life, mortal. Welcome to the afterlife.", {
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
