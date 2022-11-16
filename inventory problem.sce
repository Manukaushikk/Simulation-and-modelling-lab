

r = (floor(rand(1:90) * 100) + 1)

x = [125, 125, 150, 175, 175] 
y = [150, 250, 250, 250, 300]

for pol = 1:5
   cur = 115	
    l = 0		
    day = 3		
   
	for i = 1 : 90
	limit = x(pol)
    reorder = y(pol)
	cus = r(i)	
    
    if(i > day) then	
    	cur = cur + reorder
        day = 90
    end
    
    if(cus > cur) then
    	p = p + (cur * 16)
    	l = l + (cus - cur) * 18
        cur = 0
    else
      	p = cus * 16	
        cur = cur - cus
        l = l + (cur * 0.75)
    end
    
    if((cur <= limit) & (day == 90)) then	
    	day = i+3
   	end
   
   end
    disp("Pol",pol)
    disp("Profit",p)
    disp("Loss",l)
    disp("Remaining",cur)

end
