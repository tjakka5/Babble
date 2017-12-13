local Babble = require("babble")

local font = love.graphics.newFont("LCD_Solid.ttf", 25)

local count = 0

local d = Babble.dialogue()
   :addNode("start", function (node)
      return node
         :text("Hello World!\n")
         :link("subpath")
         :text(function() return "I am gaaaayy: " ..love.timer.getTime()..".\n" end)
         :link("subpath")
   end)

   :addNode("subpath", function(node)
      return node
         :text("The time is: " ..love.timer.getTime()..".\n")
   end)

   :switch("start")


function love.update(dt)
   d:update(dt)
end

function love.draw()
   love.graphics.rectangle("line", 10, 460, 620, 170)
   love.graphics.setFont(font)
   d:draw(20, 470, 600, 150, false)

   local info = love.graphics.getStats()
   love.graphics.print(info.drawcalls)
end

function love.keypressed(key)
   last_pressed = key
   d:skip()
end
