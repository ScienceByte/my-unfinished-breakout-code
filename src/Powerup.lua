--[[
This is the powerup class. It's for the powerups.  unfinished,just trying to get it to pop up in the play state for now
modified from the paddle.lua and ball.lua classes
]]

Powerup = Class{}

function Powerup:init(skin) --skin will be which powerup it is
    -- x is placed in the middle
    self.x = VIRTUAL_WIDTH / 2 - 32

    -- 
    self.y = 0

    -- start  off with no velocity
    self.dx = 0

    -- starting dimensions
    self.width = 16
    self.height = 16

    -- the 
    self.skin = 1
    self.falling = true

end

function Powerup:update(dt)

   if not self.falling then --make sure powerup does not spawn while another is
     if random == 5 then
     self.y = 0 --powerup spawn
     self.falling = true
     end
   end

    if self.falling then --gravity
    self.y = self.y + 1
    end

    if self.y > VIRTUAL_HEIGHT then
        self.falling = false
    end
end

function Powerup:render()
    if self.falling then
    love.graphics.draw(gTextures['main'], gFrames['powerups'][self.skin], --i don't get how this works, what does the code in the brakets next to the " gFrames['powerups']" do?
    self.x, self.y)
    end
end