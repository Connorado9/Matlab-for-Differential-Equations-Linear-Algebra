%week 14 last week
function vprime = lorenz(t,v)
% v is a vector input where v = [x,y,z]^T
    x = v(1);   
    y = v(2);   
    z = v(3);
% constants
    sigma = 10; 
    rho = 28;   
    beta = 8/3;
% vprime is a vector of derivatuves where vprime = [x?, y?, z?]^T
    vprime = zeros(3,1);
    vprime(1) = sigma*(y - x);
    vprime(2) = x*(rho - z) - y;
    vprime(3) = x*y - beta*z;
end