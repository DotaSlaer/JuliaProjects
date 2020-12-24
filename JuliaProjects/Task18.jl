r = Robot()
mark=true
X,Y = GetPosition(r)
MoveToBorder(r,0)
for i in 1:4
    MoveToBorder(r,i%4)
    putmarker!(r)
end
ReturnToPosition(r,X,Y)