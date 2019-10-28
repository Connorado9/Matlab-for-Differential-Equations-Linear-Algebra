%%Appendix of M-File Functions
function sum_value = sum_calc1(x,N)
    S = 0;
    
    for n = 0:N
        S = S + ((x.^n)./factorial(n));
    end
    
    sum_value = S;
end