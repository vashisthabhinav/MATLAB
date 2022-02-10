%% Gauss Elimination Method- Abhinav Vashisth
% The equations are-
% 3X1 + 2X2 - 4X3 = 3
% 2X1 + 3X2 + 3X3 = 15
% 5X1 - 3X2 + X3 = 14
% coefficient matrix: [3 2 -4;2 3 3;5 -3 1]

A = input('Enter your coefficient matrix: ');
B = input('Enter source vector: ');
N = length(B);
X = zeros(N,1);
Aug = [A,B];

%Forming Upper Triangular Matrix
for j=1:N-1
    for i=j+1:N
        m = Aug(i,j)/Aug(j,j);
        Aug(i,:) = Aug(i,:) - m*Aug(j,:);
    end
end
fprintf('The augmented matrix is: ')
Aug

%Backward Substitution
X(N) = Aug(N,N+1)/Aug(N,N);
for k=N-1:-1:1
    X(k) = (Aug(k,N+1) - Aug(k,k+1:N)*X(k+1:N))/Aug(k,k);
end
fprintf('Therefore the roots of the equation are: ')
X