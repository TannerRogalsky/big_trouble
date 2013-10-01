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
DialogueSystem.static.background = g.newImage("images/parchement.png")

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
  g.printf(entity.name .. ": " .. text, h, 70, 800)

  local height = game.default_font:getHeight()

  DialogueSystem.callbacks = callbacks
  if DialogueSystem.callbacks then
    local index = 7
    for key,callback_table in pairs(DialogueSystem.callbacks) do
      local text = ""
      if key == " " then
        text = callback_table.text
      else
        text = key .. ". " .. callback_table.text
      end
      g.print(text, h, index * height)
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
