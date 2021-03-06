local splash = require('screens/splash')
local howToPlay = require('screens/howToPlay')
local highScore = require('screens/highScore')
local game = require('screens/game')

local Screen = {}
Screen.__index = Screen

function Screen.new()
  local self = setmetatable({}, Screen)

  self.list = {'splash', 'howToPlay', 'highScore', 'game'}
  self.current = 'splash'

  return self
end

function Screen:draw()
  if self.current == 'splash' then
    splash.draw()
  elseif self.current == 'howToPlay' then
    howToPlay.draw()
  elseif self.current == 'highScore' then
    highScore.draw()
  elseif self.current == 'game' then
    game.draw()
  end
end

return Screen
