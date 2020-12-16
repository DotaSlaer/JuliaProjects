r = Robot()
stepsY=0
stepsX=0
while isborder(r,Sud) == false
    move!(r,Sud)
    global stepsY=stepsY+1
end
while isborder(r,West)==false
    move!(r,West)
    global stepsX=stepsX+1
end
while isborder(r,Nord)==false
    while isborder(r,Ost)==false
        putmarker!(r)
        move!(r,Ost)
    end
    putmarker!(r)
    move!(r,Nord)
    while isborder(r,West)==false
        if isborder(r,Nord)==true
            putmarker!(r)
        end
        move!(r,West)
    end
end
putmarker!(r)
while isborder(r,Sud) == false
    move!(r,Sud)
end
while isborder(r,West)==false
    move!(r,West)
end
while stepsY > 0
    move!(r,Nord)
    global stepsY = stepsY-1
end
while stepsX > 0
    move!(r,Ost)
    global stepsX = stepsX-1
end