local function init(progname)
  if (stat==nil) then
   say(progname)
   i=0  stat="ok" w=0
   lengthOfWallIndex=0
   lengthOfWall=50
   s1="default:stone"
   move.forward()
  end
 end
 local function buildWall()
  w=w+1  say("working on part #"..w)
  for y=0,lengthOfWall,1 do 
    move.forward() 
    place.down(s1) 
  end
 end
 init("Build-a-wall")
 if w>=lengthOfWall then
   stat="Done."  say(stat)  self.remove()
 else
  buildWall()
 end
