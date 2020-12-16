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
stepsCount = 0
trig = (stepsX+stepsY)%2
while isborder(r,Nord)==false
    while isborder(r,Ost)==false
        if stepsCount%2 == trig
            putmarker!(r)
        end
        move!(r,Ost)
        global stepsCount = stepsCount+1
    end
    if stepsCount%2 == trig
        putmarker!(r)
    end
    while isborder(r,West)==false
        move!(r,West)
    end
    move!(r,Nord)
end
if stepsCount%2 == trig
    putmarker!(r)
end
while isborder(r,Ost)==false
    move!(r,Ost)
    global stepsCount = stepsCount+1
    if stepsCount%2 == trig
        putmarker!(r)
    end
end
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