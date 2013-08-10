local triggers = {}

function triggers.test_enter_function(tile)
  local player = tile:get_first_content_of_type(PlayerCharacter)
  DialogueSystem.say(DialogueSystem.entities.Anubis, "test")
end

function triggers.test_exit_function(tile)
  local player = tile:get_first_content_of_type(PlayerCharacter)
  DialogueSystem.clear()
end

return triggers
