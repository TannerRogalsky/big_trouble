local triggers = {}

function triggers.test_enter_function(tile)
  local player = tile:get_first_content_of_type(PlayerCharacter)
  print(tostring(player) .. " entered " .. tostring(tile))
end

function triggers.test_exit_function(tile)
  local player = tile:get_first_content_of_type(PlayerCharacter)
  print(tostring(player) .. " left " .. tostring(tile))
end

return triggers
