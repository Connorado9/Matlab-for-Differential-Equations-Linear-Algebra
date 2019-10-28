%Lotka-Volterra System of Equations for sec. 3.1
function func1 = sys1(t,v)
    a = 1.5; b = 1.1; c = 2.5; d = 1.4; 
    x1 = v(1);   
    x2 = v(2);
    func1 = zeros(2,1);
    func1(1) = -a.*x1 + b.*x1.*x2;
    func1(2) = c.*x2 - d.*x1.*x2;
end