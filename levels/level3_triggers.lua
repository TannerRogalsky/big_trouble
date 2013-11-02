local triggers = {}

function triggers.anubis_welcome(tile)
  local player = tile:get_first_content_of_type(PlayerCharacter)
  if player.triggers_done["anubis_welcome"] then return end
  player.triggers_done["anubis_welcome"] = true

  DialogueSystem.say(DialogueSystem.entities.Anubis,
    "Welcome to the Duat, mortal, the Egyption underworld. You will need to navigate these trials before you are allowed into the afterlife. I am Anubis, the jackal-headed. I will be your guide.", {
    ["A"] = {
      text = "Press 'A' to continue.",
      action = function()
        DialogueSystem.clear()
        DialogueSystem.say(DialogueSystem.entities.Anubis,
          "First, take these SCALES. They will show you if your heart is lighter or heavier than a feather.", {
          ["A"] = {
            text = "Press 'A' to take the scales.",
            action = function()
              DialogueSystem.clear()
              player.has_scales = true
              DialogueSystem.say(DialogueSystem.entities.Anubis,
                "If you manage to make it to the end of your journey, your heart will be weighed against Maat, the FEATHER-GODDESS of judgement. The guilt of sin will weigh on your heart. Be warned!", {
                ["A"] = {
                  text = "Press 'A' to continue.",
                  action = function()
                    DialogueSystem.clear()
                  end
                }
              })
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
    ["A"] = {
      text = "Press 'A' to continue.",
      action = function()
        DialogueSystem.clear()
        DialogueSystem.say(DialogueSystem.entities.Anubis,
          "The BOOK OF THE DEAD contains many secrets and spells to help you in your journey. It was produced by scribes before your death and buried with you so that you could bring it to the Duat.", {
          ["A"] = {
            text = "Press 'A' to continue.",
            action = function()
              DialogueSystem.clear()
            end
          }
        })
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
      ["A"] = {
        text = "Press 'A' to continue.",
        action = function()
          player:delta_heart(1)
          DialogueSystem.clear()
          player:request_movement(Direction.WEST)
        end
      }
    })
  end

  DialogueSystem.say(DialogueSystem.entities.Set,
    "You must answer a riddle before you carry on, mortal. By what object is Maat, the goddess of judgement, represented?", {
    ["A"] = {
      text = "A golden leaf.",
      action = function()
        wrong_answer()
      end
    },
    ["B"] = {
      text = "A feather.",
      action = function()
        player:delta_heart(-1)
        player.triggers_done["set_riddle1"] = true
        DialogueSystem.clear()
        DialogueSystem.say(DialogueSystem.entities.Set, "WHAT?! How did you know that!", {
          ["A"] = {
            text = "Press 'A' to continue.",
            action = function()
              DialogueSystem.clear()
            end
          }
        })
      end
    },
    ["X"] = {
      text = "An ankh.",
      action = function()
        wrong_answer()
      end
    },
    ["Y"] = {
      text = "The rising sun.",
      action = function()
        wrong_answer()
      end
    }
  })
end

function triggers.set_riddle2(tile)
  local player = tile:get_first_content_of_type(PlayerCharacter)
  if player.triggers_done["set_riddle2"] then return end

  local function wrong_answer()
    DialogueSystem.clear()
    DialogueSystem.say(DialogueSystem.entities.Set, "You may not pass until you answer correctly, mortal.", {
      ["A"] = {
        text = "Press 'A' to continue.",
        action = function()
          player:delta_heart(1)
          DialogueSystem.clear()
          player:request_movement(Direction.WEST)
        end
      }
    })
  end

  DialogueSystem.say(DialogueSystem.entities.Set,
    "Stop, mortal! Answer my riddle: what is the name of the text that aids you in your journey?", {
    ["A"] = {
      text = "Afterlife For Dummies.",
      action = function()
        wrong_answer()
      end
    },
    ["B"] = {
      text = "The Book of the Dead.",
      action = function()
        player:delta_heart(-1)
        player.triggers_done["set_riddle2"] = true
        DialogueSystem.clear()
        DialogueSystem.say(DialogueSystem.entities.Set, "GAH! That was meant to be a hard one!", {
          ["A"] = {
            text = "Press 'A' to continue.",
            action = function()
              DialogueSystem.clear()
            end
          }
        })
      end
    },
    ["X"] = {
      text = "Osiris' Handbook",
      action = function()
        wrong_answer()
      end
    }
  })
end

function triggers.set_riddle3(tile)
  local player = tile:get_first_content_of_type(PlayerCharacter)
  if player.triggers_done["set_riddle3"] then return end

  local function wrong_answer()
    DialogueSystem.clear()
    DialogueSystem.say(DialogueSystem.entities.Set, "You may not pass until you answer correctly, mortal.", {
      ["A"] = {
        text = "Press 'A' to continue.",
        action = function()
          player:delta_heart(1)
          DialogueSystem.clear()
          player:request_movement(Direction.NORTH)
        end
      }
    })
  end

  DialogueSystem.say(DialogueSystem.entities.Set,
    "One more riddle, mortal! What animal does Anubis, your guide, look like?", {
    ["B"] = {
      text = "A hippo!",
      action = function()
        wrong_answer()
      end
    },
    ["A"] = {
      text = "A jackal!",
      action = function()
        player:delta_heart(-1)
        player.triggers_done["set_riddle3"] = true
        DialogueSystem.clear()
        DialogueSystem.say(DialogueSystem.entities.Set, "You must be the smartest mortal that has ever died!", {
          ["A"] = {
            text = "Press 'A' to continue.",
            action = function()
              DialogueSystem.clear()
            end
          }
        })
      end
    },
    ["X"] = {
      text = "A crocodile!",
      action = function()
        wrong_answer()
      end
    },
    ["Y"] = {
      text = "A cat!",
      action = function()
        wrong_answer()
      end
    }
  })
end

function triggers.anubis_congrats(tile)
  local player = tile:get_first_content_of_type(PlayerCharacter)
  if player.triggers_done["anubis_congrats"] then return end
  player.triggers_done["anubis_congrats"] = true

  DialogueSystem.say(DialogueSystem.entities.Anubis,
    "You are doing well, mortal. Your journey is almost complete! Ra, the sun god, waits to carry you to the afterlife in his boat if your heart is not too heavy.", {
    ["A"] = {
      text = "Press 'A' to continue.",
      action = function()
        DialogueSystem.clear()
      end
    }
  })
end

function triggers.set_riddle4(tile)
  local player = tile:get_first_content_of_type(PlayerCharacter)
  if player.triggers_done["set_riddle4"] then return end

  local function wrong_answer()
    DialogueSystem.clear()
    DialogueSystem.say(DialogueSystem.entities.Set, "You may not pass until you answer correctly, mortal.", {
      ["A"] = {
        text = "Press 'A' to continue.",
        action = function()
          player:delta_heart(1)
          DialogueSystem.clear()
          player:request_movement(Direction.WEST)
        end
      }
    })
  end

  DialogueSystem.say(DialogueSystem.entities.Set,
    "Mortal!  If you pass Maat's final judgement, which god will take you to the afterlife in his boat?", {
    ["A"] = {
      text = "Charon",
      action = function()
        wrong_answer()
      end
    },
    ["X"] = {
      text = "Ra",
      action = function()
        player:delta_heart(-1)
        player.triggers_done["set_riddle4"] = true
        DialogueSystem.clear()
        DialogueSystem.say(DialogueSystem.entities.Set, "You know the gods well, mortal...", {
          ["A"] = {
            text = "Press 'A' to continue.",
            action = function()
              DialogueSystem.clear()
            end
          }
        })
      end
    },
    ["B"] = {
      text = "Anubis",
      action = function()
        wrong_answer()
      end
    }
  })
end

function triggers.set_riddle5(tile)
  local player = tile:get_first_content_of_type(PlayerCharacter)
  if player.triggers_done["set_riddle5"] then return end

  local function wrong_answer()
    DialogueSystem.clear()
    DialogueSystem.say(DialogueSystem.entities.Set, "You may not pass until you answer correctly, mortal.", {
      ["A"] = {
        text = "Press 'A' to continue.",
        action = function()
          player:delta_heart(1)
          DialogueSystem.clear()
          player:request_movement(Direction.WEST)
        end
      }
    })
  end

  DialogueSystem.say(DialogueSystem.entities.Set,
    "Your immortal eternity is in dire peril, mortal.  If your heart is deemed heavy, which demon will happily devour your soul?", {
    ["A"] = {
      text = "Ma'at",
      action = function()
        wrong_answer()
      end
    },
    ["B"] = {
      text = "Ammit",
      action = function()
        player:delta_heart(-1)
        player.triggers_done["set_riddle5"] = true
        DialogueSystem.clear()
        DialogueSystem.say(DialogueSystem.entities.Set, "You know the gods well, mortal...", {
          ["A"] = {
            text = "Press 'A' to continue.",
            action = function()
              DialogueSystem.clear()
            end
          }
        })
      end
    },
    ["X"] = {
      text = "Falcor",
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
    ["A"] = {
      text = "Take the gold.",
      action = function()
        player:delta_heart(1)
        DialogueSystem.clear()
        DialogueSystem.say(DialogueSystem.entities.Anubis, "The guilt of taking the gold weighs on your heart.", {
          ["A"] = {
            text = "Press 'A' to continue.",
            action = function()
              DialogueSystem.clear()
            end
          }
        })
      end
    },
    ["B"] = {
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
    ["A"] = {
      text = "Take your chances and don't worship Set.",
      action = function()
        player:delta_heart(-1)
        DialogueSystem.clear()
        DialogueSystem.say(DialogueSystem.entities.Set, "You'll regret this, Mortal!", {
          ["A"] = {
            text = "Press 'A' to continue.",
            action = function()
              DialogueSystem.clear()
            end
          }
        })
      end
    },
    ["B"] = {
      text = "Worship Set.",
      action = function()
        player:delta_heart(1)
        DialogueSystem.clear()
        DialogueSystem.say(DialogueSystem.entities.Set, "Hahaha! You are a fool, Mortal.", {
          ["A"] = {
            text = "Press 'A' to continue.",
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

  local function game_end()
    DialogueSystem.clear()
    if player.heart_weight <= 3 then
      DialogueSystem.say(DialogueSystem.entities.Osiris,
        "You have been found virtuous, mortal. Prepare yourself for your journey to the afterlife!", {
        ["A"] = {
          text = "Press 'A' to board Ra's barque.",
          action = function()
            DialogueSystem.clear()
            game:gotoState("Win")
          end
        }
      })
    else
      DialogueSystem.say(DialogueSystem.entities.Ammit,
        "YOUR HEART IS TOO HEAVY! YOU HAVE LEAD A SINFUL LIFE AND NOW I WILL EAT YOUR HEART.", {
        ["A"] = {
          text = "Press 'A' to have your heart eaten.",
          action = function()
            DialogueSystem.clear()
            game:gotoState("Lose")
          end
        }
      })
    end
  end

  DialogueSystem.say(DialogueSystem.entities.Osiris,
    "Your heart will now be weighed. If it is heavy with your sin, Ammit will eat your heart and you will be doomed to wander the Duat forever. If you have been virtuous, you will board Ra's barque to the afterlife.", {
    ["A"] = {
      text = "Thank you, Osiris.",
      action = game_end
    },
    ["B"] = {
      text = "Lighten the weight of your heart with a spell from the Book of the Dead.",
      action = function()
        player:delta_heart(-1)
        game_end()
      end
    }
  })
end

return triggers
