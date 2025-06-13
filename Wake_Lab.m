clc; clear; close all;

format long

set(groot,'defaultLineLineWidth',2)  %sets graph line width as 2
set(groot,'defaultAxesFontSize',22)  %sets graph axes font size as 18
set(groot,'defaulttextfontsize',22)  %sets graph text font size as 18
set(groot,'defaultLineMarkerSize',8) %sets line marker size as 8
set(groot,'defaultAxesXGrid','on')   %sets X axis grid on 
set(groot,'defaultAxesYGrid','on')   %sets Y axis grid on
set(groot,'DefaultAxesBox', 'on')   %sets Axes boxes on 

manodata = readmatrix('Profile and Wake Lab (6).csv');

%% DATA FROM WING TAPPINGS

% chord (m)
c = 0.1524;
% freestream values
P_inf = manodata(2,20);
q_inf = 0.5*manodata(2,21)*manodata(2,22)^2;
rho = manodata(2,21);
% of entire wing
PatPoint = manodata(2:17,5);
DeltaP = manodata(2:17,6);
CP = manodata(2:17,7);
xoc = manodata(5:20,19);
yoc = manodata(5:20,20);

% segmented over surfaces:

% top
top_CP  = manodata(3:2:17,14);
top_xoc = manodata(6:2:20,19);
top_yoc = manodata(6:2:20,20);
top_DeltaP = manodata(3:17,6);
top_P = manodata(3:17,5);
% bottom
bottom_CP = manodata([2:2:16,17],15);
bottom_xoc = manodata([5:2:19,20],19);
bottom_yoc = manodata([5:2:19,20],20);
bottom_DeltaP = manodata([2:2:16,17],6);
bottom_P = manodata([2:2:16,17],5);

% front
front_CP = manodata(9:17,7);
front_xoc = manodata(12:20,19);
front_yoc = manodata(12:20,20);

% back
back_CP = manodata(2:9,7);
back_xoc = manodata(5:12,19);
back_yoc = manodata(5:12,20);

%% DATA FOR WAKE

active_manometers_index = [1,3,5,7:18,20,22,24];
CP_wake = manodata(17+active_manometers_index,7);
P0_wake = manodata(17+active_manometers_index,5);
DeltaP_wake = manodata(17+active_manometers_index,6);

% position relative to point 1
pitot_pos = manodata(21:38,21)/100;
%%
Cp_x_c = figure;
set(Cp_x_c,"windowstate", "maximized");
plot(top_xoc,-top_CP);
hold on
plot(bottom_xoc,-bottom_CP);
legend("Top","Bottom");
xlabel("x/c");
ylabel("Cp");

saveas(Cp_x_c,"Cp_x_c.svg");
%%
Cp_y_c = figure;
set(Cp_y_c,"windowstate", "maximized");
plot(front_yoc,-front_CP);
hold on
plot(back_yoc,-back_CP);
legend("Front","Back");
xlabel("y/c");
ylabel("Cp");

saveas(Cp_y_c,"Cp_y_c.svg");
%%


% % subplot(1,2,1);
% % hold on
% % plot(top_xoc,-top_CP);
% % plot(bottom_xoc,-bottom_CP);
% % legend('top','bottom')
% % xlabel('x/c')
% % ylabel('-Cp')
% % subplot(1,2,2);
% % 
% % hold on
% % plot(front_yoc,-front_CP);
% % plot(back_yoc,-back_CP);
% % legend('front','back')
% % xlabel('y/c')
% % ylabel('-Cp')

%% Profile Drag - Wake Integral

Integrand_Array1 = (sqrt((P0_wake-P_inf)./(q_inf)).*sqrt(1-((P0_wake-P_inf)./(q_inf))));
figure
subplot(1,2,1)
plot(pitot_pos,CP_wake)
subplot(1,2,2)
plot(pitot_pos,Integrand_Array1)
CD_profile = (1/c)*trapz(pitot_pos,Integrand_Array1);
disp(['CD Profile = ', num2str(CD_profile)])

% velocity method
U_oUinf = sqrt(1-CP_wake);
Integrand_Arrayx = U_oUinf.*(1-U_oUinf);
D_x = (1/c)*trapz(pitot_pos,Integrand_Arrayx);
CD_x = D_x / (q_inf*c);
figure 
hold on
plot(pitot_pos,U_oUinf)
ylabel('U/Uinf')



%% Pressure Drag and Lift

CD_Pressure = (2/c)*(trapz(front_yoc,front_CP)-trapz(back_yoc,back_CP));
CD_Skin = CD_profile-CD_Pressure;
disp(['CD Pressure = ', num2str(CD_Pressure)])
disp(['CD Skin = ', num2str(CD_Skin)])
poly_front = polyfit(front_yoc,front_CP,3);
f_front = polyval(poly_front,0:0.001:0.075);
poly_back = polyfit(back_yoc,back_CP,3);
f_back = polyval(poly_back,0:0.001:0.075);
figure
hold on
plot(front_yoc,-front_CP)
plot(0:0.001:0.075,-f_front)
plot(back_yoc,-back_CP)
plot(0:0.001:0.075,-f_back)
CD_PressureBST = (2/c)*(trapz(0:0.001:0.075,f_front-f_back));

CL_Pressure = (2/c)*(trapz(top_xoc,top_CP)-trapz(bottom_xoc,bottom_CP));
disp(['CL Pressure = ', num2str(CL_Pressure)])

%% best measurements
%CD_x;
CD_PressureBST;
%CD_skinx = CD_x-CD_PressureBST;