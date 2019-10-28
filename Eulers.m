%function file
function [solution] = Eulers(h)

    %y_prime=@(t,y) y^2*cos(t+y);
    y_prime=@(t,y) .65*(1-(y/5.4))*y;

    t=0:h:23;
    y = zeros(length(t),1); % important to pre-allocate your vectors to save time
    y(1)=1; % this is y(0) = 1 because matlab 

    for n=1:length(t)-1 %length() gives length of vector
        y(n+1)=y(n)+h*y_prime(t(n),y(n)); % Euler's method 
    end
    
    %solution = y(length(t)-1);
    solution = y;
end