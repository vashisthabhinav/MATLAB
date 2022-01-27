%% Secant Method

f = @(x) 3*x+sin(x)-exp(x);
x0 = input('Enter x0(First guess): ');
x1 =input('Enter x1(Second guess): ');
n = input('Enter number of iterations: ');
e = 10^-5;
%Processing
for i=1:n
    x2 = ( x0*f(x1)-x1*f(x0) )/ (f(x1)-f(x0));
    if abs(x2-x1)<e %Stopping Criteria 
        fprintf('Thus the root of the given equation is: %f\n',x2)
        break
    end
    fprintf('x%d = %.4f\n',i,x2)
    x0 = x1;
    x1 = x2;

end