r = Robot()
mark=true
X,Y = GetPosition(r)
space = 0
border = false
size = 0
MoveToBorder(r,2)
MoveToBorder(r,3)
while border==false
    putmarker!(r)
    MoveToBorder(r,1,mark)
    MoveToBorder(r,3)
    global space = space+1
    if isborder(r,HorizonSide(0))==false
        move!(r,HorizonSide(0))
    else
        global border = true
    end
    steps = 0
    while (space>steps) && (border==false)
        global size = 0
        if isborder(r,HorizonSide(1))==false
            move!(r,HorizonSide(1))
        else
            global border,size = Obstacle(r,1)
            steps = steps + size
        end
        steps = steps+1
    end
end
ReturnToPosition(r,X,Y)