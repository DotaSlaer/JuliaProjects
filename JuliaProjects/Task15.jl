r = Robot()
mark=true
X,Y = GetPosition(r)
MoveToBorder(r,0)
for i in 1:5
    MoveToBorder(r,i%4,mark)
end
ReturnToPosition(r,X,Y)