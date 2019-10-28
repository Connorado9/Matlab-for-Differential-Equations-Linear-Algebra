%%function [output1, output2] = functionName (input1, input2, input3)
function [cCk]=nChoosek(n,k) %%function name bin_coeff with inputs n,k and output n choose k
d = n-k;
nfact = 1;
kfact = 1;
dfact = 1;
if (n < k)
% Error Message 1
    disp('n is less than or equal to k')
elseif (n < 0) || (k < 0)
    % Error Message 2
    disp('n or k is less than 0')
else
    for ii = 1:1:n
        nfact = nfact*ii;
    end
    for jj = 1:1:k
        kfact = kfact*jj;
    end
    for kk = 1:1:d
        dfact = dfact*kk;
    end
end
% End If-statement
cCk = nfact/(dfact*kfact);

%cCk=nchoosek(n,k);
end