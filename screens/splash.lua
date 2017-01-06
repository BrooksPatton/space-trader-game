local Button = require('interfaces/button')

local splash = {}

splash.startButton = Button.new({
  text = 'New Game',
  location = {x = 500, y = 400},
  color = {102, 188, 131},
  size = 'medium'
})

local function drawGameButton()
  splash.startButton:draw()
end

function splash.draw()
  love.graphics.setColor(100, 100, 175)
  love.graphics.print('Splash Screen!', 100, 250)

  drawGameButton()
end

return splash
