clear all;
clc;

%Circuit 1
%Prosomoiosi kiklwmatos me piknwti sindedemeno me bataria sinexous tasis

%PARAMETROI

d=0.2; %apostasi oplismwn apo 0.2-0.4
h=0.5; %ypsos oplismou apo 0.2-0.6
V=20; %tasi pigis

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
C=e0*A/d;
Q=C*V;
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

h_x = [-0.002 0.002 0.002 -0.002]+(d/2)+0.6;
h_y = [-h/2 -h/2 h/2 h/2]+0.5;

ha_x = [-0.01 0.01 0.01 -0.01]+(d/2)+0.6;
ha_y = [-0.003 -0.003 0.003 0.003]+0.5-h/2;

hb_x = [-0.01 0.01 0.01 -0.01]+(d/2)+0.6;
hb_y = [-0.003 -0.003 0.003 0.003]+0.5+h/2;

d_x = [0 d d 0]+0.5-(d/2);
d_y = [-0.003 -0.003 0.003 0.003]+0.48-h/2-0.05;

da_x = [0.002 0.002 -0.002 -0.002]+0.5-(d/2);
da_y = [-0.025 0.025 0.025 -0.025]+0.48-(h/2)-0.05;

db_x = [0.002 0.002 -0.002 -0.002]+0.5+(d/2);
db_y = [-0.025 0.025 0.025 -0.025]+0.48-(h/2)-0.05;


subplot(4, 1, [1,2,3]);
fill(op1_x,op1_y,[0 1 0],...
    op2_x,op2_y,[0 1 0],...
    vel_x,vel_y,[0,0,1],...
    vel_x,vel_y+h/4,[0,0,1],...
    vel_x,vel_y+h/2,[0,0,1],...
    vel_x,vel_y-h/4,[0,0,1],...
    vel_x,vel_y-h/2+0.02,[0,0,1],...
    pol1_x,pol1_y,[1 0 0],...
    pol2_x,pol2_y,[1 0 0],...
    h_x, h_y, [0 0 0],...
    ha_x, ha_y, [0 0 0],...
    hb_x, hb_y, [0 0 0],....
    d_x, d_y,[0 0 0],...
    da_x, da_y, [0 0 0],...
    db_x, db_y, [0 0 0])

%sxediasi kalwdiwn
axis([-0.1,1.1,-0.7,1.1])
% set(gca,'xtick',[]) %apokripsi timwn axona x
% set(gca,'ytick',[]) %apokripsi timwn axona y

%orizontia kalwdia

lin_x=[0,0.5-d/2-L/10];
lin_y=[0.5,0.5];
line(lin_x,lin_y,'linewidth',5,'Color',[0,0.0,0])

lin2_x=[1,0.5+d/2+L/10];
lin2_y=[0.5,0.5];
line(lin2_x,lin2_y,'linewidth',5,'Color',[0 0 0])

lin3_x=[1,0.5+d_batt/4+0.01];
lin3_y=[-0.3,-0.3];
line(lin3_x,lin3_y,'linewidth',5,'Color',[0 0 0])

lin4_x=[0,0.5-d_batt/4-0.01];
lin4_y=[-0.3,-0.3];
line(lin4_x,lin4_y,'linewidth',5,'Color',[0 0 0])

%katheta kalwdia

lin5_x=[0,0];
lin5_y=[-0.315,0.515];
line(lin5_x,lin5_y,'linewidth',5,'Color',[0 0 0])

lin6_x=[1,1];
lin6_y=[-0.315,0.515];
line(lin6_x,lin6_y,'linewidth',5,'Color',[0 0 0])

text(0.52+0.5*d ,h/4+0.5, '+', 'FontUnits','normalized','FontSize',0.1,'FontName', 'Unicode', 'Color', 'r') 
text(0.52+0.5*d ,h/2+0.5, '+', 'FontUnits','normalized','FontSize',0.1,'FontName', 'Unicode', 'Color', 'r')
text(0.52+0.5*d ,-h/2+0.5, '+', 'FontUnits','normalized','FontSize',0.1,'FontName', 'Unicode', 'Color', 'r')
text(0.52+0.5*d ,-h/4+0.5, '+', 'FontUnits','normalized','FontSize',0.1,'FontName', 'Unicode', 'Color', 'r')
 
text(0.45-0.5*d ,h/4+0.5, '-', 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'r')
text(0.45-0.5*d ,h/2+0.5, '-', 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'r')
text(0.45-0.5*d ,-h/2+0.5, '-', 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'r')
text(0.45-0.5*d ,-h/4+0.5, '-', 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'r')
 
text(0.45+0.5*d ,h/2+0.55, '+Q', 'FontUnits','normalized','FontSize',0.06,'FontName', 'Unicode', 'Color', 'r')
text(0.45-0.5*d ,h/2+0.55, '-Q', 'FontUnits','normalized','FontSize',0.06,'FontName', 'Unicode', 'Color', 'r')
   
text(0.48 ,-0.60, 'V', 'FontUnits','normalized','FontSize',0.06,'FontName', 'Unicode', 'Color', 'r')
text(0.48+L_batt/2+0.02 ,-h_arnitikou/2, '+', 'FontUnits','normalized','FontSize',0.1,'FontName', 'Unicode', 'Color', 'r')
text(0.48-L_batt/2-0.01 ,-h_arnitikou/2, '-', 'FontUnits','normalized','FontSize',0.1,'FontName', 'Unicode', 'Color', 'r')
   
% text(0.48 ,h/2+0.6, 'E', 'FontUnits','normalized','FontSize',0.1,'FontName', 'Unicode', 'Color', 'b')

text(0.64+L ,h/2+0.32, 'h', 'FontUnits','normalized','FontSize',0.06,'FontName', 'Unicode', 'Color', 'k')

text(0.48 ,h/2-0.15, 'd', 'FontUnits','normalized','FontSize',0.06,'FontName', 'Unicode', 'Color', 'k')

subplot(4, 1, 4)

C=(e0*A/d)*10^12;
Q=C*V;
U = 0.5*C*V^2;
hn =num2str(h ,'%6.1f');
dn =num2str(d ,'%6.1f');
Vn =num2str(V ,'%6.1f');
Cn =num2str(C ,'%6.1f');
Qn =num2str(Q ,'%6.1f');
Un =num2str(U ,'%6.1f');
pin_x = [0 1 1 0];
pin_y = [0 0  1 1];
fill(pin_x,pin_x,[1 1 1],...
    'LineStyle', 'none')

met1 = -0.02;
met2 = 0.2;
met3 = 0.45;
met4 = 0.7;

text(0.1+met1, 0.7, 'h =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.15+met1, 0.7, hn  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.2+met1, 0.7, 'm' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met1, 0.4, 'd =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.15+met1, 0.4, dn  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.2+met1, 0.4, 'm' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
  text(0.1+met2, 0.2, 'Q =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.15+met2, 0.2, Qn  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.22+met2, 0.2, 'pC' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met2, 0.8, 'C =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.15+met2, 0.8, Cn  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.22+met2, 0.8, 'pF' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met2, 0.5, 'V =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.15+met2, 0.5, Vn  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.22+met2, 0.5, 'V' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
  text(0.1+met3, 0.8, 'U =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.15+met3, 0.8, Un  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.22+met3, 0.81, 'x10^{-12} ' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.3+met3, 0.81, 'J' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
text(0.1+met4, 0.8, 'C = å_0Á/d ' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'b')
text(0.1+met4, 0.6, 'Q = CV ' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'b')
text(0.1+met4, 0.4, 'U = 0.5CV^{2} ' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'b')


axis([0 1 0 1])
set(gca,'xtick',[]) %apokripsi timwn axona x
set(gca,'ytick',[]) %apokripsi timwn axona y
  

