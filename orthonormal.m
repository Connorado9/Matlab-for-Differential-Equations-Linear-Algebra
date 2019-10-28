%orthonormal function
function [u1,u2] = orthonormal(v1, v2)

%u1 is the direction of v1 (v1 divided by its unit vector)
u1 = v1/(norm(v1,2));

%v2 perpendicular
v2p = (v2 - (dot(u1,v2).*u1));

%u2 of the orthonormal basis
u2 = v2p/norm(v2p,2);

disp('U1')
disp(u1)
disp('U2')
disp(u2)

disp('Dot Product of u1 and u2')
disp(dot(u1,u2))

disp('U1 normalized')
disp(norm(u1))
disp('U2 normalized')
disp(norm(u2))


end

%u1 = a./(norm(a,2));
%v = b - (dot(u1,b)*u1;
%u2 = v./norm(v,2);
%dot(u1,u2);