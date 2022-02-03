A = input('Enter a Coefficient Matrix A: ');
B = input('Enter Source Vector B: ');
P = input('Enter Initial Guess Vector: ');
n = input('Enter Number of Iterations: ');
e = input('Enter Tolerance: ');
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
        break
    end
    Y = X;
end
