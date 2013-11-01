DialogueSystem = class('MapLoader', Base)

local DialogueEntity = class("DialogueEntity", Base)
function DialogueEntity:initialize(name, image)
  Base.initialize(self)

  self.name = name
  self.image = image
  self.image:setFilter("nearest", "nearest")
end

DialogueSystem.static.entities = {
  Anubis = DialogueEntity:new("Anubis", g.newImage("images/anubis.png")),
  Maat = DialogueEntity:new("Ma'at", g.newImage("images/maat.png")),
  Set = DialogueEntity:new("Set", g.newImage("images/set.png")),
  Ammit = DialogueEntity:new("Ammit", g.newImage("images/ammit.png")),
  Osiris = DialogueEntity:new("Osiris", g.newImage("images/osiris.png"))
}
local active = false
DialogueSystem.static.callbacks = nil
DialogueSystem.static.render_surface = g.newCanvas(g.getWidth(), g.getHeight() / 3)
DialogueSystem.static.background = g.newImage("images/paper.png")
DialogueSystem.static.background:setFilter("nearest", "nearest")

function DialogueSystem.say(entity, text, callbacks)
  game.character:gotoState("NotMoving")

  local c = DialogueSystem.render_surface
  g.setCanvas(c)
  g.setColor(COLORS.white:rgb())
  local h = c:getHeight()
  g.draw(entity.image, 0, 0, 0, h / entity.image:getWidth())
  g.draw(DialogueSystem.background, h, 0, 0, 1.24, 1)
  -- g.rectangle("fill", h, 0, c:getWidth(), h)
  g.setColor(COLORS.black:rgb())

  h = h + 70
  local full_text = entity.name .. ": " .. text
  g.printf(full_text, h, 70, 800)
  local full_width = game.default_font:getWidth(full_text)
  local lines = math.ceil(full_width / (800 - 70))
  -- print(lines, full_text)

  local height = game.default_font:getHeight()
  local callback_keys = {}
  for k,_ in pairs(callbacks) do
    table.insert(callback_keys, k)
  end
  table.sort(callback_keys)

  DialogueSystem.callbacks = callbacks
  if DialogueSystem.callbacks then
    local index = lines + 3
    for _,key in ipairs(callback_keys) do
      callback_table = DialogueSystem.callbacks[key]
      local text = ""
      if key == " " then
        text = callback_table.text
      else
        text = key .. ". " .. callback_table.text
      end
      g.print(text, h, index * height + height / 2)
      index = index + 1
    end
  end

  g.setCanvas()

  active = true
end

function DialogueSystem.render()
  if active then
    g.setColor(COLORS.white:rgb())
    g.draw(DialogueSystem.render_surface, 0, g.getHeight() - DialogueSystem.render_surface:getHeight())
  end
end

function DialogueSystem.update(dt)
end

function DialogueSystem.keypressed(key, unicode)
  if DialogueSystem.callbacks and DialogueSystem.callbacks[key] then
    DialogueSystem.callbacks[key].action()
  end
end

function DialogueSystem.clear()
  game.character:gotoState()
  DialogueSystem.render_surface:clear()
  active = false
end
