% Example for Eigen value and Eigen vector
%% Chanthini.R.A_3033
clc; 
clear all; 
close all; 
figure('name','Chanthini .R.A')

A=magic(4) %to create 4x4 matrix with no element repeating
[V,D]=eig(A);
disp('Eigen value is ');
disp(D);
disp('Eigen vector is ');
disp(V);
x=A(2,:) 
y=A([2,4],:)
z=A([1,4],[1,4]) %to select 1st and 4th row & 1st and 4th column
                
M=mean(A,'all') %or M=mean(mean(A))
S=sum(A,'all') %or S=sum(sum(A))
SD=std2(A) %standard deviation
p=0:0.1:10
b=sin(p); % function to plot sine wave
plot(p,b,'r','LineWidth',3) %indicates red line of width 3
hold on

c=cos(p); % function to plot cosine wave
plot(p,c,'k','LineWidth',3) %indicates black line of width 3
legend('sine wave','cosine wave');
title('Plot example'); % title of the plot
xlabel('Time','FontWeight','bold'); % or xlabel('\bf Time')
ylabel('Amplitude','FontWeight','bold');
hold off
grid on %to display grid lines
