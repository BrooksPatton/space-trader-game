function love.load()
  Screen = require('screens/screen')

  screen = Screen.new()
  currentScreen = 1
end

function love.draw()
  screen:draw()
end

function love.keypressed(key)
  if key == 'space' then
    currentScreen = currentScreen + 1
    screen.current = screen.list[currentScreen]
  end
end
