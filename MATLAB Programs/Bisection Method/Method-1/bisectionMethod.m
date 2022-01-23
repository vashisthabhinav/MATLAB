%% MATLAB code to find the roots of the equation using Bisection Method

%Assigning y with the function provided
y = @(x) 2*x^2 -5*x +3;

x1 = input('Enter the value of x1: ');
x2 = input('Enter the value of x2: ');

if y(x1)*y(x2)>0
    % If both y(x1) and y(x2) have same signs, it means that they both lie
    % in the same side of the interval and there is no root between x1 &x2
    fprintf('No roots exists within the given intervals\n')
    return
end

if y(x1)==0
    fprintf("%d is the root for the given equation",x1);
elseif y(x2)==0
    fprintf("%d is the root for the given equation",x2);
    return
end
for i = 1:100
    xh = (x1 +x2)/2;
    if y(x1)*y(xh)<0
        x2 = xh;
    else
        x1 = xh;
    end
    if abs(y(x1))<1.0E-6
        break
    end
end

 fprintf("The root:%f which is calculated in %d number of bisections",x1,i);


