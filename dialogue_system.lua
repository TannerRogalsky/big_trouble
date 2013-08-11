DialogueSystem = class('MapLoader', Base)

local DialogueEntity = class("DialogueEntity", Base)
function DialogueEntity:initialize(name, image)
  Base.initialize(self)

  self.name = name
  self.image = image
end

DialogueSystem.static.entities = {
  Anubis = DialogueEntity:new("Anubis", g.newImage("images/anubis_bust.png")),
  Maat = DialogueEntity:new("Ma'at", g.newImage("images/maat_bust.png")),
  Set = DialogueEntity:new("Set", g.newImage("images/set_bust.png")),
  Ammit = DialogueEntity:new("Ammit", g.newImage("images/ammit_bust.png"))
}
local active = false
DialogueSystem.static.callbacks = nil
DialogueSystem.static.render_surface = g.newCanvas(g.getWidth(), g.getHeight() / 3)

function DialogueSystem.say(entity, text, callbacks)
  game.character:gotoState("NotMoving")

  local c = DialogueSystem.render_surface
  g.setCanvas(c)
  g.setColor(COLORS.white:rgb())
  local h = c:getHeight()
  g.draw(entity.image, 0, 0, 0, h / entity.image:getWidth())
  g.rectangle("fill", h, 0, c:getWidth(), h)
  g.setColor(COLORS.black:rgb())

  h = h + 10
  g.print(entity.name .. ": " .. text, h, 0)

  DialogueSystem.callbacks = callbacks
  if DialogueSystem.callbacks then
    local index = 1
    for key,callback_table in pairs(DialogueSystem.callbacks) do
      g.print(key .. ". " .. callback_table.text, h, index * 20)
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
