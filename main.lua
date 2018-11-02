--[[
• Code Written By Vivian
• Space Invaders, by Tomohiro Nishikado, is a classic arcade game that released in 1978. This is
  my attempt to recreate it in Lua Using the Love2D Game Engine. (✿◠‿◠)
--]]

function love.load(arg)
  -- set cool pixel font (downloaded from here: https://www.dafont.com/04b-03.font)
  my_font = love.graphics.setNewFont("font.TTF", 20)
  
  love.window.setMode(640, 480, {resizable=true, vsync=false})  -- note: default window size is 800 x 600
end

function love.keyreleased(key)
  -- if player presses space bar, a bullet is shot upwards.
  if (key == " " or key == "space") then
    shoot()
  end
end

function love.update(dt)
end

function love.draw()
  -- sets title of new window
  love.window.setTitle("Space Invaders")
  
  -- sets background color to black
  love.graphics.setBackgroundColor(0,0,0)
  
  -- add green background border...just for aesthetics
  love.graphics.setColor(0,255,0)
  love.graphics.setLineWidth(10)
  love.graphics.rectangle("line", 0, 0, 640, 480)
  
  -- print 'SPACE INVADERS' in white on top left of screen & 'SCORE' on top right of screen
  love.graphics.setColor(255,255,255)
  love.graphics.print("SPACE INVADERS", 18, 18)
  love.graphics.print("SCORE", 450, 18)
end
