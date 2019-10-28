%%Day 5

f=@(t,y)y*t;

h=0.001; %step size
t=0:h:4;
y = zeros(length(t),1); % important to pre-allocate your vectors to save time
y(1)=1; % this is y(0) = 1 because matlab 

for n=1:length(t)-1 %length() gives length of vector
    y(n+1)=y(n)+h*f(t(n),y(n)); % Euler's method 
end