%% Sam Nazari
% Adaptive Observer of Kuda & Narendra
% See "Synthesis of an adaptive observer using Lyapunov's Direct Method"

clear,clc

%% Initilization 
Ts = 1/100;
N  = 2000;
TStop = N*Ts
a1hat0 = 3;
a2hat0 = 12;
b1hat0 = 0.5;
b2hat0 = 1;

%% Plant (unknown)
A = [-5 1; -10 0];
B = [1;2];
C = [1 0];
D = 0;

%% Simulate model
sim('adaptiveObs')

%% Plot Results (Sim 1)
figure,subplot(211),
plot(simOne.time,simOne.signals(3).values(:,1)),title('Sim 1: $\hat{a}_1$','interpreter','latex'), hold on,
line('XData',[simOne.time],'YData',[5*ones(length(simOne.time),1)],'LineStyle','--','LineWidth',2,'Color',[0 0.5 0])
ylim([0 15])

subplot(212),
plot(simOne.time,simOne.signals(3).values(:,2)),title('Sim 1: $\hat{a}_2$','interpreter','latex'),hold on,
line('XData',[simOne.time],'YData',[10*ones(length(simOne.time),1)],'LineStyle','--','LineWidth',2,'Color',[0 0.5 0])
ylim([0 15]),xlabel('Time (sec)')

figure,subplot(211),
plot(simOne.time,simOne.signals(4).values(:,1)),title('Sim 1: $\hat{b}_1$','interpreter','latex'), hold on,
line('XData',[simOne.time],'YData',[1*ones(length(simOne.time),1)],'LineStyle','--','LineWidth',2,'Color',[0 0.5 0])
ylim([0 3])

subplot(212),
plot(simOne.time,simOne.signals(4).values(:,2)),title('Sim 1: $\hat{b}_2$','interpreter','latex'),hold on,
line('XData',[simOne.time],'YData',[2*ones(length(simOne.time),1)],'LineStyle','--','LineWidth',2,'Color',[0 0.5 0])
ylim([0 3]),xlabel('Time (sec)')

%% Plot Results (Sim 2)
figure,subplot(211),
plot(simTwo.time,simTwo.signals(3).values(:,1)),title('Sim 2: $\hat{a}_1$','interpreter','latex'), hold on,
line('XData',[simTwo.time],'YData',[5*ones(length(simTwo.time),1)],'LineStyle','--','LineWidth',2,'Color',[0 0.5 0])
ylim([0 15])

subplot(212),
plot(simTwo.time,simTwo.signals(3).values(:,2)),title('Sim 2: $\hat{a}_2$','interpreter','latex'),hold on,
line('XData',[simTwo.time],'YData',[10*ones(length(simTwo.time),1)],'LineStyle','--','LineWidth',2,'Color',[0 0.5 0])
ylim([0 15]),xlabel('Time (sec)')

figure,subplot(211),
plot(simTwo.time,simTwo.signals(4).values(:,1)),title('Sim 2: $\hat{b}_1$','interpreter','latex'), hold on,
line('XData',[simTwo.time],'YData',[1*ones(length(simTwo.time),1)],'LineStyle','--','LineWidth',2,'Color',[0 0.5 0])
ylim([0 3])

subplot(212),
plot(simTwo.time,simTwo.signals(4).values(:,2)),title('Sim 2: $\hat{b}_2$','interpreter','latex'),hold on,
line('XData',[simTwo.time],'YData',[2*ones(length(simTwo.time),1)],'LineStyle','--','LineWidth',2,'Color',[0 0.5 0])
ylim([0 3]),xlabel('Time (sec)')