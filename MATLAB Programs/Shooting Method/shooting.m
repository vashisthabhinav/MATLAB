%% Shooting Method --- Abhinav Vashisth 20bch010
clf
alpha=1/2;
beta=log(2);
a=1;b=2;
[xv,yv]=ode45('funsysa',[a b],[alpha;0;0;1]);
plot(xv,yv(:,1),'r -.',xv,yv(:,3),'m -.')
hold
n=length(yv(:,1));
y1n=yv(n,1);y2n=yv(n,3);
yvsol=yv(:,1)+(beta-y1n)/y2n*yv(:,3);
truesol=-1./(xv.^2).*(2-4*xv+3/2*xv.^2-xv.^2.*log(xv));
plot(xv,yvsol,'b-',xv,truesol,'k-')
title('Shooting Method: y"=-4/x*y-2/x^2*y+2*ln(x)/x^2, y(1)=1/2, y(2)=ln2')
text(1.2,0.4,'IVP: y_1"=-4/x*y_1-2/x^2*y_1+2*ln(x)/x^2, y_1(1)=1/2, y_2(1)=0')
text(1.3,0.1,'IVP: y_2"=-4/x*y_2-2/x^2*y_2, y_2(1)=0, y_2(1)=1')
text(1.2,0.6,'- y=y_1+(beta-y_1(2))/y_2(2)*y_2')
axis([1 2 0 0.8])
hold off
figure(2)
semilogy(xv,abs(yvsol-truesol),'b-.')
title('Shooting Method: y"=-4/x*y-2/x^2*y+2*ln(x)/x^2, y(1)=1/2,y(2)=ln2')
ylabel('|y(x_i)-y_i| ') 
xlabel('x')