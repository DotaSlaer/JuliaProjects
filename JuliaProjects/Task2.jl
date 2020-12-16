r = Robot()
steps = 0
while isborder(r,Nord) == false
    move!(r,Nord)
    global steps = steps+1
end
for i in 1:5
    while (isborder(r,HorizonSide(i%4)) == false) & (ismarker(r) == false)
        putmarker!(r)
        move!(r,HorizonSide(i%4))
    end
end
while steps > 0
    move!(r,Sud)
    global steps = steps-1
end