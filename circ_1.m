function varargout = circ_1(varargin)
% CIRC_1 MATLAB code for circ_1.fig
%      CIRC_1, by itself, creates a new CIRC_1 or raises the existing
%      singleton*.
%
%      H = CIRC_1 returns the handle to a new CIRC_1 or the handle to
%      the existing singleton*.
%
%      CIRC_1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CIRC_1.M with the given input arguments.
%
%      CIRC_1('Property','Value',...) creates a new CIRC_1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before circ_1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to circ_1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help circ_1

% Last Modified by GUIDE v2.5 10-Jul-2021 19:38:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @circ_1_OpeningFcn, ...
                   'gui_OutputFcn',  @circ_1_OutputFcn, ...
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


% --- Executes just before circ_1 is made visible.
function circ_1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to circ_1 (see VARARGIN)

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

  global hh
  global d
  global V
   global C
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
arxikn(0.6, 0.4, 20)

h=get(handles.slider1,'Value');
d=get(handles.slider2,'Value');
V=get(handles.slider4,'Value');
e=get(handles.slider15,'Value');

% Choose default command line output for circ_1
handles.output = hObject;
set(gcf, 'units','normalized','outerposition',[0 0 1 1]);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes circ_1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = circ_1_OutputFcn(hObject, eventdata, handles) 
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
if (h<0.2)    
    set(handles.edit1,'enable','on','string','0.2');
    set(handles.slider1,'enable','on','value',0.2);
    %return
    SliderPosition=0.2;
end

if (h>0.6)   
    set(handles.edit1,'enable','on','string','0.6');
    set(handles.slider1,'enable','on','value',0.6);
    %retur
    SliderPosition=0.6;
end

h = SliderPosition;

% KATHGORIA 2

d=get(handles.slider2,'Value');
V=get(handles.slider4,'Value');


axes(handles.axes1)
axis off;
arxikn(h, d, V)

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
V=get(handles.slider4,'Value');

axes(handles.axes1)
axis off;
arxikn(h, d, V)

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
h=get(handles.slider1,'Value');
d=get(handles.slider2,'Value');

axes(handles.axes1)
axis off;
arxikn(h, d, V)

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
if (e<1)    
    set(handles.edit15,'enable','on','string','1');
    set(handles.slider15,'enable','on','value',1);
    SliderPosition=1;
end

if (e>101)   
    set(handles.edit15,'enable','on','string','101');
    set(handles.slider15,'enable','on','value',101);
    SliderPosition=101;
end

e=SliderPosition;

% KATHGORIA 2
DD=get(handles.slider1,'Value');
LL=get(handles.slider2,'Value');
V=get(handles.slider4,'Value');

axes(handles.axes1)
axis off;
arxikn(DD,LL,V, e)

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
V=get(handles.slider4,'Value');

axes(handles.axes1)
axis off;
arxikn(h, d, V)

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
V=get(handles.slider4,'Value');

axes(handles.axes1)
axis off;
arxikn(h, d, V)

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
global V
% KATHGORIA 1
V=get(hObject,'Value');
set(handles.edit4,'String',num2str(V,'%6.1f'));
% addlistener(handles.slider4,'Value','PostSet',@(s,e) set(handles.edit4,'String',num2str(get(handles.slider4,'Value'),'%6.0f')));

h=get(handles.slider1,'Value');
d=get(handles.slider2,'Value');

axes(handles.axes1)
axis off;
arxikn(h, d, V)

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
set(handles.edit15,'String',num2str(e,'%6.1f'));
% addlistener(handles.slider4,'Value','PostSet',@(s,e) set(handles.edit4,'String',num2str(get(handles.slider4,'Value'),'%6.0f')));

LL=get(handles.slider1,'Value');
DD=get(handles.slider2,'Value');
V=get(handles.slider4,'Value');

axes(handles.axes1)
axis off;
arxikn(DD,LL,V,e)

if ind_res==1
axes(handles.axes3)
axis off;
apotelesm(DD,LL,V )
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
  global ee;
  % Ypovathro apotelesmatwn

  global hh
  global dd
  global VV
   global C
     global Q
   global U
L=0.2;
   A=hh*L;
e0=8.85*10^(-12);

C=(e0*A/dd)*10^12;
Q=C*VV;
U = 0.5*C*VV^2;
hn =num2str(hh ,'%6.2f');
dn =num2str(dd ,'%6.2f');
Vn =num2str(VV ,'%6.1f');
Cn =num2str(C ,'%6.1f');
Qn =num2str(Q ,'%6.1f');
Un =num2str(U ,'%6.1f');
pin_x = [0 1 1 0];
pin_y = [0 0  1 1];

  fill(pin_x, pin_y, [1 1 1])
  
 met1 = -0.02;
met2 = 0.2;
met3 = 0.45;
met4 = 0.7;

lin_x =[0 0.04];
lin_y =[0 0.0];
line(lin_x+0.87, lin_y+0.82, 'Color', 'b', 'Linewidth', 1.5)

lin_x =[0 0.02];
lin_y =[0 0.0];
line(lin_x+0.845, lin_y+0.38, 'Color', 'b', 'Linewidth', 1.5)

text(0.1+met1, 0.7, 'h =' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 text(0.15+met1, 0.7, hn  , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'r')
 text(0.22+met1, 0.7, 'm' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met1, 0.4, 'd =' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 text(0.15+met1, 0.4, dn  , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'r')
 text(0.22+met1, 0.4, 'm' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 
  text(0.1+met2, 0.2, 'Q =' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 text(0.15+met2, 0.2, Qn  , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'r')
 text(0.22+met2, 0.2, 'pC' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met2, 0.8, 'C =' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 text(0.15+met2, 0.8, Cn  , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'r')
 text(0.22+met2, 0.8, 'pF' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 
 text(0.1+met2, 0.5, 'V =' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 text(0.15+met2, 0.5, Vn  , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'r')
 text(0.22+met2, 0.5, 'V' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 
  text(0.1+met3, 0.8, 'U =' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 text(0.15+met3, 0.8, Un  , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'r')
 text(0.22+met3, 0.81, 'x10^{-12} ' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'r')
 text(0.3+met3, 0.81, 'J' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'k')
 
 
text(0.18+met4, 0.88, 'Α' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'b')
text(0.1+met4, 0.8, 'C = ε_0 ' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'b')
text(0.18+met4, 0.75, 'd ' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'b')

text(0.1+met4, 0.6, 'Q = CV ' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'b')
text(0.15+met4, 0.45, '1 ' , 'FontUnits','normalized','FontSize',0.1,'FontName', 'Unicode', 'Color', 'b')
text(0.1+met4, 0.4, 'U =    CV^{2} ' , 'FontUnits','normalized','FontSize',0.12,'FontName', 'Unicode', 'Color', 'b')
text(0.15+met4, 0.32, '2 ' , 'FontUnits','normalized','FontSize',0.1,'FontName', 'Unicode', 'Color', 'b')
  
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
global V;



% KATHGORIA 4
% gia ola ta programmata

% KATHGORIA 5
set(handles.checkbox3,'string','Δυναμικές γραμμές','FontName', 'Unicode') 

% KATHGORIA 6
h=get(handles.slider1,'Value');
d=get(handles.slider2,'Value');
V=get(handles.slider4,'Value');

axes(handles.axes1)
axis off;
arxikn(h,d,V)







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
global V;

% KATHGORIA 4
% gia ola ta programmata


% KATHGORIA 5
set(handles.checkbox5,'string','Ηλεκτρικό φορτίο','FontName', 'Unicode') 

% KATHGORIA 6
% KATHGORIA 6
h=get(handles.slider1,'Value');
d=get(handles.slider2,'Value');
V=get(handles.slider4,'Value');

axes(handles.axes1)
axis off;
arxikn(h,d,V)

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
global V;

% KATHGORIA 4
% gia ola ta programmata


% KATHGORIA 5
set(handles.checkbox6,'string','Διαστάσεις πυκνωτή','FontName', 'Unicode') 

% KATHGORIA 6
% KATHGORIA 6
h=get(handles.slider1,'Value');
d=get(handles.slider2,'Value');
V=get(handles.slider4,'Value');

axes(handles.axes1)
axis off;
arxikn(h,d,V)


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
global V;

% KATHGORIA 4
% gia ola ta programmata


% KATHGORIA 5
set(handles.checkbox17,'string','Ένταση πεδίου','FontName', 'Unicode') 

% KATHGORIA 6
% KATHGORIA 6
h=get(handles.slider1,'Value');
d=get(handles.slider2,'Value');
V=get(handles.slider4,'Value');

axes(handles.axes1)
axis off;
arxikn(h,d,V)

% Hint: get(hObject,'Value') returns toggle state of checkbox17


% Hint: get(hObject,'Value') returns toggle state of checkbox13

function arxikn(h,d,V)  
% KATHGORIA 1
global synt_E;
global synt_q;
global synt_d;

  global hh
  global dd
  global VV
   global C
     global Q
   global U


hh = h;
dd = d;
VV = V;

%battery
L_batt=0.1; %platos polou
d_batt=0.1; %apostasi polwn apo 0.45-0.55
%arnitikos polos
h_thetikou=0.2; %ypsos +polou apo -0.35 ews -0.55
% A_thetikou=h_thetikou*L_batt; %embado +polou
%thetikos polos
h_arnitikou=0.4; %ypsos +polou apo -0.5 ews -0.1
% A_arnitikou=h_arnitikou*L_batt; %embado +polou

%upologismos megethwn
% N1n =num2str(N1, '%6.1f'); ektuposi arithmou
L=0.2; %platos oplismou panta stathero
A=h*L;
e0=8.85*10^(-12);
C=e0*A/d;
Q=C*V;
U =0.5*C*V^2;
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


fill(op1_x,op1_y,[0 1 0],...
    op2_x,op2_y,[0 1 0],...
    vel_x*synt_E,vel_y*synt_E,[0,0,1],...
    vel_x*synt_E,vel_y*synt_E+h/4,[0,0,1],...
    vel_x*synt_E,vel_y*synt_E+h/2,[0,0,1],...
    vel_x*synt_E,vel_y*synt_E-h/4,[0,0,1],...
    vel_x*synt_E,vel_y*synt_E-h/2+0.02,[0,0,1],...
    pol1_x,pol1_y,[1 0 0],...
    pol2_x,pol2_y,[1 0 0],...
    h_x*synt_d, h_y*synt_d, [0 0 0],...
    ha_x*synt_d, ha_y*synt_d, [0 0 0],...
    hb_x*synt_d, hb_y*synt_d, [0 0 0],....
    d_x*synt_d, d_y*synt_d,[0 0 0],...
    da_x*synt_d, da_y*synt_d, [0 0 0],...
    db_x*synt_d, db_y*synt_d, [0 0 0])

%sxediasi kalwdiwn
axis([-0.1,1.1,-0.7,1.1])
set(gca,'xtick',[]) %apokripsi timwn axona x
set(gca,'ytick',[]) %apokripsi timwn axona y

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
if synt_q==1
text(0.52+0.5*d ,h/4+0.5, '+', 'FontUnits','normalized','FontSize',0.06,'FontName', 'Unicode', 'Color', 'r') 
text(0.52+0.5*d ,h/2+0.5, '+', 'FontUnits','normalized','FontSize',0.06,'FontName', 'Unicode', 'Color', 'r')
text(0.52+0.5*d ,-h/2+0.5, '+', 'FontUnits','normalized','FontSize',0.06,'FontName', 'Unicode', 'Color', 'r')
text(0.52+0.5*d ,-h/4+0.5, '+', 'FontUnits','normalized','FontSize',0.06,'FontName', 'Unicode', 'Color', 'r')
 
text(0.45-0.5*d ,h/4+0.5, '-', 'FontUnits','normalized','FontSize',0.1,'FontName', 'Unicode', 'Color', 'r')
text(0.45-0.5*d ,h/2+0.5, '-', 'FontUnits','normalized','FontSize',0.1,'FontName', 'Unicode', 'Color', 'r')
text(0.45-0.5*d ,-h/2+0.5, '-', 'FontUnits','normalized','FontSize',0.1,'FontName', 'Unicode', 'Color', 'r')
text(0.45-0.5*d ,-h/4+0.5, '-', 'FontUnits','normalized','FontSize',0.1,'FontName', 'Unicode', 'Color', 'r')
 
text(0.45+0.5*d ,h/2+0.55, '+Q', 'FontUnits','normalized','FontSize',0.06,'FontName', 'Unicode', 'Color', 'r')
text(0.45-0.5*d ,h/2+0.55, '-Q', 'FontUnits','normalized','FontSize',0.06,'FontName', 'Unicode', 'Color', 'r')
   
else
end
text(0.48 ,-0.60, 'V', 'FontUnits','normalized','FontSize',0.06,'FontName', 'Unicode', 'Color', 'r')
text(0.48+L_batt/2+0.02 ,-h_arnitikou/2, '+', 'FontUnits','normalized','FontSize',0.06,'FontName', 'Unicode', 'Color', 'r')
text(0.48-L_batt/2-0.01 ,-h_arnitikou/2, '-', 'FontUnits','normalized','FontSize',0.08,'FontName', 'Unicode', 'Color', 'r')
   
% text(0.48 ,h/2+0.6, 'E', 'FontUnits','normalized','FontSize',0.06,'FontName', 'Unicode', 'Color', 'b')

if synt_d==1
text(0.61+L ,0.5+0.1, 'h', 'FontUnits','normalized','FontSize',0.06,'FontName', 'Unicode', 'Color', 'k')

text(0.48 ,0.5-h/2-0.15, 'd', 'FontUnits','normalized','FontSize',0.06,'FontName', 'Unicode', 'Color', 'k')
else
end


 



% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
!circ_1.pdf

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
V=get(handles.slider4,'Value');

axes(handles.axes1)
axis off;
arxikn(h,d,V)
% Hint: get(hObject,'Value') returns toggle state of checkbox16


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
gui

close circ_1
