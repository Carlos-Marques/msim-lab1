function t0 = t0Calc(Vin)

l=0.5;

x = Vin(1);
y = Vin(2);

t20 = acos((-y+abs(x)*sqrt(((4*l^2)/((x^2)+(y^2)))-1))/(2*l));
t10 = acos((-y-abs(x)*sqrt(((4*l^2)/((x^2)+(y^2)))-1))/(2*l));

if x < 0
    t10 = -t10;
    t20 = -t20;
end
    
if false == isreal(t10)
    t10 = NaN;
    t20 = NaN;
end

if false == isreal(t20)
    t20 = NaN;
    t10 = NaN;
end

t0 = [t10, t20];
end

