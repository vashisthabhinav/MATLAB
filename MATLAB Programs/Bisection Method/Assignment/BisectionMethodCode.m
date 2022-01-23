%% Script file for Bisection Method
%Made by- Abhinav Vashisth

x1 = input("Enter the lower limt x1: ");
x2 = input("Enter the upper limit x2: ");
n = input("Enter the number of iterations: ");%Number of times the loop is iterating to check the root
e = 0.0001;%Tolerance-To check the level of correctness of the answer
if f(x1)*f(x2)<0
%Only enters the loop if f(x1) and f(x2) have opposite signs
    for i=1:n

        xh = (x1+x2)/2;%Midpoint
      
        fprintf('P%d = %.4f\n',i,xh)
        %It is checking upto 4 decimal places. If need more accuracy then
        %change the value of 4 to the specific number
        if abs(xh-x2)<e || abs(xh-x1)<e
            fprintf("Therefore, the root of the given equation is: %f\n",xh)
            break
            %Breaking out of the loop after we have reached desired
            %accuracy
        end
        %Now, changing the mid point according to the situation
        if f(x1)*f(xh)<0
            x2 = xh;
        elseif f(x2)*f(xh)<0
            x1 = xh;
        end
    end
else
    fprintf("No root between given brackets\n")
end

