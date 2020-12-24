r = Robot()
mark=true
for i in 0:3
    X,Y = GetPosition(r)
    MoveToBorder(r,i,mark)
    ReturnToPosition(r,X,Y)
end
putmarker!(r)