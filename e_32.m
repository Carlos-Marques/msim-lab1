%Reset do ambiente de trabalho
clear;
close all;

%Tempo de Simulação
ttotal = 5;

%Condições iniciais
m=1;
l=0.5;
g=9.8;
p10 = 0;
p20 = 0;

%Ângulos iniciais para simular
t10_sim = [0.05 0.2 0.3 0.4];
t20_sim = [0.05 0.2 0.3 0.4];

for n = 1:length(t10_sim)
    t10 = t10_sim(n);
    t20 = t20_sim(n);
    
    sim("pendulum");
    
    figure;
    plot(t1, t2);
    axis square;
    title(sprintf("Curva de Lissajous para \\theta_1(0)=%.2f e \\theta_2(0)=%.2f", t10, t20));
    xlabel("\theta_1");
    ylabel("\theta_2");
end

%%
% *Comentários:* Observa-se que ao aumentar os valores dos ângulos iniciais
% verifica-se que se obtém uma curva de Lissajous cada vez mais irregular,
% com um período de repetição maior.