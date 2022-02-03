%% Gauss-Seidal Method - Abhinav Vashisth
% 20x1 + x2 – 2x3 = 17; 3x1 +20x2 – x3 = - 18; 2x1 – 3x2 + 20x3 = 25
% Let the equation be the form of Ax=B 
% Coefficient for Matrix A will be- [20,1,-2;3,20,-1;2,-3,20]
% Coefficient for Matrix B will be- [17;-18;25]
A = input('Enter a Coefficient Matrix A: ');
B = input('Enter Source Vector B: ');
P = input('Enter Initial Guess Vector: ');
n = input('Enter Number of Iterations: ');%no. of times the loop is iterating to check the root
e = 0.0001;%to check the level of correctness of the answer
N = length(B);
X = zeros(N,1);
Y = zeros(N,1); %For stopping Criteria
for j = 1:n
    for i = 1:N
        X(i) = (B(i)/A(i,i)) - (A(i,[1:i-1,i+1:N])*P([1:i-1,i+1:N]))/A(i,i);
        P(i) = X(i);
    end
    fprintf('Iteration No. %d\n',j)
    X
    if abs(Y-X)<e
        fprintf('Therfore the answer comes in %d number of iterations using the Gauss Seidel method, and the answer is:-\n',j)
        X
        break%loop breaks out after achieving the desired accuracy
    end
    Y = X;
end
