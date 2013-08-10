DialogueSystem = class('MapLoader', Base)

local DialogueEntity = class("DialogueEntity", Base)
function DialogueEntity:initialize(name, image)
  Base.initialize(self)

  self.name = name
  self.image = image
end

DialogueSystem.static.entities = {
  Anubis = DialogueEntity:new("Anubis", g.newImage("images/anubis_bust.png"))
}
local active = false
DialogueSystem.static.callback = nil
DialogueSystem.static.render_surface = g.newCanvas(g.getWidth(), g.getHeight() / 3)

function DialogueSystem.say(entity, text, callback)
  local c = DialogueSystem.render_surface
  g.setCanvas(c)
  g.clear()
  g.setColor(COLORS.white:rgb())
  local h = c:getHeight()
  g.draw(entity.image, 0, 0, 0, entity.image:getWidth() / c:getWidth() * 2)
  g.rectangle("fill", h, 0, c:getWidth(), h)
  g.setColor(COLORS.black:rgb())
  g.print(text, 0, 0)
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

function DialogueSystem.clear()
  DialogueSystem.render_surface:clear()
  active = false
end
