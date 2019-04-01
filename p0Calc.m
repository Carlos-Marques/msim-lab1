function p0 = p0Calc(Vin)
m=1;
l=0.5;

dt10 = Vin(1);
dt20 = Vin(2);

t10 = Vin(3);
t20 = Vin(4);

p10 = ((m*(l^2))/6)*(8*dt10 + 3*dt20*cos(t10-t20));
p20 = ((m*(l^2))/6)*(2*dt20 + 3*dt10*cos(t10-t20));

p0 = [p10, p20];
end
