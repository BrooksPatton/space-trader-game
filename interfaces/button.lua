local Button = {}
Button.__index = Button

function Button.new(init)
  local self = setmetatable({}, Button)

  self.text = init.text
  self.color = init.color
  self.x = init.location.x
  self.y = init.location.y
  self:setSize(init.size)

  return self
end

function Button:setSize(size)
  if size == 'medium' then
    self.width = 100
    self.height = 75
  end
end

function Button:draw()
  love.graphics.setColor(self.color[1], self.color[2], self.color[3])
  love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end

return Button
