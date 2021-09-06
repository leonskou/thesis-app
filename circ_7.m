function varargout = circ_7(varargin)
% CIRC_7 MATLAB code for circ_7.fig
%      CIRC_7, by itself, creates a new CIRC_7 or raises the existing
%      singleton*.
%
%      H = CIRC_7 returns the handle to a new CIRC_7 or the handle to
%      the existing singleton*.
%
%      CIRC_7('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CIRC_7.M with the given input arguments.
%
%      CIRC_7('Property','Value',...) creates a new CIRC_7 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before circ_7_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to circ_7_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help circ_7

% Last Modified by GUIDE v2.5 12-Jul-2021 14:38:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @circ_7_OpeningFcn, ...
                   'gui_OutputFcn',  @circ_7_OutputFcn, ...
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


% --- Executes just before circ_7 is made visible.
function circ_7_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to circ_7 (see VARARGIN)

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
  global V0
   global e
     global x
   global U

global synt_all
synt_all =0;

% KATHGORIA 5
% gia ola ta programmata
% energopoihsh aksona 1


% KATHGORIA 6


axes(handles.axes1)
axis off;
arxikn(0.8, 0.4, 20, 0.20, 30)

h=get(handles.slider1,'Value');
d=get(handles.slider2,'Value');
e=get(handles.slider4,'Value');
x=get(handles.slider15,'Value');
V0=get(handles.slider16,'Value');

% Choose default command line output for circ_7
handles.output = hObject;
set(gcf, 'units','normalized','outerposition',[0 0 1 1]);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes circ_7 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = circ_7_OutputFcn(hObject, eventdata, handles) 
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

h=get(handles.slider1,'Value');
d=get(handles.slider2,'Value');
e=get(handles.slider4,'Value');
x=get(handles.slider15,'Value');
V0=get(handles.slider16,'Value');


axes(handles.axes1)
axis off;
arxikn(h, d, e, x, V0)

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
d=get(handles.slider2,'Value');
e=get(handles.slider4,'Value');
x=get(handles.slider15,'Value');
V0=get(handles.slider16,'Value');

axes(handles.axes1)
axis off;
arxikn(h, d, e, x, V0)

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
global e;
SliderPosition = str2double(get(hObject,'String'));
e = SliderPosition;
if (e<10)    
    set(handles.edit4,'enable','on','string','10');
    set(handles.slider4,'enable','on','value',10);
    SliderPosition=10;
end

if (e>50)   
    set(handles.edit4,'enable','on','string','50');
    set(handles.slider4,'enable','on','value',50);
    SliderPosition=50;
end

e=SliderPosition;

% KATHGORIA 2
h=get(handles.slider1,'Value');
d=get(handles.slider2,'Value');
e=get(handles.slider4,'Value');
x=get(handles.slider15,'Value');
V0=get(handles.slider16,'Value');

axes(handles.axes1)
axis off;
arxikn(h, d, e, x, V0)

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
global x;
SliderPosition = str2double(get(hObject,'String'));
x = SliderPosition;
if (x<0.1)    
    set(handles.edit15,'enable','on','string','0.1');
    set(handles.slider15,'enable','on','value',0.1);
    SliderPosition=0.1;
end

if (x>0.3)   
    set(handles.edit15,'enable','on','string','0.3');
    set(handles.slider15,'enable','on','value',0.3);
    SliderPosition=0.3;
end

x=SliderPosition;

% KATHGORIA 2
h=get(handles.slider1,'Value');
d=get(handles.slider2,'Value');
e=get(handles.slider4,'Value');
x=get(handles.slider15,'Value');
V0=get(handles.slider16,'Value');

axes(handles.axes1)
axis off;
arxikn(h, d, e, x, V0)

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


function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ind_res
global V0;
SliderPosition = str2double(get(hObject,'String'));
V0 = SliderPosition;
if (V0<10)    
    set(handles.edit16,'enable','on','string','10');
    set(handles.slider16,'enable','on','value',10);
    SliderPosition=20;
end

if (V0>50)   
    set(handles.edit16,'enable','on','string','50');
    set(handles.slider16,'enable','on','value',50);
    SliderPosition=50;
end

V0=SliderPosition;

% KATHGORIA 2
h=get(handles.slider1,'Value');
d=get(handles.slider2,'Value');
e=get(handles.slider4,'Value');
x=get(handles.slider15,'Value');
V0=get(handles.slider16,'Value');

axes(handles.axes1)
axis off;
arxikn(h, d, e, x, V0)

if ind_res==1
axes(handles.axes3)
axis off;
apotelesm(h )
else
end

% KATHGORIA 4
set(handles.slider16,'enable','on','value',SliderPosition);

% KATHGORIA 5
guidata(hObject, handles)
% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
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

h=get(handles.slider1,'Value');
d=get(handles.slider2,'Value');
e=get(handles.slider4,'Value');
x=get(handles.slider15,'Value');
V0=get(handles.slider16,'Value');

axes(handles.axes1)
axis off;
arxikn(h, d, e, x, V0)

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
d=get(handles.slider2,'Value');
e=get(handles.slider4,'Value');
x=get(handles.slider15,'Value');
V0=get(handles.slider16,'Value');
axes(handles.axes1)
axis off;
arxikn(h, d, e, x, V0)

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
global 	e
% KATHGORIA 1
e=get(hObject,'Value');
set(handles.edit4,'String',num2str(e,'%6.0f'));
% addlistener(handles.slider4,'Value','PostSet',@(s,e) set(handles.edit4,'String',num2str(get(handles.slider4,'Value'),'%6.0f')));

h=get(handles.slider1,'Value');
d=get(handles.slider2,'Value');
e=get(handles.slider4,'Value');
x=get(handles.slider15,'Value');
V0=get(handles.slider16,'Value');
axes(handles.axes1)
axis off;
arxikn(h, d, e, x, V0)

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
global x
% KATHGORIA 1
x=get(hObject,'Value');
set(handles.edit15,'String',num2str(x,'%6.2f'));
% addlistener(handles.slider4,'Value','PostSet',@(s,e) set(handles.edit4,'String',num2str(get(handles.slider4,'Value'),'%6.0f')));

h=get(handles.slider1,'Value');
d=get(handles.slider2,'Value');
e=get(handles.slider4,'Value');
x=get(handles.slider15,'Value');
V0=get(handles.slider16,'Value');

axes(handles.axes1)
axis off;
arxikn(h, d, e, x, V0)

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





% --- Executes on slider movement.
function slider16_Callback(hObject, eventdata, handles)
% hObject    handle to slider16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ind_res
global V0
% KATHGORIA 1
V0=get(hObject,'Value');
set(handles.edit16,'String',num2str(V0,'%6.0f'));
% addlistener(handles.slider4,'Value','PostSet',@(s,e) set(handles.edit4,'String',num2str(get(handles.slider4,'Value'),'%6.0f')));

h=get(handles.slider1,'Value');
d=get(handles.slider2,'Value');
e=get(handles.slider4,'Value');
x=get(handles.slider15,'Value');
V0=get(handles.slider16,'Value');

axes(handles.axes1)
axis off;
arxikn(h, d, e, x, V0)

if ind_res==1
axes(handles.axes3)
axis off;
apotelesm(h)
else
end
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider16 (see GCBO)
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
     global xx
   global VV0
  global ee;
  
L=0.2;
   A=hh*L;
e0=8.85*10^(-12);

C0=e0*A/dd*10^12;
Q0=C0*VV0;

C1=ee*e0*A/xx*10^12;
C2=e0*A/(dd-xx)*10^12;
C12 = (C1*C2)/(C1+C2);
Q12 = VV0*C12;
Q1 = Q12;
Q2 = Q12;
V1=Q1/C1;
V2=Q2/C2;




hn =num2str(hh ,'%6.1f');
dn =num2str(dd ,'%6.1f');
en =num2str(ee ,'%6.1f');
xn =num2str(xx ,'%6.1f');

C12n =num2str(C12 ,'%6.2f');
V0n =num2str(VV0 ,'%6.2f');


C1n =num2str(C1 ,'%6.2f');
V1n =num2str(V1 ,'%6.2f');
Q1n =num2str(Q1 ,'%6.1f');

C2n =num2str(C2 ,'%6.2f');
V2n =num2str(V2 ,'%6.2f');
Q2n =num2str(Q2 ,'%6.1f');


pin_x = [0 1 1 0];
pin_y = [0 0  1 1];

  fill(pin_x, pin_y, [1 1 1])
  
  lin_x = [0 0];
    lin_y = [0 1];
    line(lin_x+0.22, lin_y, 'color', 'k')
    line(lin_x+0.48, lin_y, 'color', 'k')
    line(lin_x+0.74, lin_y, 'color', 'k')
  
 met1 = -0.04;
met2 = 0.18;
met3 = 0.43;
met4 = 0.7;

 text(0.1+met1, 0.8, 'h =' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 text(0.15+met1, 0.8, hn  , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'r')
 text(0.2+met1, 0.8, 'm' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met1, 0.6, 'd =' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 text(0.15+met1, 0.6, dn  , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'r')
 text(0.2+met1, 0.6, 'm' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met1, 0.4, 'e =' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 text(0.15+met1, 0.4, en  , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'r')
 
%  
text(0.1+met1, 0.2, 'x =' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 text(0.15+met1, 0.2, xn  , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'r')
 text(0.2+met1, 0.2, 'm' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met2, 0.8, 'C_0 =' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 text(0.16+met2, 0.81, C12n  , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'r')
 text(0.23+met2, 0.81, 'pF' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met2, 0.5, 'V_0 =' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 text(0.16+met2, 0.51, V0n  , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'r')
 text(0.23+met2, 0.51, 'V' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met2, 0.2, 'Q_0 =' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 text(0.16+met2, 0.21, Q1n  , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'r')
 text(0.23+met2, 0.21, 'pC' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met3, 0.8, 'C_1 =' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 text(0.16+met3, 0.81, C1n  , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'r')
 text(0.23+met3, 0.81, 'pF' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met3, 0.5, 'V_1 =' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 text(0.16+met3, 0.51, V1n  , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'r')
 text(0.23+met3, 0.51, 'V' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met3, 0.2, 'Q_1 =' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 text(0.16+met3, 0.21, Q1n  , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'r')
 text(0.23+met3, 0.21, 'pC' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met4, 0.8, 'C_2 =' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 text(0.16+met4, 0.81, C2n  , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'r')
 text(0.23+met4, 0.81, 'pF' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met4, 0.5, 'V_2 =' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 text(0.16+met4, 0.51, V2n  , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'r')
 text(0.23+met4, 0.51, 'V' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met4, 0.2, 'Q_2 =' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 text(0.16+met4, 0.21, Q2n  , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'r')
 text(0.23+met4, 0.21, 'pC' , 'FontUnits','normalized','FontSize',0.11,'FontName', 'Unicode', 'Color', 'k')
 
  
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
global e;
global x;
global V0;


% KATHGORIA 4
% gia ola ta programmata

% KATHGORIA 5
set(handles.checkbox3,'string','Δυναμικές γραμμές','FontName', 'Unicode') 

% KATHGORIA 6
h=get(handles.slider1,'Value');
d=get(handles.slider2,'Value');
e=get(handles.slider4,'Value');
x=get(handles.slider15,'Value');
V0=get(handles.slider16,'Value');
axes(handles.axes1)
axis off;
arxikn(h,d,e, x, V0)







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
global e;
global x;
global V0;

% KATHGORIA 4
% gia ola ta programmata


% KATHGORIA 5
set(handles.checkbox5,'string','Ηλεκτρικό φορτίο','FontName', 'Unicode') 

% KATHGORIA 6
% KATHGORIA 6
h=get(handles.slider1,'Value');
d=get(handles.slider2,'Value');
e=get(handles.slider4,'Value');
x=get(handles.slider15,'Value');
V0=get(handles.slider16,'Value');
axes(handles.axes1)
axis off;
arxikn(h,d,e, x, V0)

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
global e;
global x;
global V0;

% KATHGORIA 4
% gia ola ta programmata


% KATHGORIA 5
set(handles.checkbox6,'string','Διαστάσεις','FontName', 'Unicode') 

% KATHGORIA 6
% KATHGORIA 6
h=get(handles.slider1,'Value');
d=get(handles.slider2,'Value');
e=get(handles.slider4,'Value');
x=get(handles.slider15,'Value');
V0=get(handles.slider16,'Value');
axes(handles.axes1)
axis off;
arxikn(h,d,e, x, V0)


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
global e;
global x;
global V0;

% KATHGORIA 4
% gia ola ta programmata


% KATHGORIA 5
set(handles.checkbox17,'string','Ένταση πεδίου','FontName', 'Unicode') 

% KATHGORIA 6
% KATHGORIA 6
h=get(handles.slider1,'Value');
d=get(handles.slider2,'Value');
e=get(handles.slider4,'Value');
x=get(handles.slider15,'Value');
V0=get(handles.slider16,'Value');
axes(handles.axes1)
axis off;
arxikn(h,d,e, x, V0)

% Hint: get(hObject,'Value') returns toggle state of checkbox17


% Hint: get(hObject,'Value') returns toggle state of checkbox13

function arxikn(h,d,e, x, V0)  
% KATHGORIA 1
global synt_E;
global synt_q;
global synt_d;
global synt_E1;

  global hh
  global dd
 global ee
 global VV0
   global xx


hh = h;
dd = d;

ee = e;
VV0 = V0;
xx=x;
%battery
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
%thetikos polos
h_arnitikou=0.4; %ypsos +polou apo -0.5 ews -0.1


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

dist_x = [0  x x 0]+0.51-d/2;
dist_y = [-0.006 -0.006 0.006 0.006]+0.5+h/2+0.06;

dista_x = [-0.003 0.003 0.003 -0.003]+0.51-d/2;
dista_y = [-0.04 -0.04 0.04 0.04]+0.5+h/2+0.06;

distb_x = [-0.003 0.003 0.003 -0.003]+0.51-d/2+x;
distb_y = [-0.04 -0.04 0.04 0.04]+0.5+h/2+0.06;

% Dynamikes grammes

Ed_x = [0.48+d/2  0.52-d/2+0.02      0.52-d/2+0.02   0.52-d/2 0.52-d/2+0.02      0.52-d/2+0.02 0.48+d/2];
Ed_y = [0.005 0.005 0.03 0 -0.03 -0.005 -0.005]+0.5;

fill(op1_x,op1_y,[0 1 0],...
    op2_x,op2_y,[0 1 0],...
    pol1_x,pol1_y,[1 0 0],...
    pol2_x,pol2_y,[1 0 0],...
    h_x*synt_d, h_y*synt_d, [0 0 0],...
    ha_x*synt_d, ha_y*synt_d, [0 0 0],...
    hb_x*synt_d, hb_y*synt_d, [0 0 0],....
    d_x*synt_d, d_y*synt_d,[0 0 0],...
    da_x*synt_d, da_y*synt_d, [0 0 0],...
    db_x*synt_d, db_y*synt_d, [0 0 0],...
    diil_x,diil_y,[0,1,1],...
    dist_x*synt_d, dist_y*synt_d, [0 0 0],...
    dista_x*synt_d, dista_y*synt_d, [0 0 0],...
     distb_x*synt_d, distb_y*synt_d, [0 0 0],...
     Ed_x*synt_E , Ed_y*synt_E+0.04, [ 0 0 1],...
 Ed_x*synt_E , Ed_y*synt_E+h/3+0.04, [ 0 0 1],...
     Ed_x*synt_E , Ed_y*synt_E-h/3-0.02, [ 0 0 1])




axis([-0.1,1.1,-0.7,3.23])

set(gca,'xtick',[]) %apokripsi timwn axona x
set(gca,'ytick',[]) %apokripsi timwn axona y

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

text(0.35 ,2.8, 'Ισοδύναμο κύκλωμα', 'FontUnits','normalized','FontSize',0.04,'FontName', 'Unicode', 'Color', 'b') 

if synt_q==1
text(0.53+0.5*d ,h/4+0.48, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r') 
text(0.53+0.5*d ,h/2+0.48, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r')
text(0.53+0.5*d ,0.48, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r')
text(0.53+0.5*d ,-h/2+0.48, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r')
text(0.53+0.5*d ,-h/4+0.48, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r')
 
 
text(0.55-0.5*d-0.1 ,h/4+0.48, '-', 'FontUnits','normalized','FontSize',0.08,'FontName', 'Unicode', 'Color', 'r')
text(0.55-0.5*d-0.1 ,h/2+0.48, '-', 'FontUnits','normalized','FontSize',0.08,'FontName', 'Unicode', 'Color', 'r')
text(0.55-0.5*d-0.1 ,0.48, '-', 'FontUnits','normalized','FontSize',0.08,'FontName', 'Unicode', 'Color', 'r')
text(0.55-0.5*d-0.1 ,-h/2+0.48, '-', 'FontUnits','normalized','FontSize',0.08,'FontName', 'Unicode', 'Color', 'r')
text(0.55-0.5*d-0.1 ,-h/4+0.48, '-', 'FontUnits','normalized','FontSize',0.08,'FontName', 'Unicode', 'Color', 'r')

text(0.5-0.5*d+x-0.01 ,h/4+0.48, '-', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', [0 0 1]) 
text(0.5-0.5*d+x-0.01 ,h/2+0.48, '-', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', [0 0 1])
text(0.5-0.5*d+x-0.01 ,0.48, '-', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', [0 0 1])
text(0.5-0.5*d+x-0.01 ,-h/2+0.48, '-', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', [0 0 1])
text(0.5-0.5*d+x-0.01 ,-h/4+0.48, '-', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', [0 0 1])

text(0.5-0.5*d+0.03 ,h/4+0.48, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', [0 0 1])
text(0.5-0.5*d+0.03 ,h/2+0.48, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', [0 0 1])
text(0.5-0.5*d+0.03 ,0.48, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', [0 0 1])
text(0.5-0.5*d+0.03 ,-h/2+0.48, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', [0 0 1])
text(0.5-0.5*d+0.03,-h/4+0.48, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', [0 0 1])



text(0.45+0.5*d ,h/2+0.65, '+Q_0', 'FontUnits','normalized','FontSize',0.04,'FontName', 'Unicode', 'Color', 'r')
text(0.44-0.5*d ,h/2+0.65, '-Q_0', 'FontUnits','normalized','FontSize',0.04,'FontName', 'Unicode', 'Color', 'r')
   
text(0.1 ,2.85, '-Q_1', 'FontUnits','normalized','FontSize',0.04,'FontName', 'Unicode', 'Color', 'r')
text(0.2 ,2.85, '+Q_1', 'FontUnits','normalized','FontSize',0.04,'FontName', 'Unicode', 'Color', 'r')

text(0.72 ,2.85, '-Q_1', 'FontUnits','normalized','FontSize',0.04,'FontName', 'Unicode', 'Color', 'r')
text(0.82 ,2.85, '+Q_1', 'FontUnits','normalized','FontSize',0.04,'FontName', 'Unicode', 'Color', 'r')

text(0.11 ,2.7, '-', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r')
text(0.25 ,2.7, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r')

text(0.725 ,2.7, '-', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r')
text(0.87 ,2.7, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r')


else
end

text(0.48 ,-0.6, 'V_0', 'FontUnits','normalized','FontSize',0.04,'FontName', 'Unicode', 'Color', 'r')
text(0.48+L_batt/2+0.02 ,-h_arnitikou/2, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r')
text(0.48-L_batt/2-0.01 ,-h_arnitikou/2, '-', 'FontUnits','normalized','FontSize',0.08,'FontName', 'Unicode', 'Color', 'r')

if synt_d==1
text(h_x(1)-0.03 ,0.7, 'h', 'FontUnits','normalized','FontSize',0.04,'FontName', 'Unicode', 'Color', 'k')
text(0.48 ,0.5-h/2-0.16, 'd', 'FontUnits','normalized','FontSize',0.04,'FontName', 'Unicode', 'Color', 'k')
else
end

if synt_d==1
text((dist_x(1)+dist_x(2))/2 ,0.5+h/2+0.15, 'x', 'FontUnits','normalized','FontSize',0.04,'FontName', 'Unicode', 'Color', 'k')
else
end
% hold on
%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
h2=0.4;%ypsos oplismou apo 0.2-0.8
d2=0.2; %apostasi oplismwn apo 0.1-0.4
x1 =0.06;
h1=0.4;
d1=0.2;
L1=0.1; %platos oplismou panta stathero

%battery
bL_batt=0.1; %platos polou
bd_batt=0.1; %apostasi polwn apo 0.45-0.55
%arnitikos polos
bh_thetikou=0.2; %ypsos +polou apo -0.35 ews -0.55
%thetikos polos
bh_arnitikou=0.4; %ypsos +polou apo -0.5 ews -0.1



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


fill(bop1_x,bop1_y+met5,[0 0 0],...
    bop2_x-0.12,bop2_y+met5,[0 0 0],...
     bdiil_x,bdiil_y+met5,[0,1,1])


hold on;

fill(bop3_x+0.12,bop3_y+met5,[0 0 0],...
    bop4_x,bop4_y+met5,[0 0 0])


set(gca,'xtick',[]) %apokripsi timwn axona x1
set(gca,'ytick',[]) %apokripsi timwn axona y

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

lin3_x=[1,0.5+bd_batt/4+L1/20+0.005];
lin3_y=[-0.3,-0.3]+met5;
line(lin3_x,lin3_y,'linewidth',5,'Color',[0,0,0])

lin4_x=[0,0.5-bd_batt/4-L1/20-0.005];
lin4_y=[-0.3,-0.3]+met5;
line(lin4_x,lin4_y,'linewidth',5,'Color',[0,0,0])

lin5_x=[bop2_x(2)-0.12,bop3_x(1)+0.12];
lin5_y=[0.5,0.5]+met5;
line(lin5_x,lin5_y,'linewidth',5,'Color',[0,0,0])

%katheta kalwdia

lin5_x=[0,0];
lin5_y=[-0.315,0.515]+met5;
line(lin5_x,lin5_y,'linewidth',5,'Color',[0,0,0])

lin6_x=[1,1];
lin6_y=[-0.315,0.515]+met5;
line(lin6_x,lin6_y,'linewidth',5,'Color',[0,0,0])


text(0.48 ,-0.61+met5, 'V_0', 'FontUnits','normalized','FontSize',0.04,'FontName', 'Unicode', 'Color', 'r')
text(0.48+bL_batt/2+0.02 ,-bh_arnitikou/2+met5, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r')
text(0.48-bL_batt/2-0.01 ,-bh_arnitikou/2+met5, '-', 'FontUnits','normalized','FontSize',0.08,'FontName', 'Unicode', 'Color', 'r')

text(0.17 ,h1/2-0.06+met5, 'C_1', 'FontUnits','normalized','FontSize',0.04,'FontName', 'Unicode', 'Color', 'b')
text(0.80 ,h2/2-0.06+met5, 'C_2', 'FontUnits','normalized','FontSize',0.04,'FontName', 'Unicode', 'Color', 'b')



set(gca,'xtick',[]) %apokripsi timwn axona x1
set(gca,'ytick',[]) %apokripsi timwn axona y

hold off


 



% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
!circ_7.pdf

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
% KATHGORIA 6
% KATHGORIA 6
h=get(handles.slider1,'Value');
d=get(handles.slider2,'Value');
e=get(handles.slider4,'Value');
x=get(handles.slider15,'Value');
V0=get(handles.slider16,'Value');
axes(handles.axes1)
axis off;
arxikn(h,d,e, x, V0)
% Hint: get(hObject,'Value') returns toggle state of checkbox16


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
gui

close circ_7
