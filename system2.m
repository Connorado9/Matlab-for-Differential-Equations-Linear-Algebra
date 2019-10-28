function vprime = system2(t,v)
    x = v(1);
    y = v(2);
    
    vprime = zeros(2,1);
    
    vprime(1) = y;
    vprime(2) = -0.3*y - (-1)*x - 1*x.^3 + 0.37*cos(1.2*t);
end