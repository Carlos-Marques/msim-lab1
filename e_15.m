ttotal = 10;

v0 = 3;
y0 = 5;

m = 30;
B = 5;

sim("car");

figure('Position', [10 10 900 600]);

subplot(2, 1, 1);

plot(t, v, 'r-', 'DisplayName', 'v1');

title('Velocity');
xlabel('t[s]');
ylabel('v[m/s]');
ylh = get(gca,'ylabel');       
ylp = get(ylh, 'Position');
set(ylh, 'Rotation',0, 'Position',ylp-[0.1 0.50 0], 'VerticalAlignment','middle', 'HorizontalAlignment','right');
legend();

hold on;

subplot(2, 1, 2);

plot(t, y, 'r-', 'DisplayName', 'y1');

title('Position');
xlabel('t[s]');
ylabel('y[m]');
ylh = get(gca,'ylabel');       
ylp = get(ylh, 'Position');
set(ylh, 'Rotation',0, 'Position',ylp-[0.1 0 0], 'VerticalAlignment','middle', 'HorizontalAlignment','right');
legend({}, 'Location', 'southeast');

hold on;

m = 15;
B = 5;

sim("car");

subplot(2, 1, 1);

plot(t, v, 'g-', 'DisplayName', 'v2');

subplot(2, 1, 2);

plot(t, y, 'g-', 'DisplayName', 'y2');

m = 30;
B = 15;

sim("car");

subplot(2, 1, 1);

plot(t, v, 'b-', 'DisplayName', 'v3');

subplot(2, 1, 2);

plot(t, y, 'b-', 'DisplayName', 'y3');

clear;