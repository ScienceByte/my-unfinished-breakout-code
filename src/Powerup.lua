--[[
This is the powerup class. It's for the powerups.  unfinished,just trying to get it to pop up in the play state for now
modified from the paddle.lua and ball.lua classes
]]

Powerup = Class{}

function Powerup:init(skin) --skin will be which powerup it is
    -- x is placed in the middle
    self.x = VIRTUAL_WIDTH / 2 - 32

    -- 
    self.y = VIRTUAL_HEIGHT - 64

    -- start  off with no velocity
    self.dx = 0

    -- starting dimensions
    self.width = 16
    self.height = 16

    -- the 
    self.skin = 1
    self.inplay = true

end

function Powerup:update(dt)
    self.x = self.x + self.dx * dt
    self.y = self.y + self.dy * dt
end

function Powerup:render()
    love.graphics.draw(gTextures['main'], gFrames['powerups'][self.skin], --i don't get how this works, what does the code in the brakets next to the " gFrames['powerups']" do?
    self.x, self.y)
end