//bomber problem
mb=[0,-2,-5,-9,-15,-18,-23,-29,-28,-25,-21,-20,-17]
xb=[80,90,99,108,116,125,133,141,151,160,169,179,180]
vf=25
xf=0
yf=50


for i=1:13
  dist=sqrt( (mb(i)-yf)^2 + (xb(i)-xf)^2 )
  sinx=(mb(i)-yf)/dist
  cosx=(xb(i)-xf)/dist
  if dist<=10 then
  disp("YES")
  disp(dist,i)
end
  xf=xf+vf*cosx
  yf=yf+vf*sinx
end
