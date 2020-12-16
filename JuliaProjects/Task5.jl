r = Robot()
stepsY=0
stepsX=0
while (isborder(r,Sud) == false) | (isborder(r,Ost)==false)
    while isborder(r,Sud)==false
        move!(r,Sud)
        global stepsY=stepsY+1
    end
    while isborder(r,Ost)==false
        move!(r,Ost)
        global stepsX=stepsX+1
    end
end
for i in 0:3
    putmarker!(r)
    while isborder(r,HorizonSide(i))==false
        move!(r,HorizonSide(i))
    end
end
putmarker!(r)
while (stepsY > 0)
    if (isborder(r,Nord)==true) & (stepsY > 0)
        while isborder(r,Nord)==true
            move!(r,Ost)
            global stepsX = stepsX+1
        end
        move!(r,Nord)
        global stepsY = stepsY-1
        while isborder(r,West)
            move!(r,Nord)
            global stepsY = stepsY-1
        end
    else
        if stepsX == 0
            move!(r,Nord)
            global stepsY = stepsY-1
        end
    end
    while stepsX > 0
        move!(r,West)
        global stepsX = stepsX-1
    end
end