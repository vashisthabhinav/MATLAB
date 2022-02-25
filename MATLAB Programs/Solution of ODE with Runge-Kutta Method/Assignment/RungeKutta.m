%% Solving of ODE using Euler's Method - Abhinav Vashisth 20bch010
% y' = -2x - y; y(0) = -1; Step length = 0.1 
f = input('Enter your function: ');%Right hand side of ODE
t0 = input('Enter initial value of independant variable: ');
y0 = input('Enter initial value of dependant variable: ');
h = input('Enter step size: ');
tn = input('Enter point at which you want to evaluate solution: ');
n = (tn-t0)/h;
t(1) = t0;
y(1) = y0;
for i=1:n
    t(i+1) = t0 + i*h;
    k1 = h*f(t(i),y(i));
    k2 = h*f(t(i+1),y(i)+k1);
    y(i+1) = y(i) + (1/2)*(k1+k2);
    fprintf('y(%.2f) = %.4f\n',t(i+1),y(i+1));
end