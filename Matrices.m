%%Matrices

a = [1 2 3; 4 5 6; 7 8 9];
%   [first row elements; second row elements; third row elements;...]

b = zeros(m,n); % m rows and r columns of zeros
c = ones(m,n); % m rows and r columns of 1s
d = eye(n); % n by n square identity matrix (diagonal of 1s rest 0s)

%transpose a vector by adding an '
e = a';

v1 = [1 2 3]; %vector
f = diag(v1); %creates a matrix with v as the diagonal and 1 at top

v2 = [1 2];     %diag(v,k) creates a diagonal with vector v a distance k away from main diagonal
g = diag(v2,1); %this places v2 on superdiagonal (aka right above diagonal of 3x3)
%-1 would be right below diagonal on subdiagonal

h = dot(v1,v1); %dot product of two vectors

%matrix B is an inverse of A if the two matrices are multiplied an get the
%identity matrix
i = inv(a); %takes the inverse of matrix a
j = a^-1; %also takes inverse of matrix a

%to solve the system Ax = b where A is matrix and b is vector, x=A/b
x = a\v1; %equivalent to gaussian elimination

k = det(a); %determinant





