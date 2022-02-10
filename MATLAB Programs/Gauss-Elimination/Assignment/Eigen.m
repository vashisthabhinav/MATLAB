%% Eigen Values and Eigen Vectors- Abhinav Vashisth
A = input('Enter your coefficient matrix: ');
B = input('Enter source vector: ');

% Eigen values and Eigen vectors
% AX = nX
% AX = nIX
% (A-nI)X = 0
fprintf('Therefore, the Eigen values are: ') 
eig(A) %Eigen values of A
[Y,D] = eig(A);%For eigen vectors of A
fprintf('Therefore, the Eigen vectors are: ') 
Y
fprintf('Therefore, the diagonal matrix is: ') 
D