clear all;
clc;

%Circuit 5
%Prosomoiosi kiklwmatos piknwti me diilektriko sindedemeno me bataria sinexous tasis

%PARAMETROI
h=0.8; %ypsos oplismou apo 0.2-0.8
d=0.4; %apostasi oplismwn apo 0.2-0.6
V=10; %tasi pigis
e =20; %1 -80

%battery
L_batt=0.1; %platos polou
d_batt=0.1; %apostasi polwn apo 0.45-0.55
%arnitikos polos
h_thetikou=0.2; %ypsos +polou apo -0.35 ews -0.55
A_thetikou=h_thetikou*L_batt; %embado +polou
%thetikos polos
h_arnitikou=0.4; %ypsos +polou apo -0.5 ews -0.1
A_arnitikou=h_arnitikou*L_batt; %embado +polou

%upologismos megethwn
% N1n =num2str(N1, '%6.1f'); ektuposi arithmou
L=0.2; %platos oplismou panta stathero
A=h*L;
e0=8.85*10^(-12);

%Cn =num2str(C, '%6.1f');

%sxediasi oplismou
op1_x0 =[-L/10 ,L/10 ,L/10 ,-L/10];
op1_y0 =[-h/2 ,-h/2, h/2,h/2];

op1_x=op1_x0+0.5-(d/2);
op1_y=op1_y0+0.5;

op2_x0 =[-L/10 ,L/10 ,L/10 ,-L/10];
op2_y0 =[-h/2 ,-h/2, h/2,h/2];

op2_x=op2_x0+0.5+(d/2);
op2_y=op2_y0+0.5;

%sxediasi diilektrikou

diil_x0 =[-d/2+L/10 ,d/2-L/10 ,d/2-L/10 ,-d/2+L/10];
diil_y0 =[-h/2 ,-h/2, h/2,h/2];

diil_x=diil_x0+0.5;
diil_y=diil_y0+0.5;

hold on;

%sxediasi velos
vel_x0=[-L/10 ,-d+(L/10)*2 ,-d+(L/10)*2 ,-d+L/10 ,-d+(L/10)*2 ,-d+(L/10)*2,-L/10];
vel_y0=[-0.005 ,-0.005 ,-L/15 ,0 ,+L/15 ,+0.005,+0.005];
vel_x=vel_x0+0.5+(d/2);
vel_y=vel_y0+0.49;

%sxediasi batarias opou pol apo to "polos"
pol1_x0 =[-0.01 ,0.01 ,0.01 ,-0.01];
pol1_y0 =[-h_thetikou/2 ,-h_thetikou/2, h_thetikou/2,h_thetikou/2];

pol1_x=pol1_x0+0.5-(d_batt/4);
pol1_y=pol1_y0-0.3;

pol2_x0 =[-0.01 ,0.01 ,0.01 ,-0.01];
pol2_y0 =[-h_arnitikou/2 ,-h_arnitikou/2, h_arnitikou/2,h_arnitikou/2];

pol2_x=pol2_x0+0.5+(d_batt/4);
pol2_y=pol2_y0-0.3;

%grammes h kai d

h_x = [-0.002 0.002 0.002 -0.002]+0.45-(d/2)-0.05;
h_y = [-h/2 -h/2 h/2 h/2]+0.5;

ha_x = [-0.01 0.01 0.01 -0.01]+0.45-(d/2)-0.05;
ha_y = [-0.003 -0.003 0.003 0.003]+0.5-h/2;

hb_x = [-0.01 0.01 0.01 -0.01]+0.45-(d/2)-0.05;
hb_y = [-0.003 -0.003 0.003 0.003]+0.5+h/2;

d_x = [0 d d 0]+0.5-(d/2);
d_y = [-0.003 -0.003 0.003 0.003]+0.48-h/2-0.05;

da_x = [0.002 0.002 -0.002 -0.002]+0.5-(d/2);
da_y = [-0.025 0.025 0.025 -0.025]+0.48-(h/2)-0.05;

db_x = [0.002 0.002 -0.002 -0.002]+0.5+(d/2);
db_y = [-0.025 0.025 0.025 -0.025]+0.48-(h/2)-0.05;

E =  V/L;
dE = 0.002*E;
E_x = -[0  dE-0.03 dE-0.03 dE  dE-0.03 dE-0.03 0]+0.6;
E_y = [-0.01 -0.01 -0.04  0 0.04  0.01 0.01];

met = 2;
subplot(4, 1, [1,2,3]);
fill(op1_x,op1_y,[0 1 0],...
    op2_x,op2_y,[0 1 0],...
    diil_x,diil_y,[0,1,1],...
    vel_x,vel_y+h/4,[0,0,1],...
    vel_x,vel_y-h/4,[0,0,1],...
    pol1_x,pol1_y,[1 0 0],...
    pol2_x,pol2_y,[1 0 0],...
    h_x, h_y, [0 0 0],...
    ha_x, ha_y, [0 0 0],...
    hb_x, hb_y, [0 0 0],....
    d_x, d_y,[0 0 0],...
    da_x, da_y, [0 0 0],...
    db_x, db_y, [0 0 0],...
    E_x , E_y+2.5, [0 0 1],...
    E_x , E_y+0.5, [0 0 1])

hold on
fill(op1_x,op1_y+met,[0 1 0],...
    op2_x,op2_y+met,[0 1 0],...
    vel_x,vel_y+h/4+met,[0,0,1],...
    vel_x,vel_y-h/4+met,[0,0,1],...
    pol1_x,pol1_y+met,[1 0 0],...
    pol2_x,pol2_y+met,[1 0 0],...
    h_x, h_y+met, [0 0 0],...
    ha_x, ha_y+met, [0 0 0],...
    hb_x, hb_y+met, [0 0 0],....
    d_x, d_y+met,[0 0 0],...
    da_x, da_y+met, [0 0 0],...
    db_x, db_y+met, [0 0 0])

   


axis([-0.1,1.1,-0.7,3.2])

set(gca,'xtick',[]) %apokripsi timwn axona x
set(gca,'ytick',[]) %apokripsi timwn axona y

fill(pol1_x,pol1_y,[1,0,0],...
    pol2_x,pol2_y,[1,0,0])


%orizontia kalwdia
lin_x=[0,0.5-d/2-L/10];
lin_y=[0.5,0.5];
line(lin_x,lin_y,'linewidth',5,'Color',[0,0,0])

lin2_x=[1,0.5+d/2+L/10];
lin2_y=[0.5,0.5];
line(lin2_x,lin2_y,'linewidth',5,'Color',[0,0,0])

lin3_x=[1,0.5+d_batt/4+0.01];
lin3_y=[-0.3,-0.3];
line(lin3_x,lin3_y,'linewidth',5,'Color',[0,0,0])

lin4_x=[0,0.5-d_batt/4-0.01];
lin4_y=[-0.3,-0.3];
line(lin4_x,lin4_y,'linewidth',5,'Color',[0,0,0])

%katheta kalwdia

lin5_x=[0,0];
lin5_y=[-0.315,0.515];
line(lin5_x,lin5_y,'linewidth',5,'Color',[0,0,0])

lin6_x=[1,1];
lin6_y=[-0.315,0.515];
line(lin6_x,lin6_y,'linewidth',5,'Color',[0,0,0])

text(E_x(3) ,2.6, 'E', 'fontsize', 16, 'Color', 'k') 
text(E_x(3) ,0.6, 'E', 'fontsize', 16, 'Color', 'k') 

text(0.55+0.5*d ,h/4+2.5, '+', 'fontsize', 16, 'Color', 'r') 
text(0.55+0.5*d ,h/2+2.5, '+', 'fontsize', 16, 'Color', 'r')
text(0.55+0.5*d ,-h/2+2.5, '+', 'fontsize', 16, 'Color', 'r')
text(0.55+0.5*d ,-h/4+2.5, '+', 'fontsize', 16, 'Color', 'r')

text(0.55-0.5*d-0.1 ,h/4+2.5, '-', 'fontsize', 18, 'Color', 'r')
text(0.55-0.5*d-0.1 ,h/2+2.5, '-', 'fontsize', 18, 'Color', 'r')
text(0.55-0.5*d-0.1 ,-h/2+2.5, '-', 'fontsize', 18, 'Color', 'r')
text(0.55-0.5*d-0.1 ,-h/4+2.5, '-', 'fontsize', 18, 'Color', 'r')


text(0.54+0.5*d ,h/4+0.48, '+', 'fontsize', 16, 'Color', 'r') 
text(0.54+0.5*d ,h/2+0.48, '+', 'fontsize', 16, 'Color', 'r')
text(0.54+0.5*d ,-h/2+0.48, '+', 'fontsize', 16, 'Color', 'r')
text(0.54+0.5*d ,-h/4+0.48, '+', 'fontsize', 16, 'Color', 'r')
 
 
text(0.55-0.5*d-0.1 ,h/4+0.48, '-', 'fontsize', 18, 'Color', 'r')
text(0.55-0.5*d-0.1 ,h/2+0.48, '-', 'fontsize', 18, 'Color', 'r')
text(0.55-0.5*d-0.1 ,-h/2+0.48, '-', 'fontsize', 18, 'Color', 'r')
text(0.55-0.5*d-0.1 ,-h/4+0.48, '-', 'fontsize', 18, 'Color', 'r')

text(0.43+0.5*d ,h/2+0.7, '+Q', 'fontsize', 18, 'Color', 'r')
text(0.45-0.5*d ,h/2+0.7, '-Q', 'fontsize', 18, 'Color', 'r')
   
text(0.48 ,-0.60, 'V', 'fontsize', 20, 'Color', 'r')
text(0.48+L_batt/2+0.02 ,-h_arnitikou/2, '+', 'fontsize', 16, 'Color', 'r')
text(0.48-L_batt/2-0.01 ,-h_arnitikou/2, '-', 'fontsize', 18, 'Color', 'r')

text(h_x(1)-0.03 ,2.7, 'h', 'fontsize', 18, 'Color', 'k')

text(0.48 ,h/2-0.28, 'd', 'fontsize', 14, 'Color', 'k')

% &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
% &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
fill(pol1_x,pol1_y+met,[1,0,0],...
    pol2_x,pol2_y+met,[1,0,0])


%orizontia kalwdia
lin_x=[0,0.5-d/2-L/10];
lin_y=[0.5,0.5]+met;
line(lin_x,lin_y,'linewidth',5,'Color',[0,0,0])

lin2_x=[1,0.5+d/2+L/10];
lin2_y=[0.5,0.5]+met;
line(lin2_x,lin2_y,'linewidth',5,'Color',[0,0,0])

lin3_x=[1,0.5+d_batt/4+0.01];
lin3_y=[-0.3,-0.3]+met;
line(lin3_x,lin3_y,'linewidth',5,'Color',[0,0,0])

lin4_x=[0,0.5-d_batt/4-0.01];
lin4_y=[-0.3,-0.3]+met;
line(lin4_x,lin4_y,'linewidth',5,'Color',[0,0,0])

%katheta kalwdia

lin5_x=[0,0];
lin5_y=[-0.315,0.515]+met;
line(lin5_x,lin5_y,'linewidth',5,'Color',[0,0,0])

lin6_x=[1,1];
lin6_y=[-0.315,0.515]+met;
line(lin6_x,lin6_y,'linewidth',5,'Color',[0,0,0])

text(0.5+0.5*d-0.05 ,h/4+0.48, '-', 'fontsize', 16, 'Color', [0 0 1]) 
text(0.5+0.5*d-0.05 ,h/2+0.48, '-', 'fontsize', 16, 'Color', [0 0 1])
text(0.5+0.5*d-0.05 ,-h/2+0.48, '-', 'fontsize', 16, 'Color', [0 0 1])
text(0.5+0.5*d-0.05 ,-h/4+0.48, '-', 'fontsize', 16, 'Color', [0 0 1])

text(0.5-0.5*d+0.05 ,h/4+0.48, '+', 'fontsize', 18, 'Color', [0 0 1])
text(0.5-0.5*d+0.05 ,h/2+0.48, '+', 'fontsize', 18, 'Color', [0 0 1])
text(0.5-0.5*d+0.05 ,-h/2+0.48, '+', 'fontsize', 18, 'Color', [0 0 1])
text(0.5-0.5*d+0.05,-h/4+0.48, '+', 'fontsize', 18, 'Color', [0 0 1])
 

text(0.43+0.5*d ,h/2+0.6+met, '+Q_0', 'fontsize', 18, 'Color', 'r')
text(0.45-0.5*d ,h/2+0.6+met, '-Q_0', 'fontsize', 18, 'Color', 'r')
   
text(0.48 ,-0.60+met, 'V', 'fontsize', 20, 'Color', 'r')
text(0.48+L_batt/2+0.02 ,-h_arnitikou/2+met, '+', 'fontsize', 16, 'Color', 'r')
text(0.48-L_batt/2-0.01 ,-h_arnitikou/2+met, '-', 'fontsize', 18, 'Color', 'r')

text(h_x(1)-0.05 ,0.7, 'h', 'fontsize', 18, 'Color', 'k')

text(0.48 ,h/2-0.32+met, 'd', 'fontsize', 14, 'Color', 'k')


hold off;

subplot(4, 1, 4)

C0=(e0*A/d)*10^12;
Q0=C0*V;

C=(e*e0*A/d)*10^12;
Q=C*V;


E = V/d;

U0 = 0.5*C0*V^2;
U = 0.5*C*V^2;

hn =num2str(h ,'%6.1f');
dn =num2str(d ,'%6.1f');
Vn =num2str(V ,'%6.1f');

C0n =num2str(C0 ,'%6.2f');
Q0n =num2str(Q0 ,'%6.1f');

en =num2str(e ,'%6.1f');

Cn =num2str(C ,'%6.2f');
Qn =num2str(Q ,'%6.1f');

En =num2str(E ,'%6.1f');

U0n =num2str(U0*10^(-3) ,'%6.2f');
Un =num2str(U*10^(-3) ,'%6.2f');

pin_x = [0 1 1 0];
pin_y = [0 0  1 1];
fill(pin_x,pin_x,[1 1 1],...
    'LineStyle', 'none')

met1 = -0.04;
met2 = 0.15;
met3 = 0.4;
met4 = 0.65;

 text(0.1+met1, 0.8, 'h =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.15+met1, 0.8, hn  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.2+met1, 0.8, 'm' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met1, 0.5, 'd =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.15+met1, 0.5, dn  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.2+met1, 0.5, 'm' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met1, 0.2, 'e =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.15+met1, 0.2, en  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
%  text(0.2+met1, 0.2, 'V' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met2, 0.8, 'C_0 =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.18+met2, 0.8, C0n  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.26+met2, 0.8, 'pF' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met2, 0.2, 'Q_0 =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.18+met2, 0.2, Q0n  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.26+met2, 0.2, 'pC' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met2, 0.5, 'V =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.18+met2, 0.5, Vn  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.26+met2, 0.5, 'V' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met3, 0.8, 'C =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.18+met3, 0.8, Cn  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.26+met3, 0.8, 'pF' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met3, 0.2, 'Q =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.18+met3, 0.2, Qn  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.26+met3, 0.2, 'pC' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met3, 0.5, 'V =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.18+met3, 0.5, Vn  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.26+met3, 0.5, 'V' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
 
 text(0.1+met4, 0.8, 'E =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.18+met4, 0.8, En  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.26+met4, 0.8, 'V/m' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')

 text(0.1+met4, 0.6, 'U_0 =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.18+met4, 0.6, U0n  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.26+met4, 0.61, 'x10^{-9}' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.32+met4, 0.61, 'J' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')

 text(0.1+met4, 0.4, 'U =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.18+met4, 0.4, Un  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
  text(0.26+met4, 0.41, 'x10^{-9}' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.32+met4, 0.41, 'J' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 

axis([0 1 0 1])
set(gca,'xtick',[]) %apokripsi timwn axona x
set(gca,'ytick',[]) %apokripsi timwn axona y

