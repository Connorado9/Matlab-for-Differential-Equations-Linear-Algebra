%x(t)'' = 8.53*(1?x^2(t))*x'(t) + x(t) ? 1.2*sin((2Pi/10)*t)
%set y = x'
%and y' = x''

%y' = x'' = 8.53*(1?v(1)^2)*v(2) + v(1) ? 1.2*sin((2Pi/10)*t

function v_out = second_order_system(t,v)
    v_out = zeros(2,1); %zero matrix
    v_out(1) = v(2); %v_out(1) is x'
    v_out(2) = (8.53*(1-(v(1))^2)*v(2)) - v(1) + (1.2*sin(((2*pi)/10)*t)); %v_out(2) is x'' or y'
end