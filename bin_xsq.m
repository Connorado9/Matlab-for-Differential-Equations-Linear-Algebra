function [expected_value] = bin_xsq(n,p,N)
    sum = 0;
    
    for x = 0:1:N
        sum = sum + x.^2*nChoosek(n,x)*p.^x*(1-p).^(n-x);

    expected_value = sum;
end