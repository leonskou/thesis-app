clear all;
clc;

%Circuit 5
%Prosomoiosi kiklwmatos piknwti me diilektriko sindedemeno me bataria sinexous tasis

%PARAMETROI
h=0.8; %ypsos oplismou apo 0.2-0.8
d=0.2; %apostasi oplismwn apo 0.2-0.6
Q=1000; %Fortio 500 - 2000  ÏC 
e =20; %1 -80

%&&&&&&&&&&&&&&&&&&&&&&&
L=0.2; %platos oplismou panta stathero
A=h*L;

e0=8.85*10^(-12);
Q0 = Q*10^(-12);
C0=(e0*A/d)*10^(12);
C=(e*e0*A/d)*10^(12);

V = (Q0/C)*10^12;
V0 = Q0/C0*10^12;


E0 = V0/d;  %(Q0/C0)/d = (Q0/(A/d)/d= (Q0/A/d^2) = Q0*d^2/h*L
E = V/d;

%upologismos megethwn
% N1n =num2str(N1, '%6.1f'); ektuposi arithmou


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

%sxediasi endiameso velos
vel3_x0=[-L/10 ,-d+(L/10)*2 ,-d+(L/10)*2 ,-d+L/10 ,-d+(L/10)*2 ,-d+(L/10)*2,-L/10];
vel3_y0=[-0.005 ,-0.005 ,-L/15 ,0 ,+L/15 ,+0.005,+0.005];
% vel3_x=vel3_x0+0.5+(d/2);
% vel3_y=vel3_y0+0.65;


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



dE0 = 0.0002*E0;
E0_x = -[0  dE0-0.03 dE0-0.03 dE0  dE0-0.03 dE0-0.03 0]+0.5;
E0_y = [-0.01 -0.01 -0.04  0 0.04  0.01 0.01];

E1 =  V/L;
dE1 = 0.002*E1;
E1_x = -[0  dE1-0.03 dE1-0.03 dE1  dE1-0.03 dE1-0.03 0]+0.5;
E1_y = [-0.01 -0.01 -0.04  0 0.04  0.01 0.01];

met = 2;
subplot(4, 1, [1,2,3]);
fill(op1_x,op1_y,[0 1 0],...
    op2_x,op2_y,[0 1 0],...
    diil_x,diil_y,[0,1,1],...
    vel_x,vel_y+h/4,[0,0,1],...
    vel_x,vel_y-h/4,[0,0,1],...
    h_x, h_y, [0 0 0],...
    ha_x, ha_y, [0 0 0],...
    hb_x, hb_y, [0 0 0],....
    d_x, d_y,[0 0 0],...
    da_x, da_y, [0 0 0],...
   db_x, db_y, [0 0 0])

hold on
fill(op1_x,op1_y+met,[0 1 0],...
    op2_x,op2_y+met,[0 1 0],...
    vel_x,vel_y+h/4+met,[0,0,1],...
    vel_x,vel_y-h/4+met,[0,0,1],...
    h_x, h_y+met, [0 0 0],...
    ha_x, ha_y+met, [0 0 0],...
    hb_x, hb_y+met, [0 0 0],....
    d_x, d_y+met,[0 0 0],...
    da_x, da_y+met, [0 0 0],...
    db_x, db_y+met, [0 0 0],...
        E0_x , E0_y+2.5, [1 0 1],...
    E1_x , E1_y+0.5, [1 0 1])

l_x = [0 d d 0]+0.5-(d/2);
l_y = [-0.003 -0.003 0.003 0.003]+0.48-h/2-0.05;

la_x = [0.5 0.5 -0.5 -0.5]+0.5+(d/2);
la_y = [-0.025 0.025 0.025 -0.025]+0.48-(h/2)-0.05;

lb_x = [0.002 0.002 -0.002 -0.002]+0.5+(d/2);
lb_y = [-0.025 0.025 0.025 -0.025]+0.48-(h/2)-0.05;

fill(l_x,l_y+h*1.78,[0,0,1]);

axis([-0.1,1.1,-0.7,3.2])

set(gca,'xtick',[]) %apokripsi timwn axona x
set(gca,'ytick',[]) %apokripsi timwn axona y

text(E0_x(3) ,2.6, 'E_0', 'fontsize', 12, 'Color', 'k') 
text(E1_x(3) ,0.6, 'E', 'fontsize', 12, 'Color', 'k') 

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

text(0.43+0.5*d ,h/2+0.68, '+Q', 'fontsize', 20, 'Color', 'r')
text(0.45-0.5*d ,h/2+0.68, '-Q', 'fontsize', 20, 'Color', 'r')

text(h_x(1)-0.05 ,2.7, 'h', 'fontsize', 18, 'Color', 'k')

text(0.48 ,h/2-0.5, 'd', 'fontsize', 16, 'Color', 'k')

% &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
% &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

text(0.5+0.5*d-0.05 ,h/4+0.48, '-', 'fontsize', 16, 'Color', [0 0 1]) 
text(0.5+0.5*d-0.05 ,h/2+0.48, '-', 'fontsize', 16, 'Color', [0 0 1])
text(0.5+0.5*d-0.05 ,-h/2+0.48, '-', 'fontsize', 16, 'Color', [0 0 1])
text(0.5+0.5*d-0.05 ,-h/4+0.48, '-', 'fontsize', 16, 'Color', [0 0 1])

text(0.5-0.5*d+0.05 ,h/4+0.48, '+', 'fontsize', 18, 'Color', [0 0 1])
text(0.5-0.5*d+0.05 ,h/2+0.48, '+', 'fontsize', 18, 'Color', [0 0 1])
text(0.5-0.5*d+0.05 ,-h/2+0.48, '+', 'fontsize', 18, 'Color', [0 0 1])
text(0.5-0.5*d+0.05,-h/4+0.48, '+', 'fontsize', 18, 'Color', [0 0 1])
 

text(0.43+0.5*d ,h/2+0.68+met, '+Q', 'fontsize', 20, 'Color', 'r')
text(0.45-0.5*d ,h/2+0.68+met, '-Q', 'fontsize', 20, 'Color', 'r')

text(h_x(1)-0.05 ,0.7, 'h', 'fontsize', 18, 'Color', 'k')

text(0.48 ,h/2-0.5+met, 'd', 'fontsize', 16, 'Color', 'k')


hold off;

subplot(4, 1, 4)






U0 = 0.5*C0*V0^2;
U = 0.5*C*V^2;

hn =num2str(h ,'%6.1f');
dn =num2str(d ,'%6.1f');
En =num2str(E ,'%6.1f');



en =num2str(e ,'%6.1f');

U0n =num2str(U0*10^(-3) ,'%6.1f');
Un =num2str(U*10^(-3) ,'%6.1f');

C0n =num2str(C0 ,'%6.2f');
Q0n =num2str(Q0 ,'%6.1f');
V0n =num2str(V0 ,'%6.1f');

E0n =num2str(E0 ,'%6.1f');

Cn =num2str(C ,'%6.2f');
Qn =num2str(Q ,'%6.1f');
Vn =num2str(V ,'%6.1f');


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
 
 
 text(0.1+met2, 0.5, 'Q =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.18+met2, 0.5, Qn  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.26+met2, 0.5, 'pC' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
 
 text(0.1+met2, 0.2, 'V_0 =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.18+met2, 0.2, V0n  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.26+met2, 0.2, 'V' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
  text(0.1+met3, 0.8, 'C =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.18+met3, 0.8, Cn  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.26+met3, 0.8, 'pF' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met3, 0.5, 'Q =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.18+met3, 0.5, Qn  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.26+met3, 0.5, 'pC' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
 
 
 text(0.1+met3, 0.2, 'V =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.18+met3, 0.2, Vn  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.26+met3, 0.2, 'V' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')

  text(0.1+met4, 0.8, 'E =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.18+met4, 0.8, En  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.26+met4, 0.8, 'V/m' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')

 text(0.1+met4, 0.6, 'E_0 =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.18+met4, 0.6, E0n  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.26+met4, 0.6, 'V/m' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')

 
text(0.1+met4, 0.4, 'U_0 =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.18+met4, 0.4, U0n  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.26+met4, 0.41, 'x10^{-9}' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.32+met4, 0.41, 'J' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')

 text(0.1+met4, 0.2, 'U =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.18+met4, 0.2, Un  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
text(0.26+met4, 0.21, 'x10^{-9}' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.32+met4, 0.2, 'J' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')


axis([0 1 0 1])
set(gca,'xtick',[]) %apokripsi timwn axona x
set(gca,'ytick',[]) %apokripsi timwn axona y

