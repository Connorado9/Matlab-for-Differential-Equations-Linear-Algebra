
%%binThm (a + b)^n
function [bincoeff] = BinThm(a,b,n) %%this function calls on bincoeff as an output
    s=0;
    for k=1:1:n
        s = s+bin_coeff(n,k)*a^(n-k)*b^k;
    end
    bincoeff=s;
end

% Is this code wrong? probably.


