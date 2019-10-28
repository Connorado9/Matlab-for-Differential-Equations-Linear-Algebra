%function file for homework12
function [eigenvectors] = eigenstuff(A)

    [V,D] = eig(A);
    eigenvectors = V;
    
    if abs(det(V)) < 10^-10
        disp('error - not linearly independent - try a different matrix')
    else
        disp('determinant of eigenvector matrix = ')
        d = det(V);
        disp(d);
        P = V;
        disp('P is = ');
        disp(P);
        disp('P inverse = ');
        disp(inv(P));
        disp('D = ');
        disp(inv(P)*A*P);
        disp('PDP^-1=A');
        disp(P*D*inv(P));
    end
end