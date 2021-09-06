clear all;
clc;

%Circuit 3
%Prosomoiosi kiklwmatos me 2 piknwtes sindedemenous parallila me bataria sinexous tasis

%PARAMETROI
h=0.5; %ypsos oplismou apo 0.2-0.5
d=0.6; %apostasi oplismwn apo 0.2-0.6

h2=0.6;%ypsos oplismou apo 0.2-0.4
d2=0.3;%apostasi oplismwn apo 0.2-0.3

V=20; %tasi pigis

h1=h;
d1=d;

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
op1_y0 =[-h1/2 ,-h1/2, h1/2,h1/2];

op1_x=op1_x0+0.5-(d1/2);
op1_y=op1_y0+1;

op2_x0 =[-L/10 ,L/10 ,L/10 ,-L/10];
op2_y0 =[-h1/2 ,-h1/2, h1/2,h1/2];

op2_x=op2_x0+0.5+(d1/2);
op2_y=op2_y0+1;

op3_x0 =[-L/10 ,L/10 ,L/10 ,-L/10];
op3_y0 =[-h2/2 ,-h2/2, h2/2,h2/2];

op3_x=op3_x0+0.5-(d2/2);
op3_y=op3_y0+0.2;

op4_x0 =[-L/10 ,L/10 ,L/10 ,-L/10];
op4_y0 =[-h2/2 ,-h2/2, h2/2,h2/2];

op4_x=op4_x0+0.5+(d2/2);
op4_y=op4_y0+0.2;

%sxediasi velos
vel_x10=[-L/10 ,-d1+(L/10)*2 ,-d1+(L/10)*2 ,-d1+L/10 ,-d1+(L/10)*2 ,-d1+(L/10)*2,-L/10];
vel_x20=[-L/10 ,-d2+(L/10)*2 ,-d2+(L/10)*2 ,-d2+L/10 ,-d2+(L/10)*2 ,-d2+(L/10)*2,-L/10];
vel_y0=[-0.005 ,-0.005 ,-L/15 ,0 ,+L/15 ,+0.005,+0.005];
vel1_x=vel_x10+0.5+(d1/2);
vel2_x=vel_x20+0.5+(d2/2);
vel1_y=vel_y0+1;
vel2_y=vel_y0+0.2;


%sxediasi batarias opou pol apo to "polos"
pol1_x0 =[-0.01 ,0.01 ,0.01 ,-0.01];
pol1_y0 =[-h_thetikou/2 ,-h_thetikou/2, h_thetikou/2,h_thetikou/2];

pol1_x=pol1_x0+0.5-(d_batt/4);
pol1_y=pol1_y0-0.5;

pol2_x0 =[-0.01 ,0.01 ,0.01 ,-0.01];
pol2_y0 =[-h_arnitikou/2 ,-h_arnitikou/2, h_arnitikou/2,h_arnitikou/2];

pol2_x=pol2_x0+0.5+(d_batt/4);
pol2_y=pol2_y0-0.5;



h1_x = [-0.002 0.002 0.002 -0.002]+0.47-(d1/2)-0.05;
h1_y = [-h1/2 -h1/2 h1/2 h1/2]+1;

h1a_x = [-0.01 0.01 0.01 -0.01]+0.47-(d1/2)-0.05;
h1a_y = [-0.01 -0.01 0.01 0.01 ]+1+h1/2;

h1b_x = [-0.01 0.01 0.01 -0.01]+0.47-(d1/2)-0.05;
h1b_y = [-0.01 -0.01 0.01 0.01]+1-h1/2;

h2_x = [-0.002 0.002 0.002 -0.002]+0.47-(d2/2)-0.05;
h2_y = [-h2/2 -h2/2 h2/2 h2/2]+0.2;


h2a_x = [-0.01 0.01 0.01 -0.01]+0.47-(d2/2)-0.05;
h2a_y = [-0.01 -0.01 0.01 0.01]+0.2+h2/2;

h2b_x = [-0.01 0.01 0.01 -0.01]+0.47-(d2/2)-0.05;
h2b_y = [-0.01 -0.01 0.01 0.01]+0.2-h2/2;



d1_x = [-d1/2 d1/2  d1/2 -d1/2]+0.5;
d1_y = [-0.003 -0.003 0.003 0.003]+1-h1/2-0.05;

d1a_x = [-0.003 0.003 0.003 -0.003]+0.5-d1/2;
d1a_y = [-0.02 -0.02 0.02 0.02]+1-h1/2-0.05;

d1b_x = [-0.003 0.003 0.003 -0.003]+0.5+d1/2;
d1b_y = [-0.02 -0.02 0.02 0.02]+1-h1/2-0.05;

d2_x = [-d2/2 d2/2  d2/2 -d2/2]+0.5;
d2_y = [-0.003 -0.003 0.003 0.003]+0.2-h2/2-0.05;

d2a_x = [-0.003 0.003 0.003 -0.003]+0.5-d2/2;
d2a_y = [-0.02 -0.02 0.02 0.02]+0.2-h2/2-0.05;

d2b_x = [-0.003 0.003 0.003 -0.003]+0.5+d2/2;
d2b_y = [-0.02 -0.02 0.02 0.02]+0.2-h2/2-0.05;


subplot(4, 1, [1,2,3]);
fill(op1_x,op1_y,[0 1 0],...
    op2_x,op2_y,[0 1 0],...
    vel1_x,vel1_y,[0,0,1],...
    vel1_x,vel1_y+h1/4,[0,0,1],...
    vel1_x,vel1_y+h1/2-0.01,[0,0,1],...
    vel1_x,vel1_y-h1/4,[0,0,1],...
    vel1_x,vel1_y-h1/2+0.01,[0,0,1],...
    h1_x,h1_y, [0 0 0],...
    h2_x,h2_y, [0 0 0],...
    h1a_x, h1a_y, [0 0 0],...
    h1b_x, h1b_y, [0 0 0],...
        h2a_x, h2a_y, [0 0 0],...
    h2b_x, h2b_y, [0 0 0],...
    d1_x, d1_y, [0 0 0],...
    d1a_x, d1a_y, [0 0 0],...
    d1b_x, d1b_y, [0 0 0],...
        d2a_x, d2a_y, [0 0 0],...
    d2b_x, d2b_y, [0 0 0],...
    d2_x, d2_y, [0 0 0])

hold on;

fill(op3_x,op3_y,[0 1 0],...
    op4_x,op4_y,[0 1 0],...
    vel2_x,vel2_y,[0,0,1],...
    vel2_x,vel2_y+h2/4,[0,0,1],...
    vel2_x,vel2_y+h2/2-0.01,[0,0,1],...
    vel2_x,vel2_y-h2/4,[0,0,1],...
    vel2_x,vel2_y-h2/2+0.01,[0,0,1])

axis([-0.2,1.2,-0.9,1.5])

% set(gca,'xtick',[-0.2:0.2:1.2]) %apokripsi timwn axona x
% set(gca,'ytick',[-0.9:0.2:1.5]) %apokripsi timwn axona y

hold on;

fill(pol1_x,pol1_y,[1,0,0],...
    pol2_x,pol2_y,[1,0,0])

hold off;

%sxediasi kalwdiwn

%orizontia kalwdia
lin_x=[0,0.1];
lin_y=[0.6,0.6];
line(lin_x,lin_y,'linewidth',5,'Color',[0,0,0])

lin2_x=[1,0.9];
lin2_y=[0.6,0.6];
line(lin2_x,lin2_y,'linewidth',5,'Color',[0,0,0])

lin3_x=[1,0.5+d_batt/4+0.01];
lin3_y=[-0.5,-0.5];
line(lin3_x,lin3_y,'linewidth',5,'Color',[0,0,0])

lin4_x=[0,0.5-d_batt/4-0.01];
lin4_y=[-0.5,-0.5];
line(lin4_x,lin4_y,'linewidth',5,'Color',[0,0,0])

lin5_x=[0.1,0.5-d/2-L/10];
lin5_y=[1,1];
line(lin5_x,lin5_y,'linewidth',5,'Color',[0,0,0])

lin6_x=[0.9,0.5+d1/2+L/10];
lin6_y=[1,1];
line(lin6_x,lin6_y,'linewidth',5,'Color',[0,0,0])

lin7_x=[0.1,0.5-d2/2-L/10];
lin7_y=[0.2,0.2];
line(lin7_x,lin7_y,'linewidth',5,'Color',[0,0,0])

lin8_x=[0.9,0.5+d2/2+L/10];
lin8_y=[0.2,0.2];
line(lin8_x,lin8_y,'linewidth',5,'Color',[0,0,0])


%katheta kalwdia

lin9_x=[0,0];
lin9_y=[-0.515,0.615];
line(lin9_x,lin9_y,'linewidth',5,'Color',[0,0,0])

lin10_x=[1,1];
lin10_y=[-0.515,0.615];
line(lin10_x,lin10_y,'linewidth',5,'Color',[0,0,0])

lin11_x=[0.1,0.1];
lin11_y=[0.19,1.01];
line(lin11_x,lin11_y,'linewidth',5,'Color',[0,0,0])

lin12_x=[0.9,0.9];
lin12_y=[0.19,1.01];
line(lin12_x,lin12_y,'linewidth',5,'Color',[0,0,0])

text(0.53+0.5*d1 ,h1/4+1, '+', 'fontsize', 16, 'Color', 'r') 
text(0.53+0.5*d1 ,h1/2+1, '+', 'fontsize', 16, 'Color', 'r')
text(0.53+0.5*d1 ,-h1/2+1, '+', 'fontsize', 16, 'Color', 'r')
text(0.53+0.5*d1 ,-h1/4+1, '+', 'fontsize', 16, 'Color', 'r')

text(0.53+0.5*d2 ,h2/4+0.18, '+', 'fontsize', 16, 'Color', 'r') 
text(0.53+0.5*d2 ,h2/2+0.18, '+', 'fontsize', 16, 'Color', 'r')
text(0.53+0.5*d2 ,-h2/2+0.28, '+', 'fontsize', 16, 'Color', 'r')
text(0.53+0.5*d2 ,-h2/4+0.28, '+', 'fontsize', 16, 'Color', 'r')
 
text(0.45-0.5*d1 ,h1/4+1, '-', 'fontsize', 18, 'Color', 'r')
text(0.45-0.5*d1 ,h1/2+1, '-', 'fontsize', 18, 'Color', 'r')
text(0.45-0.5*d1 ,-h1/2+1.06, '-', 'fontsize', 18, 'Color', 'r')
text(0.45-0.5*d1 ,-h1/4+1.06, '-', 'fontsize', 18, 'Color', 'r')

text(0.45-0.5*d2 ,h2/4+0.18, '-', 'fontsize', 18, 'Color', 'r')
text(0.45-0.5*d2 ,h2/2+0.18, '-', 'fontsize', 18, 'Color', 'r')
text(0.45-0.5*d2 ,-h2/2+0.28, '-', 'fontsize', 18, 'Color', 'r')
text(0.45-0.5*d2 ,-h2/4+0.28, '-', 'fontsize', 18, 'Color', 'r')

text(0.45+0.5*d1 ,h1/2+1.1, '+Q', 'fontsize', 16, 'Color', 'r')
text(0.45+0.5*d2 ,h2/2+0.3, '+Q', 'fontsize', 16, 'Color', 'r')
text(0.45-0.5*d1 ,h1/2+1.1, '-Q', 'fontsize', 16, 'Color', 'r')
text(0.45-0.5*d2 ,h2/2+0.3, '-Q', 'fontsize', 16, 'Color', 'r')
   
text(0.48 ,-0.8, 'V', 'fontsize', 16, 'Color', 'r')
text(0.48+L_batt/2+0.02 ,-h_arnitikou, '+', 'fontsize', 16, 'Color', 'r')
text(0.48-L_batt/2-0.01 ,-h_arnitikou, '-', 'fontsize', 18, 'Color', 'r')
   
% text(0.48 ,h1/2+1.08, 'E', 'fontsize', 12, 'Color', 'b')
% text(0.48 ,h2/2+0.28, 'E', 'fontsize', 12, 'Color', 'b')

text(h1_x(1)-0.05 ,1.1, 'h1', 'fontsize', 12, 'Color', 'k')
text(h2_x(1)-0.05 ,0.28, 'h2', 'fontsize', 12, 'Color', 'k')

text((d1_x(1)+d1_x(2))/2-0.02 ,d1_y(2)-0.05, 'd1', 'fontsize', 10, 'Color', 'k')
text(0.48 ,0.2-h2/2-0.12, 'd2', 'fontsize', 10, 'Color', 'k')

subplot(4, 1, 4)

C1=(e0*A/d1)*10^12;
C2=(e0*A/d2)*10^12;
C=C1+C2;
Q=C*V;
V1=V;
V2=V;
Q1=C1*V1;
Q2=C2*V2;

hm =num2str(h1 ,'%6.1f');
hn =num2str(h2 ,'%6.1f');
dm =num2str(d1 ,'%6.1f');
dn =num2str(d2 ,'%6.1f');
Vm =num2str(V1 ,'%6.1f');
Vn =num2str(V2 ,'%6.1f');
Vp =num2str(V ,'%6.1f');
Cm =num2str(C1 ,'%6.2f');
Cn =num2str(C2 ,'%6.2f');
Cp =num2str(C ,'%6.2f');
Qm =num2str(Q1 ,'%6.1f');
Qn =num2str(Q2 ,'%6.1f');
Qp =num2str(Q ,'%6.1f');
pin_x = [0 1 1 0];
pin_y = [0 0  1 1];
fill(pin_x,pin_x,[1 1 1],...
    'LineStyle', 'none')

met1 = 0.0;
met2 = 0.3;
met3 = 0.6;

 text(0.1+met1, 0.9, 'h_1 =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.2+met1, 0.9, hm  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.3+met1, 0.9, 'm' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met1, 0.7, 'd_1 =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.2+met1, 0.7, dm  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.3+met1, 0.7, 'm' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met1, 0.1, 'Q_1 =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.2+met1, 0.1, Qm  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.3+met1, 0.1, 'pC' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met1, 0.5, 'C_1 =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.2+met1, 0.5, Cm  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.3+met1, 0.5, 'pF' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met1, 0.3, 'V_1 =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.2+met1, 0.3, Vm  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.3+met1, 0.3, 'V' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met2, 0.9, 'h_2 =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.2+met2, 0.9, hn  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.3+met2, 0.9, 'm' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')

 text(0.1+met2, 0.7, 'd_2 =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.2+met2, 0.7, dn  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.3+met2, 0.7, 'm' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met2, 0.1, 'Q_2 =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.2+met2, 0.1, Qn  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.3+met2, 0.1, 'pC' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met2, 0.5, 'C_2 =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.2+met2, 0.5, Cn  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.3+met2, 0.5, 'pF' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met2, 0.3, 'V_2 =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.2+met2, 0.3, Vn  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.3+met2, 0.3, 'V' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met3, 0.1, 'Q =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.2+met3, 0.1, Qp  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.3+met3, 0.1, 'pC' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met3, 0.5, 'C =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.2+met3, 0.5, Cp  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.3+met3, 0.5, 'pF' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met3, 0.3, 'V =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.2+met3, 0.3, Vp  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.3+met3, 0.3, 'V' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
axis([0 1 0 1])
set(gca,'xtick',[]) %apokripsi timwn axona x
set(gca,'ytick',[]) %apokripsi timwn axona y
  