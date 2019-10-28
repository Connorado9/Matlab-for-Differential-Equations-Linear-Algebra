%Function that finds the largest eigen value
function [eigen] = largest_eigen(A) %where A is a 3x3 matrix

x = [1; 1; 1];

for i = 0:100
    xnew = A*x;
    x = xnew/norm(xnew);
end

eigen = dot(A*x,x)/dot(x,x);

end