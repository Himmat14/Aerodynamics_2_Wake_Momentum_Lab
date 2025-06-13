clc; clear; close all;

format long
s = settings;
s.matlab.fonts.editor.code.Name.TemporaryValue = 'Aptos';
set(groot,'defaultLineLineWidth',2)  %sets graph line width as 2
set(groot,'defaultAxesFontSize',24)  %sets graph axes font size as 18
set(groot,'defaulttextfontsize',24)  %sets graph text font size as 18
set(groot,'defaultLineMarkerSize',14) %sets line marker size as 8
set(groot,'defaultAxesXGrid','on')   %sets X axis grid on 
set(groot,'defaultAxesYGrid','on')   %sets Y axis grid on
set(groot,'DefaultAxesBox', 'on')   %sets Axes boxes on

picturewidth = 30; % set this parameter and keep it forever
hw_ratio = 0.65; % feel free to play with this ratio



%% Base size study

Cp_BS_0_001 = sort(readmatrix("Cp_BS_0.001.csv"),3,"ascend");

x_0_001 = Cp_BS_0_001(:,3);
Cp_0_001 = 2*Cp_BS_0_001(:,4);
% 
% BS_0_001 = figure;
% 
% set(findall(BS_0_001,'-property','FontSize'),'FontSize',24);
% set(findall(BS_0_001,'-property','Interpreter'),'Interpreter','latex') 
% set(findall(BS_0_001,'-property','TickLabelInterpreter'),'TickLabelInterpreter','latex')
% set(BS_0_001,'Units','centimeters','Position',[3 3 picturewidth hw_ratio*picturewidth])
% pos = get(BS_0_001,'Position');
% set(BS_0_001,'PaperPositionMode','Auto','PaperUnits','centimeters','PaperSize',[pos(3), pos(4)])
% 
% hold on
% % ylim([-1,1]);
% plot(x_0_001,Cp_0_001, 'r-' );
% xlabel("x/c");
% ylabel("C_p");
% hold off
%
% saveas(BS_0_001,"E:\Y2\Wake Lab\BS_0_001.svg");
% 
% %%

Cp_BS_0_008 = sort(readmatrix("Cp_BS_0.008.csv"),3,"ascend");

x_0_008 = Cp_BS_0_008(:,3);
Cp_0_008 = 2*Cp_BS_0_008(:,4);

% BS_0_008 = figure;
% 
% set(findall(BS_0_008,'-property','FontSize'),'FontSize',24);
% set(findall(BS_0_008,'-property','Interpreter'),'Interpreter','latex') 
% set(findall(BS_0_008,'-property','TickLabelInterpreter'),'TickLabelInterpreter','latex')
% set(BS_0_008,'Units','centimeters','Position',[3 3 picturewidth hw_ratio*picturewidth])
% pos = get(BS_0_008,'Position');
% set(BS_0_008,'PaperPositionMode','Auto','PaperUnits','centimeters','PaperSize',[pos(3), pos(4)])
% 
% hold on
% % ylim([-1,1]);
% plot(x_0_008,Cp_0_008, 'r-' );
% xlabel("x/c");
% ylabel("C_p");
% hold off
% 
% saveas(BS_0_008,"E:\Y2\Wake Lab\BS_0_008.svg");
% 
% %%

Cp_BS_0_01 = sort(readmatrix("Cp_BS_0.01.csv"),3,"ascend");

x_0_01 = Cp_BS_0_01(:,3);
Cp_0_01 = 2*Cp_BS_0_01(:,4);

% BS_0_01 = figure;
% 
% set(findall(BS_0_01,'-property','FontSize'),'FontSize',24);
% set(findall(BS_0_01,'-property','Interpreter'),'Interpreter','latex') 
% set(findall(BS_0_01,'-property','TickLabelInterpreter'),'TickLabelInterpreter','latex')
% set(BS_0_01,'Units','centimeters','Position',[3 3 picturewidth hw_ratio*picturewidth])
% pos = get(BS_0_01,'Position');
% set(BS_0_01,'PaperPositionMode','Auto','PaperUnits','centimeters','PaperSize',[pos(3), pos(4)])
% 
% hold on
% % ylim([-1,1]);
% plot(x_0_01,Cp_0_01, 'r-' );
% xlabel("x/c");
% ylabel("C_p");
% hold off
% 
% saveas(BS_0_01,"E:\Y2\Wake Lab\BS_0_01.svg");
% 
% 
% %%
% 
Cp_BS_0_1 = sort(readmatrix("Cp_BS_0.1.csv"),3,"ascend");

x_0_1 = Cp_BS_0_1(:,3);
Cp_0_1 = 2*Cp_BS_0_1(:,4);

% BS_0_1 = figure;
% 
% set(findall(BS_0_1,'-property','FontSize'),'FontSize',24);
% set(findall(BS_0_1,'-property','Interpreter'),'Interpreter','latex') 
% set(findall(BS_0_1,'-property','TickLabelInterpreter'),'TickLabelInterpreter','latex')
% set(BS_0_1,'Units','centimeters','Position',[3 3 picturewidth hw_ratio*picturewidth])
% pos = get(BS_0_1,'Position');
% set(BS_0_1,'PaperPositionMode','Auto','PaperUnits','centimeters','PaperSize',[pos(3), pos(4)])
% 
% 
% hold on
% % ylim([-1,1]);
% plot(x_0_1,Cp_0_1, 'r-' );
% xlabel("x/c");
% ylabel("C_p");
% hold off
% 
% saveas(BS_0_1,"E:\Y2\Wake Lab\BS_0_1.svg");
% 
% 


%%


BS_Study = figure;

set(findall(BS_Study,'-property','FontSize'),'FontSize',24);
set(findall(BS_Study,'-property','Interpreter'),'Interpreter','latex') 
set(findall(BS_Study,'-property','TickLabelInterpreter'),'TickLabelInterpreter','latex')
set(BS_Study,'Units','centimeters','Position',[3 3 picturewidth hw_ratio*picturewidth])
pos = get(BS_Study,'Position');
set(BS_Study,'PaperPositionMode','Auto','PaperUnits','centimeters','PaperSize',[pos(3), pos(4)])


hold on
% ylim([-1,1]);
plot(x_0_001,Cp_0_001, 'b-.', DisplayName='Base Size = 0.001m' );
plot(x_0_008,Cp_0_008, 'r-', DisplayName='Base Size = 0.008m' );
plot(x_0_01,Cp_0_01, 'g:' , DisplayName='Base Size = 0.010m' );
% plot(x_0_1,Cp_0_1, 'k--' );

legend(Location="northeast")
xlabel("x/c");
ylabel("C_p");
hold off

saveas(BS_Study,"E:\Y2\Wake Lab\BS_Study.svg");



%%

manodata = readmatrix('E:\Y2\Wake Lab\Profile and Wake Lab (6).csv');

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

cp_error = 0.1;

% top
top_CP  = -2*manodata(3:2:17,14);
error_top_CP = ones(1,length(top_CP)).*cp_error;
top_xoc = manodata(6:2:20,19);
top_yoc = manodata(6:2:20,20);
top_DeltaP = manodata(3:17,6);
top_P = manodata(3:17,5);

% bottom
bottom_CP = -2*manodata([2:2:16,17],15);
error_bottom_CP = ones(1,length(bottom_CP)).*cp_error;
bottom_xoc = manodata([5:2:19,20],19);
bottom_yoc = manodata([5:2:19,20],20);
bottom_DeltaP = manodata([2:2:16,17],6);
bottom_P = manodata([2:2:16,17],5);

% front
front_CP = -1*manodata(9:17,7);
error_front_CP = ones(1,length(front_CP)).*cp_error;
front_xoc = manodata(12:20,19);
front_yoc = manodata(12:20,20);

% back
back_CP = -1*manodata(2:9,7);
error_back_CP = ones(1,length(back_CP)).*cp_error;
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

x_spline_top = linspace(top_xoc(1),top_xoc(end),1000);
x_spline_bottom = linspace(bottom_xoc(1),bottom_xoc(end),1000);

spline_top_xoc = spline(top_xoc,-top_CP,x_spline_top);
spline_bottom_xoc = spline(bottom_xoc,-bottom_CP,x_spline_bottom);

Cp_x_c = figure;

set(findall(Cp_x_c,'-property','FontSize'),'FontSize',24);
set(findall(Cp_x_c,'-property','Interpreter'),'Interpreter','latex') 
set(findall(Cp_x_c,'-property','TickLabelInterpreter'),'TickLabelInterpreter','latex')
set(Cp_x_c,'Units','centimeters','Position',[3 3 picturewidth hw_ratio*picturewidth])
pos = get(Cp_x_c,'Position');
set(Cp_x_c,'PaperPositionMode','Auto','PaperUnits','centimeters','PaperSize',[pos(3), pos(4)])

plot(top_xoc,-top_CP,'bx', DisplayName='Top');
hold on
errorbar(top_xoc,-top_CP,error_top_CP,color = 'b', LineWidth=2,LineStyle='none',DisplayName='Top, Cp Error')
plot(x_spline_top,spline_top_xoc,'b-.',DisplayName='Top, Spline Fit');
plot(bottom_xoc,-bottom_CP,'ro', DisplayName='Bottom');
errorbar(bottom_xoc,-bottom_CP,error_bottom_CP,color = 'r', LineWidth=2,LineStyle='none',DisplayName='Bottom, Cp Error')
plot(x_spline_bottom,spline_bottom_xoc,'r--',DisplayName='Bottom, Spline Fit');

legend(Location= "best");
xlabel("x/c");
ylabel("C_P");

saveas(Cp_x_c,"E:\Y2\Wake Lab\Cp_x_c.svg");

%%

x_spline_front = linspace(front_yoc(1),front_yoc(end),1000);
x_spline_back = linspace(back_yoc(1),back_yoc(end),1000);

spline_front_xoc = spline(front_yoc,-front_CP,x_spline_front);
spline_back_xoc = spline(back_yoc,-back_CP,x_spline_back);

Cp_y_c = figure;

set(findall(Cp_y_c,'-property','FontSize'),'FontSize',24);
set(findall(Cp_y_c,'-property','Interpreter'),'Interpreter','latex') 
set(findall(Cp_y_c,'-property','TickLabelInterpreter'),'TickLabelInterpreter','latex')
set(Cp_y_c,'Units','centimeters','Position',[3 3 picturewidth hw_ratio*picturewidth])
pos = get(Cp_y_c,'Position');
set(Cp_y_c,'PaperPositionMode','Auto','PaperUnits','centimeters','PaperSize',[pos(3), pos(4)])

plot(front_yoc,-front_CP,'bx',DisplayName='Front');
hold on
plot(x_spline_front,spline_front_xoc,'b-.',DisplayName='Front, Spline Fit');
errorbar(front_yoc,-front_CP,error_front_CP,color = 'b', LineWidth=2,LineStyle='none',DisplayName='Front, Cp Error')
plot(back_yoc,-back_CP,'ro', DisplayName='Back');
plot(x_spline_back,spline_back_xoc,'r--', DisplayName='Back, Spline Fit');
errorbar(back_yoc,-back_CP,error_back_CP,color = 'r', LineWidth=2,LineStyle='none',DisplayName='Back, Cp Error')
legend(Location= "best");
xlabel("y/c");
ylabel("C_P");

saveas(Cp_y_c,"E:\Y2\Wake Lab\Cp_y_c.svg");


%% Profile Drag - Wake Integral

Integrand_Array1 = (sqrt((P0_wake-P_inf)./(q_inf)).*sqrt(1-((P0_wake-P_inf)./(q_inf))));
% figure
% subplot(1,2,1)
% plot(pitot_pos,CP_wake)
% subplot(1,2,2)
% plot(pitot_pos,Integrand_Array1)
CD_profile = (1/c)*trapz(pitot_pos,Integrand_Array1);
% disp(['CD Profile = ', num2str(CD_profile)])

% velocity method
U_w = manodata(2,22)*sqrt(1-CP_wake);

U_w2 = [26.41833051,26.41833051,26.41833051,26.41833051,26.29573899,25.92448639,25.79954838,25.42105039,25.16555596,25.03683104,25.16555596,25.42105039,25.67400239,26.04882517,26.17257326,26.41833051,26.41833051,26.41833051];
U_oUinf = U_w2./U_w2(1);

Velo_err = [0.116579345,0.116579345,0.116579345,0.116579345,0.11603837,0.114400099,0.11384877,0.112178527,0.111051076,0.110483036,0.111051076,0.112178527,0.113294759,0.114948784,0.115494862,0.116579345,0.116579345,0.116579345];

%% 
% 
% velocity_profile = figure;
% 
% set(findall(velocity_profile,'-property','FontSize'),'FontSize',24);
% set(findall(velocity_profile,'-property','Interpreter'),'Interpreter','latex') 
% set(findall(velocity_profile,'-property','TickLabelInterpreter'),'TickLabelInterpreter','latex')
% set(velocity_profile,'Units','centimeters','Position',[3 3 picturewidth hw_ratio*picturewidth])
% pos = get(velocity_profile,'Position');
% set(velocity_profile,'PaperPositionMode','Auto','PaperUnits','centimeters','PaperSize',[pos(3), pos(4)])
% 
% hold on
% plot(pitot_pos,U_oUinf,'k--')
% plot(pitot_pos,U_oUinf,'rx')
% errorbar(pitot_pos,U_oUinf,2*Velo_err/U_w2(1),'r.',LineWidth=1)
% title('Nondimensional Wake Velocity Plot')
% ylabel('U_w/U_{inf}')
% xlabel('Position Relative to 1st Pitot Tube (m)')
% 
% saveas(velocity_profile,'E:\Y2\Wake Lab\velocity_profile.svg');

%%

Integrand_Arrayx = U_oUinf.*(1-U_oUinf);

Integrand_plot = figure;

x_spline_intergrand = linspace(pitot_pos(1),pitot_pos(end),1000);
spline_intergrand = spline(pitot_pos,Integrand_Arrayx,x_spline_intergrand);

f__ = fit(pitot_pos,Integrand_Arrayx','gauss1');

disp(f__)

set(findall(Integrand_plot,'-property','FontSize'),'FontSize',24);
set(findall(Integrand_plot,'-property','Interpreter'),'Interpreter','latex') 
set(findall(Integrand_plot,'-property','TickLabelInterpreter'),'TickLabelInterpreter','latex')
set(Integrand_plot,'Units','centimeters','Position',[3 3 picturewidth hw_ratio*picturewidth])
pos = get(Integrand_plot,'Position');
set(Integrand_plot,'PaperPositionMode','Auto','PaperUnits','centimeters','PaperSize',[pos(3), pos(4)])

hold on
% plot(pitot_pos,Integrand_Arrayx,'r--')
% plot(x_spline_intergrand,spline_intergrand,'r:');
errorbar(pitot_pos,Integrand_Arrayx,0.050869*Integrand_Arrayx,0.050869*Integrand_Arrayx, Color='b',linestyle = 'none', LineWidth=2)

% plot(pitot_pos,Integrand_Arrayx,'rx',MarkerSize=12)

% errorbar(pitot_pos,Integrand_Arrayx,0.050869*Integrand_Arrayx,'r',LineStyle='none',LineWidth=1, colour = "#FFFFFF")

plot(f__, pitot_pos, Integrand_Arrayx, 'b-.x');

% title('Momentum Deficit (Integrand Plot)')

ylabel('Integrand')
xlabel('y_w [m]')
legend('Error Bars', 'Experimental', 'Gaussian Fit', location = 'northeast')
hold off
CD_x = (2/c)*trapz(pitot_pos,Integrand_Arrayx);
sum = 0;
for i= 1:length(CD_x)
    sum = sum+CD_x;
end

disp(num2str(sum))

    % 'is the profile drag')

saveas(Integrand_plot,'E:\Y2\Wake Lab\Integrand_plot.svg');


%% Pressure Drag and Lift

% old vals
CD_Pressure = (2/c)*(trapz(front_yoc,front_CP)-trapz(back_yoc,back_CP));
CD_Skin = CD_profile-CD_Pressure;
disp(['CD Pressure = ', num2str(CD_Pressure)]);
disp(['CD Skin = ', num2str(CD_Skin)]);
poly_front = polyfit(front_yoc,front_CP,3);
f_front = polyval(poly_front,0:0.001:0.075);
poly_back = polyfit(back_yoc,back_CP,3);
f_back = polyval(poly_back,0:0.001:0.075);

%figure
%hold on
%plot(front_yoc,-front_CP)
%plot(0:0.001:0.075,-f_front)
%plot(back_yoc,-back_CP)
%plot(0:0.001:0.075,-f_back)

CD_PressureBST = (2/c)*(trapz(0:0.001:0.075,f_front-f_back));

% new vals
CP_e = [0.210,-0.050,0.075,0.117,-0.117,-0.059,-0.293,-0.251,-0.578,-0.662,-0.394,-0.226,0.201,0.495,1.090,1.408];
CP_eback = CP_e(1:8);
CP_efront = CP_e(8:16);

[poly_efront,~] = polyfit(front_yoc,CP_efront,4);
f_efront = polyval(poly_efront,0:0.001:0.075);
[poly_eback,~] = polyfit(back_yoc,CP_eback,4);
f_eback = polyval(poly_eback,0:0.001:0.075);









CD_PressureBST2 = (2/c)*(trapz(0:0.001:0.075,f_efront-f_eback));


%%
% 
% Cp_front_plot = figure;
% 
% set(findall(Cp_front_plot,'-property','FontSize'),'FontSize',24);
% set(findall(Cp_front_plot,'-property','Interpreter'),'Interpreter','latex') 
% set(findall(Cp_front_plot,'-property','TickLabelInterpreter'),'TickLabelInterpreter','latex')
% set(Cp_front_plot,'Units','centimeters','Position',[3 3 picturewidth hw_ratio*picturewidth])
% pos = get(Cp_front_plot,'Position');
% set(Cp_front_plot,'PaperPositionMode','Auto','PaperUnits','centimeters','PaperSize',[pos(3), pos(4)])
% 
% hold on
% 
% plot(front_yoc,CP_efront,'xb')
% plot(back_yoc,CP_eback,'ro')
% 
% plot(0:0.001:0.075,f_efront,'b--')
% plot(0:0.001:0.075,f_eback,'r-.')
% 
% %plot(back_yoc,-CP_eback,'r-.',LineWidth=2)
% %plot(front_yoc,-CP_efront,'b--',LineWidth=2)
% 
% errorbar(front_yoc,CP_efront,CP_efront*0.17050753,'b.',LineWidth=1)
% errorbar(back_yoc,CP_eback,CP_eback*0.17050753,'r.',LineWidth=1)
% 
% set(gca,'YDir','reverse')
% 
% title('Pressure Coefficients, Rear and Front')
% ylabel('Pressure Coefficient, C_P')
% xlabel('Nondimensional Thickness, y/c')
% legend('Front Datapoints','Rear Datapoints','4th Order Regression, Front','4th Order Regression, Back', Location='best')
% 
% saveas(Cp_front_plot,'E:\Y2\Wake Lab\Cp_front_plot.svg');
% 
% 
% CL_Pressure = (2/c)*(trapz(top_xoc,top_CP)-trapz(bottom_xoc,bottom_CP));
% disp(['CL Pressure = ', num2str(CL_Pressure)])

%% best measurements

CD_PressureBST;
CD_skinx = CD_x-CD_PressureBST;