clear all;
clc;

%Circuit 6
%Prosomoiosi kiklwmatos piknwti me diilektriko sindedemeno me bataria sinexous tasis

%PARAMETROI
h=0.6; %ypsos oplismou apo 0.2-0.8
d=0.5; %apostasi oplismwn apo 0.2-0.6
x= 0.4;
V0=20; %tasi pigis
e = 80;


%upologismos megethwn
% N1n =num2str(N1, '%6.1f'); ektuposi arithmou
L=0.2; %platos oplismou panta stathero
A=h*L;
e0=8.85*10^(-12);
C0=e0*A/d*10^12;
Q0=C0*V0;


if x>d-0.03
    
fill(0, 0 ,  [1 1 1]) 
text(0.1, 0.5, 'To x να είναι μικρότερο του d - 0.03' , 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'k')
 axis([0, 1, 0, 1] )
set(gca,'xtick',[]) %apokripsi timwn axona x
set(gca,'ytick',[]) %apokripsi timwn axona y
return
end


%battery
L_batt=0.1; %platos polou
d_batt=0.1; %apostasi polwn apo 0.45-0.55
%arnitikos polos
h_thetikou=0.2; %ypsos +polou apo -0.35 ews -0.55
A_thetikou=h_thetikou*L_batt; %embado +polou
%thetikos polos
h_arnitikou=0.4; %ypsos +polou apo -0.5 ews -0.1
A_arnitikou=h_arnitikou*L_batt; %embado +polou


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
vel_x=vel_x0+0.55+(d/2);
vel_y=vel_y0+0.49;

%sxediasi diilektrikou

diil_x =[-d/2 ,-d/2+x,-d/2+x ,-d/2]+0.515;
diil_y =[-h/2 ,-h/2, h/2, h/2]+0.5;

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


subplot(4, 1, [1,2,3]);
fill(op1_x,op1_y,[0 1 0],...
    op2_x,op2_y,[0 1 0],...
    pol1_x,pol1_y,[1 0 0],...
    pol2_x,pol2_y,[1 0 0],...
    h_x, h_y, [0 0 0],...
    ha_x, ha_y, [0 0 0],...
    hb_x, hb_y, [0 0 0],....
    d_x, d_y,[0 0 0],...
    da_x, da_y, [0 0 0],...
    db_x, db_y, [0 0 0],...
    diil_x,diil_y,[0,1,1])




axis([-0.1,1.1,-0.7,3.23])

set(gca,'xtick',[-0.7:0.2:1.1]) %apokripsi timwn axona x
set(gca,'ytick',[-0.7:0.2:1.1]) %apokripsi timwn axona y

hold on;

fill(pol1_x,pol1_y,[1,0,0],...
    pol2_x,pol2_y,[1,0,0])



%sxediasi kalwdiwn

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

text(0.54+0.5*d ,h/4+0.48, '+', 'fontsize', 16, 'Color', 'r') 
text(0.54+0.5*d ,h/2+0.48, '+', 'fontsize', 16, 'Color', 'r')
text(0.54+0.5*d ,-h/2+0.48, '+', 'fontsize', 16, 'Color', 'r')
text(0.54+0.5*d ,-h/4+0.48, '+', 'fontsize', 16, 'Color', 'r')
 
 
text(0.55-0.5*d-0.1 ,h/4+0.48, '-', 'fontsize', 18, 'Color', 'r')
text(0.55-0.5*d-0.1 ,h/2+0.48, '-', 'fontsize', 18, 'Color', 'r')
text(0.55-0.5*d-0.1 ,-h/2+0.48, '-', 'fontsize', 18, 'Color', 'r')
text(0.55-0.5*d-0.1 ,-h/4+0.48, '-', 'fontsize', 18, 'Color', 'r')

text(0.5+0.5*d-0.05 ,h/4+0.48, '-', 'fontsize', 16, 'Color', [0 0 1]) 
text(0.5+0.5*d-0.05 ,h/2+0.48, '-', 'fontsize', 16, 'Color', [0 0 1])
text(0.5+0.5*d-0.05 ,-h/2+0.48, '-', 'fontsize', 16, 'Color', [0 0 1])
text(0.5+0.5*d-0.05 ,-h/4+0.48, '-', 'fontsize', 16, 'Color', [0 0 1])

text(0.5-0.5*d+0.05 ,h/4+0.48, '+', 'fontsize', 18, 'Color', [0 0 1])
text(0.5-0.5*d+0.05 ,h/2+0.48, '+', 'fontsize', 18, 'Color', [0 0 1])
text(0.5-0.5*d+0.05 ,-h/2+0.48, '+', 'fontsize', 18, 'Color', [0 0 1])
text(0.5-0.5*d+0.05,-h/4+0.48, '+', 'fontsize', 18, 'Color', [0 0 1])



text(0.43+0.5*d ,h/2+0.78, '+Q_0', 'fontsize', 18, 'Color', 'r')
text(0.45-0.5*d ,h/2+0.78, '-Q_0', 'fontsize', 18, 'Color', 'r')
   
text(0.48 ,-0.68, 'V_0', 'fontsize', 18, 'Color', 'r')
text(0.48+L_batt/2+0.02 ,-h_arnitikou/2, '+', 'fontsize', 16, 'Color', 'r')
text(0.48-L_batt/2-0.01 ,-h_arnitikou/2, '-', 'fontsize', 18, 'Color', 'r')

text(h_x(1)-0.05 ,0.7, 'h', 'fontsize', 18, 'Color', 'k')

% text(0.34-L ,h/2+0.37, 'h', 'fontsize', 16, 'Color', 'k')

text(0.48 ,h/2-0.15, 'd', 'fontsize', 16, 'Color', 'k')

% hold on
%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
h2=0.4;%ypsos oplismou apo 0.2-0.8
d2=0.2; %apostasi oplismwn apo 0.1-0.4
x1 =0.18;
h1=0.4;
d1=0.2;
L1=0.1; %platos oplismou panta stathero

%battery
bL_batt=0.1; %platos polou
bd_batt=0.1; %apostasi polwn apo 0.45-0.55
%arnitikos polos
bh_thetikou=0.2; %ypsos +polou apo -0.35 ews -0.55
bA_thetikou=bh_thetikou*bL_batt; %embado +polou
%thetikos polos
bh_arnitikou=0.4; %ypsos +polou apo -0.5 ews -0.1
bA_arnitikou=bh_arnitikou*bL_batt; %embado +polou



%sxediasi oplismou
bop1_x0 =[-L1/10 ,L1/10 ,L1/10 ,-L1/10];
bop1_y0 =[-h1/2 ,-h1/2, h1/2,h1/2];

bop1_x=bop1_x0+0.25-(d1/2);
bop1_y=bop1_y0+0.5;

bop2_x0 =[-L1/10 ,L1/10 ,L1/10 ,-L1/10];
bop2_y0 =[-h1/2 ,-h1/2, h1/2,h1/2];

bop2_x=bop2_x0+0.25+(d1/2);
bop2_y=bop2_y0+0.5;

bop3_x0 =[-L1/10 ,L1/10 ,L1/10 ,-L1/10];
bop3_y0 =[-h2/2 ,-h2/2, h2/2,h2/2];

bop3_x=bop3_x0+0.75-(d2/2);
bop3_y=bop3_y0+0.5;

bop4_x0 =[-L1/10 ,L1/10 ,L1/10 ,-L1/10];
bop4_y0 =[-h2/2 ,-h2/2, h2/2,h2/2];

bop4_x=bop4_x0+0.75+(d2/2);
bop4_y=bop4_y0+0.5;

%sxediasi diilektrikou

bdiil_x =[-d1/2 ,-d1/2+x1,-d1/2+x1 ,-d1/2]+0.26;
bdiil_y =[-h1/2 ,-h1/2, h1/2, h1/2]+0.5;

%sxediasi velos
bvel_x10=[-L1/10 ,-d1+(L1/10)*2 ,-d1+(L1/10)*2 ,-d1+L1/10 ,-d1+(L1/10)*2 ,-d1+(L1/10)*2,-L1/10];
bvel_x20=[-L1/10 ,-d2+(L1/10)*2 ,-d2+(L1/10)*2 ,-d2+L1/10 ,-d2+(L1/10)*2 ,-d2+(L1/10)*2,-L1/10];
bvel_y0=[-0.005 ,-0.005 ,-L1/15 ,0 ,+L1/15 ,+0.005,+0.005];
bvel1_x=bvel_x10+0.25+(d1/2);
bvel2_x=bvel_x20+0.75+(d2/2);
bvel_y=bvel_y0+0.49;

%sxediasi batarias opou pol apo to "polos"
bpol1_x0 =[-0.01 ,0.01 ,0.01 ,-0.01];
bpol1_y0 =[-bh_thetikou/2 ,-bh_thetikou/2, bh_thetikou/2,bh_thetikou/2];

bpol1_x=bpol1_x0+0.5-(bd_batt/4);
bpol1_y=bpol1_y0-0.3;

bpol2_x0 =[-0.01 ,0.01 ,0.01 ,-0.01];
bpol2_y0 =[-bh_arnitikou/2 ,-bh_arnitikou/2, bh_arnitikou/2,bh_arnitikou/2];

bpol2_x=bpol2_x0+0.5+(bd_batt/4);
bpol2_y=bpol2_y0-0.3;


met5 = 2;


subplot(4, 1, [1,2,3]);
fill(bop1_x,bop1_y+met5,[0 0 0],...
    bop2_x,bop2_y+met5,[0 0 0],...
    bdiil_x,bdiil_y+met5,[0,1,1],...
    bdiil_x,bdiil_y+met5,[0,1,1])


hold on;

fill(bop3_x,bop3_y+met5,[0 0 0],...
    bop4_x,bop4_y+met5,[0 0 0])


% set(gca,'xtick',[]) %apokripsi timwn axona x1
% set(gca,'ytick',[]) %apokripsi timwn axona y

hold on;

fill(bpol1_x,bpol1_y+met5,[1 0 0],...
    bpol2_x,bpol2_y+met5,[1 0 0])

axis([-0.1,1.1,-0.7,3.23])

hold off;

%sxediasi kalwdiwn

%orizontia kalwdia
lin_x=[0,0.25-d1/2-L1/10];
lin_y=[0.5,0.5]+met5;
line(lin_x,lin_y,'linewidth',5,'Color',[0,0,0])

lin2_x=[1,0.75+d2/2+L1/10];
lin2_y=[0.5,0.5]+met5;
line(lin2_x,lin2_y,'linewidth',5,'Color',[0,0,0])

lin3_x=[1,0.5+bd_batt/4+L1/20];
lin3_y=[-0.3,-0.3]+met5;
line(lin3_x,lin3_y,'linewidth',5,'Color',[0,0,0])

lin4_x=[0,0.5-bd_batt/4-L1/20];
lin4_y=[-0.3,-0.3]+met5;
line(lin4_x,lin4_y,'linewidth',5,'Color',[0,0,0])

lin5_x=[bop2_x(2),bop3_x(1)];
lin5_y=[0.5,0.5]+met5;
line(lin5_x,lin5_y,'linewidth',5,'Color',[0,0,0])

%katheta kalwdia

lin5_x=[0,0];
lin5_y=[-0.315,0.515]+met5;
line(lin5_x,lin5_y,'linewidth',5,'Color',[0,0,0])

lin6_x=[1,1];
lin6_y=[-0.315,0.515]+met5;
line(lin6_x,lin6_y,'linewidth',5,'Color',[0,0,0])


text(0.48 ,-0.62+met5, 'V_0', 'fontsize', 18, 'Color', 'r')
text(0.48+bL_batt/2+0.02 ,-bh_arnitikou/2+met5, '+', 'fontsize', 16, 'Color', 'r')
text(0.48-bL_batt/2-0.01 ,-bh_arnitikou/2+met5, '-', 'fontsize', 18, 'Color', 'r')

text(0.22 ,h1/2+0.7+met5, 'C_1', 'fontsize', 14, 'Color', 'b')
text(0.72 ,h2/2+0.7+met5, 'C_2', 'fontsize', 14, 'Color', 'b')



% set(gca,'xtick',[]) %apokripsi timwn axona x1
% set(gca,'ytick',[]) %apokripsi timwn axona y

hold off

subplot(4, 1, 4)


C0=e0*A/d*10^12;
Q0=C0*V0;
V0=20;
e = 80;
e0=8.85*10^(-12);
C1=e*e0*A/x*10^12;
C2=e0*A/(d-x)*10^12;
C12 = (C1*C2)/(C1+C2);
Q12 = V0*C12;
Q1 = Q12;
Q2 = Q12;
h2=d-x;
V1=Q1/C1;
V2=Q2/C2;
E1=V1/x;
E2=V2/(d-x);



hn =num2str(h ,'%6.1f');
dn =num2str(d ,'%6.1f');
en =num2str(e ,'%6.1f');

C12n =num2str(C12 ,'%6.2f');
V0n =num2str(V0 ,'%6.2f');
Q0n =num2str(Q0 ,'%6.2f');

C1n =num2str(C1 ,'%6.2f');
V1n =num2str(V1 ,'%6.2f');
Q1n =num2str(Q1 ,'%6.2f');

C2n =num2str(C2 ,'%6.2f');
V2n =num2str(V2 ,'%6.2f');
Q2n =num2str(Q2 ,'%6.2f');

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
 text(0.2+met1, 0.2, 'V' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
%  
 text(0.1+met2, 0.8, 'C_0 =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.18+met2, 0.8, C12n  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.26+met2, 0.8, 'pF' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met2, 0.5, 'V_0 =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.18+met2, 0.5, V0n  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.26+met2, 0.5, 'V' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met2, 0.2, 'Q_0 =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.18+met2, 0.2, Q1n  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.26+met2, 0.2, 'pC' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met3, 0.8, 'C_1 =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.18+met3, 0.8, C1n  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.26+met3, 0.8, 'pF' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met3, 0.5, 'V_1 =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.18+met3, 0.5, V1n  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.26+met3, 0.5, 'V' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met3, 0.2, 'Q_1 =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.18+met3, 0.2, Q1n  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.26+met3, 0.2, 'pC' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met4, 0.8, 'C_2 =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.18+met4, 0.8, C2n  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.26+met4, 0.8, 'pF' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met4, 0.5, 'V_2 =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.18+met4, 0.5, V2n  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.26+met4, 0.5, 'V' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met4, 0.2, 'Q_2 =' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')
 text(0.18+met4, 0.2, Q2n  , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'r')
 text(0.26+met4, 0.2, 'pC' , 'FontUnits','normalized','FontSize',0.15,'FontName', 'Unicode', 'Color', 'k')

axis([0 1 0 1])
set(gca,'xtick',[]) %apokripsi timwn axona x
set(gca,'ytick',[]) %apokripsi timwn axona y

