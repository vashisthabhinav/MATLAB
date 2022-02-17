%% Trapezoidal Method- Abhinav Vashisth 20bch010
% Given limit 0 to 1 h=1/18
% For h to be 1/18-> xn = 1; x0 = 0; and n = 18.
f = @(x) 2*x^3 + x^0.6;
x0 = input('Enter the value of x0(lower limit): ');
xn = input('Enter the value of xn(upper limit): ');
n = input('Enter the number of intervals: ');
h = (xn-x0)/n;
m = f(x0)+f(xn);
for i=1:n-1
    m = m + 2*(f(x0+i*h));
end
Integral = h/2*m;
fprintf('The integral by Trapezoidal root is: %i\n',Integral)