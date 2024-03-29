%week 14 last week
function vprime = rossler(t,v)
% v is a vector input where v = [x,y,z]^T
    x = v(1);   
    y = v(2);   
    z = v(3);
% constants
    a = 0.1; 
    b = 0.1;   
    c = 14;
% vprime is a vector of derivatuves where vprime = [x?, y?, z?]^T
    vprime = zeros(3,1);
    vprime(1) = -y - z;
    vprime(2) = x + a*y;
    vprime(3) = b + z*(x-c);
end