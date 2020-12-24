r = Robot()
mark=true
X,Y = GetPosition(r)
MoveToBorder(r,0)
MoveToBorder(r,1)
putmarker!(r)
MoveToBorder(r,3,mark)
while (isborder(r,HorizonSide(2))==false) || (isborder(r,HorizonSide(3))==false)
    MoveToBorder(r,1)
    move!(r,HorizonSide(2))
    putmarker!(r)
    MoveToBorder(r,3,mark)
end
ReturnToPosition(r,X,Y)