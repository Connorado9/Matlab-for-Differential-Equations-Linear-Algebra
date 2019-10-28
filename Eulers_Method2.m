%for section 2
function [solution] = Eulers_Method2(h,initc)
    %the differential equation being used:
    x_prime =@(t,x) (.65.*(1-(x/8.1)).*x) - ((1.2.*x.^2)/(1+x.^2));

    %the interval:     t=tlow:h:thigh;
    t=0:h:75;

    %pre-allocating vectors
    x = zeros(length(t),1);
    
    %this is initial condition x(0) = 1 becuase matlab vectors start at 1
    x(1)=initc;

    %from the start to the end of the time vector
    for n=1:length(t)-1
        x(n+1)=x(n)+h*x_prime(t(n),x(n)); 
    end
    %we apply Euler's method
    
    solution = x;
end