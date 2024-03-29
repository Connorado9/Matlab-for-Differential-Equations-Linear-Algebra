%m file for component curves sec. 3.2
function vprime = pred_prey(t, v)
    x1 = v(1);
    x2 = v(2);
    
    vprime = zeros(2,1);
    
    a = 1.5; b = 1.1; c = 2.5; d = 1.4; k = 0.5;
    
    vprime(1) = -a*x1 + b*x1.*x2;
    vprime(2) = c*(1-k*x2)*x2 - d*x1.*x2;
end