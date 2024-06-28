clear all;
clc;

restoredefaultpath

% Addpath

addpath C:\dynare\5.0\matlab

% Kør model

dynare ST;

% Fremkald resultater

save('ST_results.mat');

load('ST_results.mat');
nul=zeros(30,1);
t=1:1:30;

% IRF til stød til offentligt forbrug

figure('name', 'Standard model','numbertitle','off')
subplot(3,4,1);
plot(t,y_e_g,'b','LineWidth',1.5);           hold on          
plot(t,nul,'r');
title('BNP');

subplot(3,4,2);
plot(t,c_e_g,'b','LineWidth',1.5);              hold on
plot(t,nul,'r');
title('Privat forbrug');

subplot(3,4,3);
plot(t,i_e_g,'b','LineWidth',1.5);              hold on
plot(t,nul,'r');
title('Investering');

subplot(3,4,4);
plot(t,g_e_g,'b','LineWidth',1.5);              hold on
plot(t,nul,'r');
title('Offentligt forbrug');

subplot(3,4,5);
plot(t,n_e_g,'b','LineWidth',1.5);              hold on
plot(t,nul,'r');
title('Arbejdstimer');

subplot(3,4,6);
plot(t,r_ann_e_g,'b','LineWidth',1.5);              hold on
plot(t,nul,'r');
title('Nominel rente');

subplot(3,4,7);
plot(t,w_e_g,'b','LineWidth',1.5);              hold on
plot(t,nul,'r');
title('Realløn');

subplot(3,4,8);
plot(t,pi_ann_e_g,'b','LineWidth',1.5);              hold on
plot(t,nul,'r');
title('Inflation');

subplot(3,4,9);
plot(t,k_e_g,'b','LineWidth',1.5);              hold on
plot(t,nul,'r');
title('Kapital');

subplot(3,4,10);
plot(t,t_e_g,'b','LineWidth',1.5);              hold on
plot(t,nul,'r');
title('Skat');

subplot(3,4,11);
plot(t,b_e_g,'b','LineWidth',1.5);              hold on
plot(t,nul,'r');
title('Statsobligationer');
