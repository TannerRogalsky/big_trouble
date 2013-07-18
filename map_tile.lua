MapTile = class('MapTile', Base)

function MapTile:initialize(parent, x, y)
  Base.initialize(self)
  self.parent = parent
  self.x = x
  self.y = y

  self.color = COLORS.green
  self.content = {}
  self.siblings = {}
  self.traversal_cost = {}
end

function MapTile:update(dt)
end

function MapTile:render()
end

function MapTile:get_contents_of_type(entity_type)
  local content = {}
  for id,entity in pairs(self.content) do
    if instanceOf(entity_type, entity) then
      table.insert(content, entity)
    end
  end
  return content
end

function MapTile:get_first_content_of_type(entity_type)
  return self:get_contents_of_type(entity_type)[1]
end

function MapTile:has_contents()
  return next(self.content) ~= nil
end

function MapTile:cost_to_move_to(from)
  local cost = self.traversal_cost[from] or 1
  for _,content in pairs(self.content) do
    if is_func(content.cost_to_move_to) then
      cost = cost + content:cost_to_move_to(from)
    elseif is_num(content.cost_to_move_to) then
      cost = cost + content.cost_to_move_to
    end
  end
  return cost
end
