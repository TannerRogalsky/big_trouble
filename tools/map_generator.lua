local function newline(string)
  return string .. "\n"
end

local function num_to_string(num, desired_length)
  local temp_string = tostring(num + 1)
  for i=1,desired_length - temp_string:len() do
    temp_string = "0" .. temp_string
  end
  return temp_string
end

local function coords_to_string(x, y)
  return num_to_string(x, 2) .. num_to_string(y, 2)
end

local directions = {
  north = { 0, -1},
  south = { 0,  1},
  east =  { 1,  0},
  west =  {-1,  0},
}

local function template_map(x, y, w, h)
  local f = io.open("template.tmx", "w")
  local output = ""

  output = output .. newline([[<?xml version="1.0" encoding="UTF-8"?>]])
  output = output .. newline([[<map version="1.0" orientation="orthogonal" width="]] .. x .. [[" height="]] .. y .. [[" tilewidth="]] .. w .. [[" tileheight="]] .. h .. [[">]])

  output = output .. newline([[ <imagelayer name="Background" width="]] .. x .. [[" height="]] .. y .. [[">]])
  output = output .. newline([[ </imagelayer>]])


  -- object layer
  output = output .. newline([[ <objectgroup name="Nodes" width="]] .. x .. [[" height="]] .. y .. [[">]])
  for i = 0, x - 1 do
    for j = 0, y - 1 do
      local coord = coords_to_string(i, j)
      output = output .. newline([[  <object name="n_]] .. coord .. [[" x="]] .. i * w .. [[" y="]] .. j * h .. [[" width="]] .. w .. [[" height="]] .. h .. [[">]])

      -- properties ie. siblings
      output = output .. newline([[   <properties>]])
      for direction_name,direction_values in pairs(directions) do
        local dir_x, dir_y = unpack(direction_values)
        local sibling_x, sibling_y = i + dir_x, j + dir_y
        local sibling_coord = coords_to_string(sibling_x, sibling_y)

        if sibling_x >= 0 and sibling_x < x and sibling_y >= 0 and sibling_y < y then
          output = output .. newline([[    <property name="sibling_]] .. direction_name .. [[" value="n_]] .. sibling_coord .. [["/>]])
        end
      end
      output = output .. newline([[     <property name="on_enter" value=""/>]])
      output = output .. newline([[     <property name="on_exit" value=""/>]])
      output = output .. newline([[   </properties>]])

      output = output .. newline([[  </object>]])
    end
  end
  output = output .. newline([[ </objectgroup>]])

  -- tile layer
  output = output .. newline([[ <layer name="Tile Layer 1" width="]] .. x .. [[" height="]] .. y .. [[">]])
  output = output .. newline([[  <data>]])
  for i = 1, x * y do
    output = output .. newline([[   <tile gid="0"/>]])
  end
  output = output .. newline([[  </data>]])
  output = output .. newline([[ </layer>]])

  output = output .. newline([[</map>]])

  f:write(output)

  f:flush()
  f:close()
end

do
  local x, y = tonumber(arg[1]) or 14, tonumber(arg[2]) or 14
  local w, h = tonumber(arg[3]) or 50, tonumber(arg[4]) or 50
  template_map(x, y, w, h)
end
