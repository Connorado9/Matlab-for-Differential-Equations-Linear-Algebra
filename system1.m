function vprime = system1(t,v)
    x1 = v(1);
    x2 = v(2);
    x3 = v(3);
    x4 = v(4);
    
    vprime = zeros(4,1);
    
    vprime(1) = x2;
    vprime(2) = x3;
    vprime(3) = x4;
    vprime(4) = -8*x1 + sin(t)*x2 - 3*x3 + t.^2;
end
    