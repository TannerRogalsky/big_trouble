local triggers = {}

function triggers.anubis_woo(tile)
  local player = tile:get_first_content_of_type(PlayerCharacter)
  DialogueSystem.say(DialogueSystem.entities.Anubis, "test", {
    ["1"] = {
      text = "To woo?",
      action = function()
        print("woo")
      end
    },
    ["2"] = {
      text = "Or not to woo?",
      action = function()
        print("not woo")
      end
    }
  })
end

function triggers.close_dialog(tile)
  local player = tile:get_first_content_of_type(PlayerCharacter)
  DialogueSystem.clear()
end

function triggers.maat_woo(tile)
  local player = tile:get_first_content_of_type(PlayerCharacter)
  DialogueSystem.say(DialogueSystem.entities.Maat, "test", {
    ["1"] = {
      text = "To woo?",
      action = function()
        print("woo")
      end
    },
    ["2"] = {
      text = "Or not to woo?",
      action = function()
        print("not woo")
      end
    }
  })
end

function triggers.ammit_woo(tile)
  local player = tile:get_first_content_of_type(PlayerCharacter)
  DialogueSystem.say(DialogueSystem.entities.Ammit, "test", {
    ["1"] = {
      text = "To woo?",
      action = function()
        print("woo")
      end
    },
    ["2"] = {
      text = "Or not to woo?",
      action = function()
        print("not woo")
      end
    }
  })
end

function triggers.set_woo(tile)
  local player = tile:get_first_content_of_type(PlayerCharacter)
  DialogueSystem.say(DialogueSystem.entities.Set, "test", {
    ["1"] = {
      text = "To woo?",
      action = function()
        print("woo")
      end
    },
    ["2"] = {
      text = "Or not to woo?",
      action = function()
        print("not woo")
      end
    }
  })
end

return triggers
