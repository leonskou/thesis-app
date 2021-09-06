function varargout = circ_6(varargin)
% CIRC_6 MATLAB code for circ_6.fig
%      CIRC_6, by itself, creates a new CIRC_6 or raises the existing
%      singleton*.
%
%      H = CIRC_6 returns the handle to a new CIRC_6 or the handle to
%      the existing singleton*.
%
%      CIRC_6('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CIRC_6.M with the given input arguments.
%
%      CIRC_6('Property','Value',...) creates a new CIRC_6 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before circ_6_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to circ_6_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help circ_6

% Last Modified by GUIDE v2.5 11-Jul-2021 18:06:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @circ_6_OpeningFcn, ...
                   'gui_OutputFcn',  @circ_6_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before circ_6 is made visible.
function circ_6_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to circ_6 (see VARARGIN)

% KATHGORIA 1
% gia ola ta programmata

global ind_res;  % gia emfanish pinaka apotelesmatwn
ind_res=0;


% KATHGORIA 2
% deiktes gia emfanish -apokrypsi megethwn. Gia 0 apokrypsi gia 1 emfanish
global synt_E;
global synt_q;
global synt_d;
global synt_E1;

synt_E =0; 
synt_q =0;
synt_d =0;
synt_E1 =0;

  global h
  global d
  global V
   global e
     global Q
   global U

global synt_all
synt_all =0;

% KATHGORIA 5
% gia ola ta programmata
% energopoihsh aksona 1


% KATHGORIA 6


axes(handles.axes1)
axis off;
arxikn(0.8, 0.4, 20, 1000)

h=get(handles.slider1,'Value');
d=get(handles.slider2,'Value');
Q=get(handles.slider4,'Value');
e=get(handles.slider15,'Value');

% Choose default command line output for circ_6
handles.output = hObject;
set(gcf, 'units','normalized','outerposition',[0 0 1 1]);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes circ_6 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = circ_6_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;




function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% KATHGORIA 1
global ind_res
global h;
SliderPosition = str2double(get(hObject,'String'));
h = SliderPosition;
if (h<0.4)    
    set(handles.edit1,'enable','on','string','0.4');
    set(handles.slider1,'enable','on','value',0.4);
    %return
    SliderPosition=0.4;
end

if (h>1)   
    set(handles.edit1,'enable','on','string','1');
    set(handles.slider1,'enable','on','value',1);
    %retur
    SliderPosition=1;
end

h = SliderPosition;

% KATHGORIA 2

d=get(handles.slider2,'Value');
Q=get(handles.slider4,'Value');
e=get(handles.slider15,'Value');


axes(handles.axes1)
axis off;
arxikn(h, d, e, Q)

if ind_res==1
axes(handles.axes3)
axis off;
apotelesm(h )
else
end

% KATHGORIA 4
set(handles.slider1,'enable','on','value',SliderPosition);

% KATHGORIA 5
guidata(hObject, handles)
% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% KATHGORIA 1
global ind_res
global d;
SliderPosition = str2double(get(hObject,'String'));
d  = SliderPosition;
if (d <0.2)    
    set(handles.edit2,'enable','on','string','0.2');
    set(handles.slider2,'enable','on','value',0.2);
    %return
    SliderPosition=0.2;
end

if (d>0.4)   
    set(handles.edit2,'enable','on','string','0.4');
    set(handles.slider2,'enable','on','value',0.4);
    %return
    SliderPosition=0.4;
end

d=SliderPosition;

h=get(handles.slider1,'Value');
Q=get(handles.slider4,'Value');
e=get(handles.slider15,'Value');

axes(handles.axes1)
axis off;
arxikn(h, d, e, Q)

if ind_res==1
axes(handles.axes3)
axis off;
apotelesm(h )
else
end

% KATHGORIA 4
set(handles.slider2,'enable','on','value',SliderPosition);

% KATHGORIA 5
guidata(hObject, handles)
% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% KATHGORIA 1
global ind_res
global Q;
SliderPosition = str2double(get(hObject,'String'));
Q = SliderPosition;
if (Q<500)    
    set(handles.edit4,'enable','on','string','500');
    set(handles.slider4,'enable','on','value',500);
    SliderPosition=500;
end

if (Q>2000)   
    set(handles.edit4,'enable','on','string','2000');
    set(handles.slider4,'enable','on','value',2000);
    SliderPosition=2000;
end

Q=SliderPosition;

% KATHGORIA 2
h=get(handles.slider1,'Value');
d=get(handles.slider2,'Value');
e=get(handles.slider15,'Value');

axes(handles.axes1)
axis off;
arxikn(h, d, e, Q)

if ind_res==1
axes(handles.axes3)
axis off;
apotelesm(h)
else
end

% KATHGORIA 4
set(handles.slider4,'enable','on','value',SliderPosition);

% KATHGORIA 5
guidata(hObject, handles)
% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% KATHGORIA 1
global ind_res
global e;
SliderPosition = str2double(get(hObject,'String'));
e = SliderPosition;
if (e<20)    
    set(handles.edit15,'enable','on','string','20');
    set(handles.slider15,'enable','on','value',20);
    SliderPosition=20;
end

if (e>50)   
    set(handles.edit15,'enable','on','string','50');
    set(handles.slider15,'enable','on','value',50);
    SliderPosition=50;
end

e=SliderPosition;

% KATHGORIA 2
h=get(handles.slider1,'Value');
d=get(handles.slider2,'Value');
Q=get(handles.slider4,'Value');

axes(handles.axes1)
axis off;
arxikn(h, d, e, Q)

if ind_res==1
axes(handles.axes3)
axis off;
apotelesm(h )
else
end

% KATHGORIA 4
set(handles.slider15,'enable','on','value',SliderPosition);

% KATHGORIA 5
guidata(hObject, handles)
% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ind_res
global h
% KATHGORIA 1
h=get(hObject,'Value');
set(handles.edit1,'String',num2str(h,'%6.2f'));
% addlistener(handles.slider1,'Value','PostSet',@(s,e) set(handles.edit1,'String',num2str(get(handles.slider1,'Value'),'%6.1f')));

% KATHGORIA 2

d=get(handles.slider2,'Value');
Q=get(handles.slider4,'Value');
e=get(handles.slider15,'Value');

axes(handles.axes1)
axis off;
arxikn(h, d, e, Q)

if ind_res==1
axes(handles.axes3)
axis off;
apotelesm(h )
else
end

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider




% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ind_res
global d
% KATHGORIA 1
d=get(hObject,'Value');
set(handles.edit2,'String',num2str(d,'%6.2f'));
% addlistener(handles.slider2,'Value','PostSet',@(s,e) set(handles.edit2,'String',num2str(get(handles.slider2,'Value'),'%6.1f')));

h=get(handles.slider1,'Value');
Q=get(handles.slider4,'Value');
e=get(handles.slider15,'Value');
axes(handles.axes1)
axis off;
arxikn(h, d, e, Q)

if ind_res==1
axes(handles.axes3)
axis off;
apotelesm(h )
else
end
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ind_res
global Q
% KATHGORIA 1
Q=get(hObject,'Value');
set(handles.edit4,'String',num2str(Q,'%6.1f'));
% addlistener(handles.slider4,'Value','PostSet',@(s,e) set(handles.edit4,'String',num2str(get(handles.slider4,'Value'),'%6.0f')));

h=get(handles.slider1,'Value');
d=get(handles.slider2,'Value');
e=get(handles.slider15,'Value');
axes(handles.axes1)
axis off;
arxikn(h, d, e, Q)

if ind_res==1
axes(handles.axes3)
axis off;
apotelesm(h )
else
end
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end





% --- Executes on slider movement.
function slider15_Callback(hObject, eventdata, handles)
% hObject    handle to slider15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ind_res
global e
% KATHGORIA 1
e=get(hObject,'Value');
set(handles.edit15,'String',num2str(e,'%6.0f'));
% addlistener(handles.slider4,'Value','PostSet',@(s,e) set(handles.edit4,'String',num2str(get(handles.slider4,'Value'),'%6.0f')));

h=get(handles.slider1,'Value');
d=get(handles.slider2,'Value');
Q=get(handles.slider4,'Value');

axes(handles.axes1)
axis off;
arxikn(h, d, e, Q)

if ind_res==1
axes(handles.axes3)
axis off;
apotelesm(h)
else
end
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% KATHGORIA 1
% gia ola ta programmata
global ind_res;

ind_res = 1-ind_res;

% KATHGORIA 2 ( ta megethh pou deixontai sra apotelesmata)
global h;



% PINAKAS
pin_x = [0 1.01  1.01 0];
pin_y = [-0.01 -0.01  1 1];

% KATHGORIA 3
 % Ypovathro apotelesmatwn

if ind_res ==1
    set(handles.checkbox2,'string','Αποτελέσματα','FontUnits','normalized','FontSize',0.5,'FontName', 'Unicode' )        
    axes(handles.axes3)
%    clear r
%    clear F
%    clear clear r
%    clear ffi5
%    clear M
   
    axis off;
    axis off;
fill(pin_x,pin_y, [1 1 1],...
    'LineStyle', 'none')
      axis([0, 1, 0, 1])
 
    axis off
     set(gca,'ytick',[ ])
    set(gca,'xtick',[ ])
    set(gca,'ztick',[ ])
    set(gca,'Color', [1 1 1])
    
    apotelesm(h)
    



elseif (ind_res ==0)
   set(handles.checkbox2,'string','Αποτελέσματα','FontUnits','normalized','FontSize',0.5,'FontName', 'Unicode')   
   axes(handles.axes3)
    axis off;
    cla;
    fill(pin_x, pin_y, [1 1 1],...
     'LineStyle','none')
      axis([0, 1, 0, 1])
    axis off;
        set(gca,'ytick',[ ])
    set(gca,'xtick',[ ])
    set(gca,'ztick',[ ])
    set(gca,'Color', [1 1 1])

 
else
end
% Hint: get(hObject,'Value') returns toggle state of checkbox2

function apotelesm(h)  % Ta deixnei otan stamathsei

%     % KATHGORIA
% if (ind_s==1) 

  % Ypovathro apotelesmatwn

  global hh
  global dd
  global VV
   global C
     global QQ
   global U
  global ee;
  
L=0.2;
   A=hh*L;
e0=8.85*10^(-12);

Q0 = QQ*10^(-12);
C0=(e0*A/dd)*10^(12);
C=(ee*e0*A/dd)*10^(12);

V = (Q0/C)*10^12;
V0 = Q0/C0*10^12;

E0 = V0/dd;
E = V/dd;

U0 = 0.5*C0*V0^2;
U = 0.5*C*V^2;

hn =num2str(hh ,'%6.1f');
dn =num2str(dd ,'%6.1f');


En =num2str(E ,'%6.1f');



en =num2str(ee ,'%6.1f');

U0n =num2str(U0*10^(-3) ,'%6.1f');
Un =num2str(U*10^(-3) ,'%6.1f');

C0n =num2str(C0 ,'%6.2f');
Q0n =num2str(Q0*10^12 ,'%6.0f');
V0n =num2str(V0 ,'%6.1f');

E0n =num2str(E0 ,'%6.1f');

Cn =num2str(C ,'%6.2f');
Qn =num2str(Q0*10^12 ,'%6.0f');
Vn =num2str(V ,'%6.1f');


pin_x = [0 1 1 0];
pin_y = [0 0  1 1];

  fill(pin_x, pin_y, [1 1 1])
  
 met1 = -0.04;
met2 = 0.25;
met3 = 0.6;


 text(0.1+met1, 0.8, 'h =' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 text(0.14+met1, 0.8, hn  , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'r')
 text(0.2+met1, 0.8, 'm' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met1, 0.5, 'd =' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 text(0.14+met1, 0.5, dn  , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'r')
 text(0.2+met1, 0.5, 'm' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met1, 0.2, 'e =' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 text(0.14+met1, 0.2, en  , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'r')
%  text(0.2+met1, 0.2, 'V' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 
  text(0.1+met2, 0.9, 'Χωρίς διηλεκτρικό' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'b')

 text(0.1+met2, 0.75, 'C_0 =' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 text(0.16+met2, 0.76, C0n  , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'r')
 text(0.23+met2, 0.76, 'pF' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met2, 0.6, 'Q_0 =' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 text(0.16+met2, 0.61, Q0n  , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'r')
 text(0.23+met2, 0.61, 'pC' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 
  text(0.1+met2, 0.45, 'V =' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 text(0.16+met2, 0.45, V0n  , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'r')
 text(0.23+met2, 0.45, 'V' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 
 
 
 text(0.1+met2, 0.3, 'E_0 =' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 text(0.16+met2, 0.31, E0n  , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'r')
 text(0.23+met2, 0.31, 'V/m' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 
text(0.1+met2, 0.15-0.02, 'U_0 =' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 text(0.16+met2, 0.16-0.02, U0n  , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'r')
 text(0.23+met2, 0.18-0.02, 'x10^{-9}' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'r')
 text(0.29+met2, 0.16-0.02, 'J' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 
 
  text(0.1+met3, 0.9, 'Με διηλεκτρικό' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'b')
 text(0.1+met3, 0.75, 'C =' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 text(0.15+met3, 0.75, Cn  , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'r')
 text(0.23+met3, 0.75, 'pF' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met3, 0.6, 'Q =' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 text(0.15+met3, 0.61, Qn  , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'r')
 text(0.23+met3, 0.61, 'pC' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met3, 0.45, 'V =' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 text(0.15+met3, 0.45, Vn  , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'r')
 text(0.23+met3, 0.45, 'V' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 
 
 
 
  text(0.1+met3, 0.3, 'E =' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 text(0.15+met3, 0.3, En  , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'r')
 text(0.22+met3, 0.3, 'V/m' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 
 
 text(0.1+met3, 0.15-0.02, 'U =' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 text(0.15+met3, 0.16-0.02, Un  , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'r')
  text(0.21+met3, 0.18-0.02, 'x10^{-9}' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'r')
 text(0.27+met3, 0.16-0.02, 'J' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 
  
 axis([0,  1, 0, 1])
 axis off 
         
  


% --- Executes on button press in checkbox3.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% KATHGORIA 1
% gia ola ta programmata

% KATHGORIA 2
global synt_E;
synt_E = 1-synt_E;

 
% KATHGORIA 3
% dhlwnoume tis parametrous tis arxikhs
global h;
global d;
global Q;



% KATHGORIA 4
% gia ola ta programmata

% KATHGORIA 5
set(handles.checkbox3,'string','Δυναμικές γραμμές','FontName', 'Unicode') 

% KATHGORIA 6
h=get(handles.slider1,'Value');
d=get(handles.slider2,'Value');
Q=get(handles.slider4,'Value');
e=get(handles.slider15,'Value');
axes(handles.axes1)
axis off;
arxikn(h,d,e, Q)







% --- Executes on button press in checkbox5.
function checkbox5_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% KATHGORIA 1
% gia ola ta programmata



% KATHGORIA 2
global synt_q;
synt_q = 1-synt_q;


% KATHGORIA 3
% dhlwnoume tis parametrous tis arxikhs
global h;
global d;
global Q;

% KATHGORIA 4
% gia ola ta programmata


% KATHGORIA 5
set(handles.checkbox5,'string','Ηλεκτρικό φορτίο','FontName', 'Unicode') 

% KATHGORIA 6
% KATHGORIA 6
h=get(handles.slider1,'Value');
d=get(handles.slider2,'Value');
Q=get(handles.slider4,'Value');
e=get(handles.slider15,'Value');
axes(handles.axes1)
axis off;
arxikn(h,d,e, Q)

% --- Executes on button press in checkbox6.
function checkbox6_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% KATHGORIA 2
global synt_d;
synt_d = 1-synt_d;


% KATHGORIA 3
% dhlwnoume tis parametrous tis arxikhs
global h;
global d;
global Q;

% KATHGORIA 4
% gia ola ta programmata


% KATHGORIA 5
set(handles.checkbox6,'string','Διαστάσεις πυκνωτή','FontName', 'Unicode') 

% KATHGORIA 6
% KATHGORIA 6
h=get(handles.slider1,'Value');
d=get(handles.slider2,'Value');
Q=get(handles.slider4,'Value');
e=get(handles.slider15,'Value');
axes(handles.axes1)
axis off;
arxikn(h,d,e, Q)


% --- Executes on button press in checkbox17.
function checkbox17_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% KATHGORIA 2
global synt_E1;
synt_E1 = 1-synt_E1;


% KATHGORIA 3
% dhlwnoume tis parametrous tis arxikhs
global h;
global d;
global Q;

% KATHGORIA 4
% gia ola ta programmata


% KATHGORIA 5
set(handles.checkbox17,'string','Ένταση πεδίου','FontName', 'Unicode') 

% KATHGORIA 6
% KATHGORIA 6
h=get(handles.slider1,'Value');
d=get(handles.slider2,'Value');
Q=get(handles.slider4,'Value');
e=get(handles.slider15,'Value');
axes(handles.axes1)
axis off;
arxikn(h,d,e, Q)

% Hint: get(hObject,'Value') returns toggle state of checkbox17


% Hint: get(hObject,'Value') returns toggle state of checkbox13

function arxikn(h,d,e, Q)  
% KATHGORIA 1
global synt_E;
global synt_q;
global synt_d;
global synt_E1;

  global hh
  global dd
  global QQ
 global ee


hh = h;
dd = d;
QQ = Q;
ee = e;
%battery
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




%sxediasi velos
vel_x0=[-L/10 ,-d+(L/10)*2 ,-d+(L/10)*2 ,-d+L/10 ,-d+(L/10)*2 ,-d+(L/10)*2,-L/10];
vel_y0=[-0.005 ,-0.005 ,-L/5 ,0 ,+L/5 ,+0.005,+0.005];
vel_x=(vel_x0+0.5+(d/2))*synt_E;
vel_y=(vel_y0+0.49)*synt_E;

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



dE0 = 0.0003*E0;
E0_x = -[0  dE0-0.03 dE0-0.03 dE0  dE0-0.03 dE0-0.03 0]+0.6;
E0_y = [-0.01 -0.01 -0.04  0 0.04  0.01 0.01];

E1 =  V/L;
dE1 = 0.002*E1;
E1_x = -[0  dE1-0.03 dE1-0.03 dE1  dE1-0.03 dE1-0.03 0]+0.5;
E1_y = [-0.01 -0.01 -0.04  0 0.04  0.01 0.01];

met = 2;

fill(op1_x,op1_y,[0 1 0],...
    op2_x,op2_y,[0 1 0],...
    diil_x,diil_y,[0,1,1],...
    vel_x,vel_y+h/4,[0,0,1],...
    vel_x,vel_y-h/4,[0,0,1],...
    h_x*synt_d, h_y*synt_d, [0 0 0],...
    ha_x*synt_d, ha_y*synt_d, [0 0 0],...
    hb_x*synt_d, hb_y*synt_d, [0 0 0],....
    d_x*synt_d, d_y*synt_d,[0 0 0],...
    da_x*synt_d, da_y*synt_d, [0 0 0],...
   db_x*synt_d, db_y*synt_d, [0 0 0])

hold on
fill(op1_x,op1_y+met,[0 1 0],...
    op2_x,op2_y+met,[0 1 0],...
    vel_x,vel_y+h/4+met+0.05,[0,0,1],...
    vel_x,vel_y-h/4+met,[0,0,1],...
    h_x*synt_d, h_y*synt_d+met, [0 0 0],...
    ha_x*synt_d, ha_y*synt_d+met, [0 0 0],...
    hb_x*synt_d, hb_y*synt_d+met, [0 0 0],....
    d_x*synt_d, d_y*synt_d+met,[0 0 0],...
    da_x*synt_d, da_y*synt_d+met, [0 0 0],...
    db_x*synt_d, db_y*synt_d+met, [0 0 0],...
        E0_x*synt_E1 , E0_y*synt_E1+2.5, [1 0 1],...
    E1_x*synt_E1 , E1_y*synt_E1+0.5, [1 0 1])

% l_x = [0 d d 0]+0.5-(d/2);
% l_y = [-0.003 -0.003 0.003 0.003]+0.48-h/2-0.05;
% 
% 
% 
% fill(l_x,l_y+h*1.78,[0,0,1]);

axis([-0.1,1.1,-0.6,3.3])

set(gca,'xtick',[]) %apokripsi timwn axona x
set(gca,'ytick',[]) %apokripsi timwn axona y

if synt_E1==1
text(E0_x(3) ,2.6, 'E_0', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'k') 
text(E1_x(3) ,0.6, 'E', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'k') 
else
end

if synt_q==1
 text(0.53+0.5*d ,h/4+2.5, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r') 
 text(0.53+0.5*d ,h/2+2.5, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r')
 text(0.53+0.5*d ,2.5, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r')
 text(0.53+0.5*d ,-h/2+2.5, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r')
 text(0.53+0.5*d ,-h/4+2.5, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r')
 
text(0.55-0.5*d-0.1 ,h/4+2.5, '-', 'FontUnits','normalized','FontSize',0.08,'FontName', 'Unicode', 'Color', 'r')
text(0.55-0.5*d-0.1 ,h/2+2.5, '-', 'FontUnits','normalized','FontSize',0.08,'FontName', 'Unicode', 'Color', 'r')
text(0.55-0.5*d-0.1 ,2.5, '-', 'FontUnits','normalized','FontSize',0.08,'FontName', 'Unicode', 'Color', 'r')
text(0.55-0.5*d-0.1 ,-h/2+2.5, '-', 'FontUnits','normalized','FontSize',0.08,'FontName', 'Unicode', 'Color', 'r')
text(0.55-0.5*d-0.1 ,-h/4+2.5, '-', 'FontUnits','normalized','FontSize',0.08,'FontName', 'Unicode', 'Color', 'r')


text(0.54+0.5*d ,h/4+0.48, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r') 
text(0.54+0.5*d ,h/2+0.48, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r')
text(0.54+0.5*d ,0.48, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r')
text(0.54+0.5*d ,-h/2+0.48, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r')
text(0.54+0.5*d ,-h/4+0.48, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r')
 
 
text(0.55-0.5*d-0.1 ,h/4+0.48, '-', 'FontUnits','normalized','FontSize',0.08,'FontName', 'Unicode', 'Color', 'r')
text(0.55-0.5*d-0.1 ,h/2+0.48, '-', 'FontUnits','normalized','FontSize',0.08,'FontName', 'Unicode', 'Color', 'r')
text(0.55-0.5*d-0.1 ,0.48, '-', 'FontUnits','normalized','FontSize',0.08,'FontName', 'Unicode', 'Color', 'r')
text(0.55-0.5*d-0.1 ,-h/2+0.48, '-', 'FontUnits','normalized','FontSize',0.08,'FontName', 'Unicode', 'Color', 'r')
text(0.55-0.5*d-0.1 ,-h/4+0.48, '-', 'FontUnits','normalized','FontSize',0.08,'FontName', 'Unicode', 'Color', 'r')

text(0.46+0.5*d ,h/2+0.65, '+Q', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r')
text(0.47-0.5*d ,h/2+0.65, '-Q', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r')



% &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
% &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

text(0.5+0.5*d-0.05 ,h/4+0.48, '-', 'FontUnits','normalized','FontSize',0.08,'FontName', 'Unicode', 'Color', [0 0 1]) 
text(0.5+0.5*d-0.05 ,h/2+0.48, '-', 'FontUnits','normalized','FontSize',0.08,'FontName', 'Unicode', 'Color', [0 0 1])
text(0.5+0.5*d-0.05 ,0.48, '-', 'FontUnits','normalized','FontSize',0.08,'FontName', 'Unicode', 'Color', [0 0 1])
text(0.5+0.5*d-0.05 ,-h/2+0.48, '-', 'FontUnits','normalized','FontSize',0.08,'FontName', 'Unicode', 'Color', [0 0 1])
text(0.5+0.5*d-0.05 ,-h/4+0.48, '-', 'FontUnits','normalized','FontSize',0.08,'FontName', 'Unicode', 'Color', [0 0 1])

text(0.5-0.5*d+0.03 ,h/4+0.48, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', [0 0 1])
text(0.5-0.5*d+0.03 ,h/2+0.48, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', [0 0 1])
text(0.5-0.5*d+0.03 ,0.48, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', [0 0 1])
text(0.5-0.5*d+0.03 ,-h/2+0.48, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', [0 0 1])
text(0.5-0.5*d+0.03,-h/4+0.48, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', [0 0 1])
 

text(0.46+0.5*d ,h/2+0.65+met, '+Q', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r')
text(0.47-0.5*d ,h/2+0.65+met, '-Q', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r')

else
end

if synt_d==1
    text(h_x(1)-0.05 ,2.5, 'h', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'k')

text(0.48 ,h/2-0.5, 'd', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'k')

text(h_x(1)-0.05 ,0.5, 'h', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'k')

text(0.48 ,h/2-0.5+met, 'd', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'k')
else
end

hold off;

 



% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
!circ_6.pdf

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
!dir_e_3\e_sim_e_3_2_1.pdf


% --- Executes on button press in checkbox16.
function checkbox16_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global synt_all
synt_all=1-synt_all;

global synt_E;
global synt_q;
global synt_d;
global synt_E1;


global check


% KATHGORIA 4
% gia ola ta programmata

if synt_all==0;
    
 
synt_E =0;
synt_q =0;
synt_d =0;
synt_E1 =0;


set(handles.checkbox3,'enable','on','value',0);
set(handles.checkbox5,'enable','on','value',0);
set(handles.checkbox6,'enable','on','value',0);
set(handles.checkbox17,'enable','on','value',0);



else
  
synt_E =1;
synt_q =1;
synt_d =1;
synt_E1 =1;

set(handles.checkbox3,'enable','on','value',1);
set(handles.checkbox5,'enable','on','value',1);
set(handles.checkbox6,'enable','on','value',1);
set(handles.checkbox17,'enable','on','value',1);
end

% KATHGORIA 6
h=get(handles.slider1,'Value');
d=get(handles.slider2,'Value');
Q=get(handles.slider4,'Value');
e=get(handles.slider15,'Value');
axes(handles.axes1)
axis off;
arxikn(h,d,e, Q)
% Hint: get(hObject,'Value') returns toggle state of checkbox16


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
gui

close circ_6
