function error = populationError(Vin)

load("presas.mat");

N1 = 4;
d1 = 3.1;
a1 = 1.4;
d2 = -1.5;

ttotal = 15;

N2 = Vin(1);
a2 = Vin(2);

sim_options = simset('srcworkspace', 'current');
sim("population", tr, sim_options);

error = norm(N1out - yr, inf);
end