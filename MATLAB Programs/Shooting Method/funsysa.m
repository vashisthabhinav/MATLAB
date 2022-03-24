%% Function File --- Abhinav Vashisth 20bch010
function yv=funsysa(t,y)
yv(1,1)=y(2,1);
yv(2,1)=-4/t*y(2,1)-2/(t^2)*y(1,1)+2*log(t)/(t^2);
yv(3,1)=y(4,1);
yv(4,1)=-4/t*y(4,1)-2/(t^2)*y(3,1);