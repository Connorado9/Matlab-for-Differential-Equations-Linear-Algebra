%% Connor Humiston
%% Homework 3

%% everything works
n = 6;
k = 5;

if (n < k) || (n < 0) || (k < 0)
    disp('Danger Will Robinson! n or k is negtive or n < k!')
else
    Nfactorial = 1;
    for varN = 1:n
        Nfactorial = Nfactorial*varN;
    end
    
    Kfactorial = 1;
    for varK = 1:k
        Kfactorial = Kfactorial*varK;
    end 
    
    NMinusKFactorial = (n-k);
    for varNMinusK = 1:(n-k)
        NMinusKFactorial = NMinusKFactorial*varNMinusK;
    end
    
    answer = Nfactorial/(NMinusKFactorial*Kfactorial);
    disp(answer)
end    

%% n is less than k
n = 2;
k = 5;

if (n < k) || (n < 0) || (k < 0)
    disp('Danger Will Robinson! n or k is negtive or n < k!')
else
    Nfactorial = 1;
    for varN = 1:n
        Nfactorial = Nfactorial*varN;
    end
    
    Kfactorial = 1;
    for varK = 1:k
        Kfactorial = Kfactorial*varK;
    end 
    
    NMinusKFactorial = (n-k);
    for varNMinusK = 1:(n-k)
        NMinusKFactorial = NMinusKFactorial*varNMinusK;
    end
    
    answer = Nfactorial/(NMinusKFactorial*Kfactorial);
    disp(answer)
end    

%% n and k are negative
n = -2;
k = -1;

if (n < k) || (n < 0) || (k < 0)
    disp('Danger Will Robinson! n or k is negtive or n < k!')
else
    Nfactorial = 1;
    for varN = 1:n
        Nfactorial = Nfactorial*varN;
    end
    
    Kfactorial = 1;
    for varK = 1:k
        Kfactorial = Kfactorial*varK;
    end 
    
    NMinusKFactorial = (n-k);
    for varNMinusK = 1:(n-k)
        NMinusKFactorial = NMinusKFactorial*varNMinusK;
    end
    
    answer = Nfactorial/(NMinusKFactorial*Kfactorial);
    disp(answer)
end   