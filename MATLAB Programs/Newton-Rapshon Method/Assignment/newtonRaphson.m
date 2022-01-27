%% Script File -Abhinav Vashisth 20bch010
% Newton Raphson Method
e = 10^-4;%Tolerance for calculating root upto 4 decimal places
x0 = input('Enter the initial guess: '); %Initial guess
n = input('Enter number of iterations: '); %Number of iterations
%Processing
if df(x0)~= 0 %Only works if df(x0) is not equal to zero, as 0 in denominator is not possible
    for i=1:n
        x1 = x0 - f(x0)/df(x0);
        fprintf('x%d = %.4f\n',i,x1) %.4 shows the root upto 4 decimal places
        if abs(x1-x0)<e %Stopping criteria when we have foung our root
            fprintf('Thus, the root of the given equation is: %f\n',x1)
            break
            %Breaking out of the loop after we have reached desired
            %accuracy
        end
        if df(x1)==0
            fprintf("Calculating roots through Newton Rapshon is not possible.")
        end
        x0 = x1;
    end
else
    fprintf("Calculating roots through Newton Rapshon is not possible.")
end

