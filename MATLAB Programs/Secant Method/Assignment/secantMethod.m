%% Script File -Abhinav Vashisth 20bch010
% Secant Method

x0 = input('Enter x0(First guess): '); %Initial guess
x1 =input('Enter x1(Second guess): '); %Initial guess
n = input('Enter number of iterations: ');%Number of iterations
e = 10^-5;%Tolerance for calculating root upto 5 decimal places
%Processing
for i=1:n
    x2 = ( x0*func(x1)-x1*func(x0) )/ (func(x1)-func(x0));
    if abs(x2-x1)<e %Stopping Criteria 
        fprintf('Thus the root of the given equation is: %f\n',x2)
        break
    end
    fprintf('x%d = %.4f\n',i,x2) %.4 shows the root upto 4 decimal places
    x0 = x1;
    x1 = x2;

end