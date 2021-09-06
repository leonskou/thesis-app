function varargout = circ_2(varargin)
% CIRC_2 MATLAB code for circ_2.fig
%      CIRC_2, by itself, creates a new CIRC_2 or raises the existing
%      singleton*.
%
%      H = CIRC_2 returns the handle to a new CIRC_2 or the handle to
%      the existing singleton*.
%
%      CIRC_2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CIRC_2.M with the given input arguments.
%
%      CIRC_2('Property','Value',...) creates a new CIRC_2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before circ_2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to circ_2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help circ_2

% Last Modified by GUIDE v2.5 10-Jul-2021 21:27:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @circ_2_OpeningFcn, ...
                   'gui_OutputFcn',  @circ_2_OutputFcn, ...
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


% --- Executes just before circ_2 is made visible.
function circ_2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to circ_2 (see VARARGIN)

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

  global h1
  global d1
  global V
   global h2
     global d2


global synt_all
synt_all =0;

% KATHGORIA 5
% gia ola ta programmata
% energopoihsh aksona 1


% KATHGORIA 6


axes(handles.axes1)
axis off;
arxikn(0.6, 0.4, 20, 0.5, 0.3)

h1=get(handles.slider1,'Value');
d1=get(handles.slider2,'Value');
V=get(handles.slider4,'Value');
h2=get(handles.slider15,'Value');
d2=get(handles.slider16,'Value');

% Choose default command line output for circ_2
handles.output = hObject;
set(gcf, 'units','normalized','outerposition',[0 0 1 1]);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes circ_2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = circ_2_OutputFcn(hObject, eventdata, handles) 
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
global h1;
SliderPosition = str2double(get(hObject,'String'));
h1 = SliderPosition;
if (h1<0.2)    
    set(handles.edit1,'enable','on','string','0.2');
    set(handles.slider1,'enable','on','value',0.2);
    %return
    SliderPosition=0.2;
end

if (h1>0.6)   
    set(handles.edit1,'enable','on','string','0.6');
    set(handles.slider1,'enable','on','value',0.6);
    %retur
    SliderPosition=0.6;
end

h1 = SliderPosition;

% KATHGORIA 2

d1=get(handles.slider2,'Value');
V=get(handles.slider4,'Value');
h2=get(handles.slider15,'Value');
d2=get(handles.slider16,'Value');


axes(handles.axes1)
axis off;
arxikn(h1, d1, V, h2, d2)

if ind_res==1
axes(handles.axes3)
axis off;
apotelesm(h1 )
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
global d1;
SliderPosition = str2double(get(hObject,'String'));
d1  = SliderPosition;
if (d1 <0.2)    
    set(handles.edit2,'enable','on','string','0.2');
    set(handles.slider2,'enable','on','value',0.2);
    %return
    SliderPosition=0.2;
end

if (d1>0.4)   
    set(handles.edit2,'enable','on','string','0.4');
    set(handles.slider2,'enable','on','value',0.4);
    %return
    SliderPosition=0.4;
end

d1=SliderPosition;

h1=get(handles.slider1,'Value');
V=get(handles.slider4,'Value');
h2=get(handles.slider15,'Value');
d2=get(handles.slider16,'Value');

axes(handles.axes1)
axis off;
arxikn(h1, d1, V, h2, d2)

if ind_res==1
axes(handles.axes3)
axis off;
apotelesm(h1 )
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
global V;
SliderPosition = str2double(get(hObject,'String'));
V = SliderPosition;
if (V<10)    
    set(handles.edit4,'enable','on','string','10');
    set(handles.slider4,'enable','on','value',10);
    SliderPosition=10;
end

if (V>50)   
    set(handles.edit4,'enable','on','string','50');
    set(handles.slider4,'enable','on','value',50);
    SliderPosition=50;
end

V=SliderPosition;

% KATHGORIA 2
h1=get(handles.slider1,'Value');
d1=get(handles.slider2,'Value');
h2=get(handles.slider15,'Value');
d2=get(handles.slider16,'Value');

axes(handles.axes1)
axis off;
arxikn(h1, d1, V, h2, d2)

if ind_res==1
axes(handles.axes3)
axis off;
apotelesm(h1)
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
global h2;
SliderPosition = str2double(get(hObject,'String'));
h2 = SliderPosition;
if (e<0.2)    
    set(handles.edit15,'enable','on','string','0.2');
    set(handles.slider15,'enable','on','value',0.2);
    SliderPosition=0.2;
end

if (h2>0.6)   
    set(handles.edit15,'enable','on','string','0.6');
    set(handles.slider15,'enable','on','value',0.6);
    SliderPosition=0.6;
end

h2=SliderPosition;

% KATHGORIA 2
h1=get(handles.slider1,'Value');
d1=get(handles.slider2,'Value');
V=get(handles.slider4,'Value');
d2=get(handles.slider16,'Value');

axes(handles.axes1)
axis off;
arxikn(h1, d1, V, h2, d2)

if ind_res==1
axes(handles.axes3)
axis off;
apotelesm(h1 )
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
global d2;
SliderPosition = str2double(get(hObject,'String'));
d2 = SliderPosition;
if (d2<0.2)    
    set(handles.edit16,'enable','on','string','0.2');
    set(handles.slider16,'enable','on','value',0.2);
    SliderPosition=10;
end

if (d2>0.4)   
    set(handles.edit16,'enable','on','string','0.4');
    set(handles.slider16,'enable','on','value',0.4);
    SliderPosition=0.4;
end

d2=SliderPosition;

% KATHGORIA 2
h1=get(handles.slider1,'Value');
d1=get(handles.slider2,'Value');
V=get(handles.slider4,'Value');
h2=get(handles.slider15,'Value');

axes(handles.axes1)
axis off;
arxikn(h1, d1, V, h2, d2)

if ind_res==1
axes(handles.axes3)
axis off;
apotelesm(h1)
else
end

% KATHGORIA 4
set(handles.slider4,'enable','on','value',SliderPosition);

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
global h1
% KATHGORIA 1
h1=get(hObject,'Value');
set(handles.edit1,'String',num2str(h1,'%6.2f'));
% addlistener(handles.slider1,'Value','PostSet',@(s,e) set(handles.edit1,'String',num2str(get(handles.slider1,'Value'),'%6.1f')));

% KATHGORIA 2

d1=get(handles.slider2,'Value');
V=get(handles.slider4,'Value');
h2=get(handles.slider15,'Value');
d2=get(handles.slider16,'Value');

axes(handles.axes1)
axis off;
arxikn(h1, d1, V, h2, d2)

if ind_res==1
axes(handles.axes3)
axis off;
apotelesm(h1 )
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
global d1
% KATHGORIA 1
d1=get(hObject,'Value');
set(handles.edit2,'String',num2str(d1,'%6.2f'));
% addlistener(handles.slider2,'Value','PostSet',@(s,e) set(handles.edit2,'String',num2str(get(handles.slider2,'Value'),'%6.1f')));

h1=get(handles.slider1,'Value');
V=get(handles.slider4,'Value');
h2=get(handles.slider15,'Value');
d2=get(handles.slider16,'Value');

axes(handles.axes1)
axis off;
arxikn(h1, d1, V, h2, d2)

if ind_res==1
axes(handles.axes3)
axis off;
apotelesm(h1 )
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
global V
% KATHGORIA 1
V=get(hObject,'Value');
set(handles.edit4,'String',num2str(V,'%6.1f'));
% addlistener(handles.slider4,'Value','PostSet',@(s,e) set(handles.edit4,'String',num2str(get(handles.slider4,'Value'),'%6.0f')));

h1=get(handles.slider1,'Value');
d1=get(handles.slider2,'Value');
h2=get(handles.slider15,'Value');
d2=get(handles.slider16,'Value');

axes(handles.axes1)
axis off;
arxikn(h1, d1, V, h2, d2)

if ind_res==1
axes(handles.axes3)
axis off;
apotelesm(h1 )
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
global h2
% KATHGORIA 1
h2=get(hObject,'Value');
set(handles.edit15,'String',num2str(h2,'%6.2f'));
% addlistener(handles.slider4,'Value','PostSet',@(s,e) set(handles.edit4,'String',num2str(get(handles.slider4,'Value'),'%6.0f')));

h1=get(handles.slider1,'Value');
d1=get(handles.slider2,'Value');
V=get(handles.slider4,'Value');
d2=get(handles.slider16,'Value');

axes(handles.axes1)
axis off;
arxikn(h1, d1, V, h2, d2)

if ind_res==1
axes(handles.axes3)
axis off;
apotelesm(h1 )
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
global d2
% KATHGORIA 1
d2=get(hObject,'Value');
set(handles.edit1,'String',num2str(d2,'%6.2f'));
% addlistener(handles.slider1,'Value','PostSet',@(s,e) set(handles.edit1,'String',num2str(get(handles.slider1,'Value'),'%6.1f')));

% KATHGORIA 2

h1=get(handles.slider1,'Value');
d1=get(handles.slider2,'Value');
V=get(handles.slider4,'Value');
h2=get(handles.slider15,'Value');


axes(handles.axes1)
axis off;
arxikn(h1, d1, V, h2, d2)

if ind_res==1
axes(handles.axes3)
axis off;
apotelesm(h1 )
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
global h1;



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
    
    apotelesm(h1)
    



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

function apotelesm(h1)  % Ta deixnei otan stamathsei

%     % KATHGORIA
% if (ind_s==1) 
  global ee;
  % Ypovathro apotelesmatwn

  global hh1
  global dd1
    global hh2
  global dd2
  global VV
   global C
     global Q

     e0=8.85*10^(-12);
L=0.2;
A1 = hh1*L;
A2 = hh2*L;
C1=(e0*A1/dd1)*10^12;
C2=(e0*A2/dd2)*10^12;
C=(C1*C2)/(C1+C2);
Q=C*VV;
V1=Q/C1;
V2=Q/C2;


hm =num2str(hh1 ,'%6.2f');
hn =num2str(hh2 ,'%6.2f');
dm =num2str(dd1 ,'%6.2f');
dn =num2str(dd2 ,'%6.2f');
Vm=num2str(V1 ,'%6.2f');
Vn =num2str(V2 ,'%6.2f');
Vp =num2str(VV ,'%6.2f');
Cm =num2str(C1 ,'%6.2f');
Cn =num2str(C2 ,'%6.2f');
Cp =num2str(C ,'%6.2f');
Qm =num2str(Q ,'%6.2f');
Qn =num2str(Q ,'%6.2f');
Qp =num2str(Q ,'%6.2f');
pin_x = [0 1 1 0];
pin_y = [0 0  1 1];


  fill(pin_x, pin_y, [1 1 1])
  
met1 = 0.05;
met2 = 0.32;
met3 = 0.59;

 text(0.1+met1, 0.9, 'h_1 =' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 text(0.17+met1, 0.9, hm  , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'r')
 text(0.24+met1, 0.9, 'm' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met1, 0.7, 'd_1 =' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 text(0.17+met1, 0.7, dm  , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'r')
 text(0.24+met1, 0.7, 'm' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met1, 0.1, 'Q_1 =' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 text(0.17+met1, 0.1, Qm  , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'r')
 text(0.24+met1, 0.1, 'pC' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met1, 0.5, 'C_1 =' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 text(0.17+met1, 0.5, Cm  , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'r')
 text(0.24+met1, 0.5, 'pF' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met1, 0.3, 'V_1 =' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 text(0.17+met1, 0.3, Vm  , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'r')
 text(0.24+met1, 0.3, 'V' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met2, 0.9, 'h_2 =' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 text(0.17+met2, 0.9, hn  , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'r')
 text(0.24+met2, 0.9, 'm' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')

 text(0.1+met2, 0.7, 'd_2 =' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 text(0.17+met2, 0.7, dn  , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'r')
 text(0.24+met2, 0.7, 'm' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met2, 0.1, 'Q_2 =' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 text(0.17+met2, 0.1, Qn  , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'r')
 text(0.24+met2, 0.1, 'pC' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met2, 0.5, 'C_2 =' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 text(0.17+met2, 0.5, Cn  , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'r')
 text(0.24+met2, 0.5, 'pF' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met2, 0.3, 'V_2 =' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 text(0.17+met2, 0.3, Vn  , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'r')
 text(0.24+met2, 0.3, 'V' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met3, 0.1, 'Q =' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 text(0.16+met3, 0.1, Qp  , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'r')
 text(0.25+met3, 0.1, 'pC' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met3, 0.5, 'C =' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 text(0.16+met3, 0.5, Cp  , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'r')
 text(0.25+met3, 0.5, 'pF' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met3, 0.3, 'V =' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 text(0.16+met3, 0.3, Vp  , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'r')
 text(0.25+met3, 0.3, 'V' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')


  
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
global h1;
global d1;
global V;
global h2;
global d2;


% KATHGORIA 4
% gia ola ta programmata

% KATHGORIA 5
set(handles.checkbox3,'string','Δυναμικές γραμμές','FontName', 'Unicode') 

% KATHGORIA 6
h1=get(handles.slider1,'Value');
d1=get(handles.slider2,'Value');
V=get(handles.slider4,'Value');
h2=get(handles.slider15,'Value');
d2=get(handles.slider16,'Value');

axes(handles.axes1)
axis off;
arxikn(h1,d1,V, h2, d2)







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
global h1;
global d1;
global V;
global h2;
global d2;

% KATHGORIA 4
% gia ola ta programmata


% KATHGORIA 5
set(handles.checkbox5,'string','Ηλεκτρικό φορτίο','FontName', 'Unicode') 

% KATHGORIA 6
% KATHGORIA 6
h1=get(handles.slider1,'Value');
d1=get(handles.slider2,'Value');
V=get(handles.slider4,'Value');
h2=get(handles.slider15,'Value');
d2=get(handles.slider16,'Value');

axes(handles.axes1)
axis off;
arxikn(h1,d1,V, h2, d2)

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
global h1;
global d1;
global V;
global h2;
global d2;
% KATHGORIA 4
% gia ola ta programmata


% KATHGORIA 5
set(handles.checkbox6,'string','Διαστάσεις πυκνωτή','FontName', 'Unicode') 

% KATHGORIA 6
% KATHGORIA 6
h1=get(handles.slider1,'Value');
d1=get(handles.slider2,'Value');
V=get(handles.slider4,'Value');
h2=get(handles.slider15,'Value');
d2=get(handles.slider16,'Value');

axes(handles.axes1)
axis off;
arxikn(h1,d1,V, h2, d2)


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
global h1;
global d1;
global V;
global h2;
global d2;

% KATHGORIA 4
% gia ola ta programmata


% KATHGORIA 5
set(handles.checkbox17,'string','Ένταση πεδίου','FontName', 'Unicode') 

% KATHGORIA 6
% KATHGORIA 6
h1=get(handles.slider1,'Value');
d1=get(handles.slider2,'Value');
V=get(handles.slider4,'Value');
h2=get(handles.slider15,'Value');
d2=get(handles.slider16,'Value');

axes(handles.axes1)
axis off;
arxikn(h1,d1,V, h2, d2)

% Hint: get(hObject,'Value') returns toggle state of checkbox17


% Hint: get(hObject,'Value') returns toggle state of checkbox13

function arxikn(h1,d1,V, h2, d2)  
% KATHGORIA 1
global synt_E;
global synt_q;
global synt_d;

  global hh1
  global dd1
    global hh2
  global dd2
  global VV
   global C
     global Q


hh1 = h1;
dd1 = d1;
VV = V;
hh2 = h2;
dd2 = d2;


%battery





%battery
L_batt=0.1; %platos polou
d_batt=0.1; %apostasi polwn apo 0.45-0.55
%arnitikos polos
h_thetikou=0.24; %ypsos +polou apo -0.35 ews -0.55
A_thetikou=h_thetikou*L_batt; %embado +polou
%thetikos polos
h_arnitikou=0.4; %ypsos +polou apo -0.5 ews -0.1
A_arnitikou=h_arnitikou*L_batt; %embado +polou

%upologismos megethwn

%piknwtis 1
% N1n =num2str(N1, '%6.1f'); ektuposi arithmou
L=0.24; %platos oplismou panta stathero
A1=h1*L;
e0=8.85*10^(-12);
% C=e0*A1/d;
% Q=C*V;
%Cn =num2str(C, '%6.1f');

%sxediasi oplismou
op1_x0 =[-L/10 ,L/10 ,L/10 ,-L/10];
op1_y0 =[-h1/2 ,-h1/2, h1/2,h1/2];

op1_x=op1_x0+0.25-(d1/2);
op1_y=op1_y0+0.5;

op2_x0 =[-L/10 ,L/10 ,L/10 ,-L/10];
op2_y0 =[-h1/2 ,-h1/2, h1/2,h1/2];

op2_x=op2_x0+0.25+(d1/2);
op2_y=op2_y0+0.5;

op3_x0 =[-L/10 ,L/10 ,L/10 ,-L/10];
op3_y0 =[-h2/2 ,-h2/2, h2/2,h2/2];

op3_x=op3_x0+0.75-(d2/2);
op3_y=op3_y0+0.5;

op4_x0 =[-L/10 ,L/10 ,L/10 ,-L/10];
op4_y0 =[-h2/2 ,-h2/2, h2/2,h2/2];

op4_x=op4_x0+0.75+(d2/2);
op4_y=op4_y0+0.5;

%sxediasi velos
vel_x10=[-L/10 ,-d1+(L/10)*2 ,-d1+(L/10)*2 ,-d1+L/10 ,-d1+(L/10)*2 ,-d1+(L/10)*2,-L/10];
vel_x20=[-L/10 ,-d2+(L/10)*2 ,-d2+(L/10)*2 ,-d2+L/10 ,-d2+(L/10)*2 ,-d2+(L/10)*2,-L/10];
vel_y0=[-0.005 ,-0.005 ,-L/15 ,0 ,+L/15 ,+0.005,+0.005];
vel1_x=(vel_x10+0.25+(d1/2))*synt_E;
vel2_x=(vel_x20+0.75+(d2/2))*synt_E;
vel_y=(vel_y0+0.49)*synt_E;

%sxediasi batarias opou pol apo to "polos"
pol1_x0 =[-0.01 ,0.01 ,0.01 ,-0.01];
pol1_y0 =[-h_thetikou/2 ,-h_thetikou/2, h_thetikou/2,h_thetikou/2];

pol1_x=pol1_x0+0.5-(d_batt/4);
pol1_y=pol1_y0-0.3;

pol2_x0 =[-0.01 ,0.01 ,0.01 ,-0.01];
pol2_y0 =[-h_arnitikou/2 ,-h_arnitikou/2, h_arnitikou/2,h_arnitikou/2];

pol2_x=pol2_x0+0.5+(d_batt/4);
pol2_y=pol2_y0-0.3;

h1_x = [-0.002 0.002 0.002 -0.002]+0.23-(d1/2)-0.05;
h1_y = [-h1/2 -h1/2 h1/2 h1/2]+0.5;

h1a_x = [-0.01 0.01 0.01 -0.01]+0.23-(d1/2)-0.05;
h1a_y = [-0.003 -0.003 0.003 0.003]+0.5-h1/2;

h1b_x = [-0.01 0.01 0.01 -0.01]+0.23-(d1/2)-0.05;
h1b_y = [-0.003 -0.003 0.003 0.003]+0.5+h1/2;

h2_x = [-0.002 0.002 0.002 -0.002]+0.78+(d2/2)+0.05;
h2_y = [-h2/2 -h2/2 h2/2 h2/2]+0.5;

h2a_x = [-0.01 0.01 0.01 -0.01]+0.78+(d2/2)+0.05;
h2a_y = [-0.003 -0.003 0.003 0.003]+0.5-h2/2;

h2b_x = [-0.01 0.01 0.01 -0.01]+0.78+(d2/2)+0.05;
h2b_y = [-0.003 -0.003 0.003 0.003]+0.5+h2/2;

d1_x = [0 d1 d1 0]+0.25-(d1/2);
d1_y = [-0.003 -0.003 0.003 0.003]+0.5-h1/2-0.05;

d1a_x = [0.002 0.002 -0.002 -0.002]+0.25-(d1/2);
d1a_y = [-0.025 0.025 0.025 -0.025]+0.5-(h1/2)-0.05;

d1b_x = [0.002 0.002 -0.002 -0.002]+0.25+(d1/2);
d1b_y = [-0.025 0.025 0.025 -0.025]+0.5-(h1/2)-0.05;

d2_x = [0 d2 d2 0]+0.75-(d2/2);
d2_y = [-0.003 -0.003 0.003 0.003]+0.5-h2/2-0.05;

d2a_x = [0.002 0.002 -0.002 -0.002]+0.75-(d2/2);
d2a_y = [-0.025 0.025 0.025 -0.025]+0.5-(h2/2)-0.05;

d2b_x = [0.002 0.002 -0.002 -0.002]+0.75+(d2/2);
d2b_y = [-0.025 0.025 0.025 -0.025]+0.5-(h2/2)-0.05;



fill(op1_x,op1_y,[0 1 0],...
    op2_x,op2_y,[0 1 0],...
    vel1_x,vel_y,[0,0,1],...
    vel1_x,vel_y+h1/4,[0,0,1],...
    vel1_x,vel_y+h1/2,[0,0,1],...
    vel1_x,vel_y-h1/4,[0,0,1],...
    vel1_x,vel_y-h1/2+0.02,[0,0,1],...
    h1_x*synt_d, h1_y*synt_d, [0 0 0],...
    h1a_x*synt_d, h1a_y*synt_d, [0 0 0],...
    h1b_x*synt_d, h1b_y*synt_d, [0 0 0],....
    h2_x*synt_d, h2_y*synt_d, [0 0 0],...
    h2a_x*synt_d, h2a_y*synt_d, [0 0 0],...
    h2b_x*synt_d, h2b_y*synt_d, [0 0 0],...
    d1_x*synt_d, d1_y*synt_d,[0 0 0],....
    d1a_x*synt_d, d1a_y*synt_d, [0 0 0],...
    d1b_x*synt_d, d1b_y*synt_d, [0 0 0],...
    d2_x*synt_d, d2_y*synt_d,[0 0 0],...
        d2a_x*synt_d, d2a_y*synt_d, [0 0 0],...
    d2b_x*synt_d, d2b_y*synt_d, [0 0 0])


hold on;

fill(op3_x,op3_y,[0 1 0],...
    op4_x,op4_y,[0 1 0],...
    vel2_x,vel_y,[0,0,1],...
    vel2_x,vel_y+h2/4,[0,0,1],...
    vel2_x,vel_y+h2/2,[0,0,1],...
    vel2_x,vel_y-h2/4,[0,0,1],...
    vel2_x,vel_y-h2/2+0.02,[0,0,1])

axis([-0.1,1.1,-0.7,1.1])

set(gca,'xtick',[-0.7:0.24:1.1]) %apokripsi timwn axona x
set(gca,'ytick',[-0.7:0.24:1.1]) %apokripsi timwn axona y

hold on;

fill(pol1_x,pol1_y,[1 0 0],...
    pol2_x,pol2_y,[1 0 0])

hold off;

%sxediasi kalwdiwn

%orizontia kalwdia
lin_x=[0,0.25-d1/2-L/10];
lin_y=[0.5,0.5];
line(lin_x,lin_y,'linewidth',5,'Color',[0,0,0])

lin2_x=[1,0.75+d2/2+L/10];
lin2_y=[0.5,0.5];
line(lin2_x,lin2_y,'linewidth',5,'Color',[0,0,0])

lin3_x=[1,0.5+d_batt/4+L/20];
lin3_y=[-0.3,-0.3];
line(lin3_x,lin3_y,'linewidth',5,'Color',[0,0,0])

lin4_x=[0,0.5-d_batt/4-L/20];
lin4_y=[-0.3,-0.3];
line(lin4_x,lin4_y,'linewidth',5,'Color',[0,0,0])

lin5_x=[op2_x(2),op3_x(1)];
lin5_y=[0.5,0.5];
line(lin5_x,lin5_y,'linewidth',5,'Color',[0,0,0])

%katheta kalwdia

lin5_x=[0,0];
lin5_y=[-0.315,0.515];
line(lin5_x,lin5_y,'linewidth',5,'Color',[0,0,0])

lin6_x=[1,1];
lin6_y=[-0.315,0.515];
line(lin6_x,lin6_y,'linewidth',5,'Color',[0,0,0])

%oria d kai h

%lin7_x=[-L/10+0.25-(d1/2),L/10+0.25+(d1/2)];
%lin7_y=[h1/2+0.24, h1/2+0.24]
%line(lin7_x,lin7_y,'linewidth',1,'Color',[0,0,0])

%lin8_x=[-L/10+0.75-(d2/2),L/10+0.75+(d2/2)];
%lin8_y=[h2/2+0.24,h2/2+0.24]
%line(lin8_x,lin8_y,'linewidth',1,'Color',[0,0,0])


if synt_q==1
text(0.28+0.5*d1 ,h1/4+0.5, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r') 
text(0.28+0.5*d1 ,h1/2+0.5, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r')
text(0.28+0.5*d1 ,-h1/2+0.5, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r')
text(0.28+0.5*d1 ,-h1/4+0.5, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r')

text(0.78+0.5*d2 ,h2/4+0.5, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r') 
text(0.78+0.5*d2 ,h2/2+0.5, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r')
text(0.78+0.5*d2 ,-h2/2+0.5, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r')
text(0.78+0.5*d2 ,-h2/4+0.5, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r')
 
text(0.2-0.5*d1 ,h1/4+0.5, '-','FontUnits','normalized','FontSize',0.08,'FontName', 'Unicode', 'Color', 'r')
text(0.2-0.5*d1 ,h1/2+0.5, '-','FontUnits','normalized','FontSize',0.08,'FontName', 'Unicode', 'Color', 'r')
text(0.2-0.5*d1 ,-h1/2+0.5, '-','FontUnits','normalized','FontSize',0.08,'FontName', 'Unicode', 'Color', 'r')
text(0.2-0.5*d1 ,-h1/4+0.5, '-','FontUnits','normalized','FontSize',0.08,'FontName', 'Unicode', 'Color', 'r')
 
text(0.7-0.5*d2 ,h2/4+0.5, '-','FontUnits','normalized','FontSize',0.08,'FontName', 'Unicode', 'Color', 'r')
text(0.7-0.5*d2 ,h2/2+0.5, '-','FontUnits','normalized','FontSize',0.08,'FontName', 'Unicode', 'Color', 'r')
text(0.7-0.5*d2 ,-h2/2+0.5, '-','FontUnits','normalized','FontSize',0.08,'FontName', 'Unicode', 'Color', 'r')
text(0.7-0.5*d2 ,-h2/4+0.5, '-','FontUnits','normalized','FontSize',0.08,'FontName', 'Unicode', 'Color', 'r')

text(0.2+0.5*d1 ,h1/2+0.58, '+Q_1', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r')
text(0.7+0.5*d2 ,h2/2+0.58, '+Q_2', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r')

text(0.24-0.5*d1 ,h1/2+0.58, '-Q_1', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r')
text(0.7-0.5*d2 ,h2/2+0.58, '-Q_2', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r')

else
end

text(0.48 ,-0.60, 'V', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r')
text(0.48+L_batt/2+0.02 ,-h_arnitikou/2, '+', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'r')
text(0.48-L_batt/2-0.01 ,-h_arnitikou/2, '-','FontUnits','normalized','FontSize',0.08,'FontName', 'Unicode', 'Color', 'r')
   
% text(0.22 ,h1/2+0.6, 'E', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'b')
% text(0.72 ,h2/2+0.6, 'E', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'b')

if synt_d==1
text(0.17-(d1/2)-0.05 ,h1/4+0.45, 'h_1', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'k')
text(0.75+(d2/2)+0.1 ,h2/4+0.45, 'h_2', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'k')

text((d1_x(1)+d1_x(2))/2 ,0.5-h1/2-0.17, 'd_1', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'k')
text((d2_x(1)+d2_x(2))/2 ,0.5-h2/2-0.17, 'd_2', 'FontUnits','normalized','FontSize',0.05,'FontName', 'Unicode', 'Color', 'k')
else
end
set(gca,'xtick',[]) %apokripsi timwn axona x
set(gca,'ytick',[]) %apokripsi timwn axona y



 



% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
!circ_2.pdf

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
h1=get(handles.slider1,'Value');
d1=get(handles.slider2,'Value');
V=get(handles.slider4,'Value');
h2=get(handles.slider15,'Value');
d2=get(handles.slider16,'Value');

axes(handles.axes1)
axis off;
arxikn(h1,d1,V, h2, d2)
% Hint: get(hObject,'Value') returns toggle state of checkbox16


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
gui

close circ_2
