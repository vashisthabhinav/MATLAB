%% Solving of ODE using Euler's Method - Abhinav Vashisth 20bch010
% Given - y′+2y = 2−e^(−4t) , y(0) = 1, Step size = 0.1
% Therefore y' = -2*y +2 −e^(−4t)
f = input('Enter your function: ');%Right hand side of ODE
t0 = input('Enter initial value of independant variable: ');
y0 = input('Enter initial value of dependant variable: ');
h = input('Enter the step size as per the question: ');
tn = input('Enter point at which you want to evaluate solution: ');
n = (tn-t0)/h;
t(1) = t0;y(1) = y0;
for i=1:n
    y(i+1) = y(i) + h*f(t(i),y(i));
    t(i+1) = t0 + i*h;
    fprintf('y(%.2f) = %.4f\n',t(i+1),y(i+1));
end