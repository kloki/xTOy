-- kloki
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program. If not, see <http://www.gnu.org/licenses/>.
--
-- Koen Klinkers k.klinkers@gmail.com
require "menu"


function love.load()
   math.randomseed( os.time() )
   screenheight=720
   screenwidth=1200
   debug=false
   mode=0
   fSmall=love.graphics.newFont("font/ChronoTrigger.ttf",40)
   fBig=love.graphics.newFont("font/ChronoTrigger.ttf",150)
   love.graphics.setFont(fSmall)
end

function love.draw()
   if mode==0 then
      menu.draw()
   end
end

function love.update(dt)

   if mode==0 then
      menu.update(dt)
   end
end


function love.keypressed(key)

   if key=='escape' then
      love.event.quit()
   elseif key=='f' then
      love.graphics.toggleFullscreen()
   end


end


function love.quit()
  print("One step closer to world hegemony.")
end



