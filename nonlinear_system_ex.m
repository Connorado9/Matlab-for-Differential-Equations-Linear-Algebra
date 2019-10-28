%x'' - x'(1-x^2) + x=0
%set y = x'
%y' = x'' = x'(1-x^2) - x
%   = y(1-x^2) - x

%x is v(1)
%y is v(2)

%therefore v(2)(1-v(1)^2) - v(1)

function v_out = nonlinear_system_ex(t,v)
    v_out = zeros(2,1); %zero matrix
    v_out(1) = v(2); %v_out(1) is x'
    v_out(2)= v(2)*((1-v(1)^2))-v(1); %v_out(2) is x'' or y'
end