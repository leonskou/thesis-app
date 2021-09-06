function varargout = gui(varargin)
% GUI MATLAB code for gui.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui

% Last Modified by GUIDE v2.5 11-Jul-2021 20:31:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_OutputFcn, ...
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


% --- Executes just before gui is made visible.
function gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui (see VARARGIN)
global ind_3_7_1_1;
ind_3_7_1_1=0;
global ind_3_7_1_2;
ind_3_7_1_2=0;
global ind_3_7_1_3;
ind_3_7_1_3=0;
global ind_3_7_1_4;
ind_3_7_1_4=0;
global ind_3_7_1_5;
ind_3_7_1_5=0;
global ind_3_7_1_6;
ind_3_7_1_6=0;
global ind_3_7_1_7;
ind_3_7_1_7=0;

% Choose default command line output for gui
handles.output = hObject;
x1=[-0.1,0.6]+0.8;
y1=[0.7,1.5]-0.6;
 [x]=imread('dir1\fig_1','jpg');
image(x1,y1,x);
axis([0.1,3,0,3])
 axis off;
 hold on
 
 x1=[-0.1,0.6]+1.8;
y1=[0.7,1.5]-0.6;
 [x]=imread('dir1\fig_2','jpg');
image(x1,y1,x);
axis([0.1,3,0,3])
 axis off;
 
 
x1=[-0.1,0.6]+0.8;
y1=[0.7,1.5]+0.4;
 [x]=imread('dir1\fig_3','jpg');
image(x1,y1,x);
axis([0.1,3,0,3])
 axis off;
 
%  

x1=[-0.1,0.6]+1.8;
y1=[0.7,1.5]+0.4;
 [x]=imread('dir1\fig_4','jpg');
image(x1,y1,x);
axis([0.1,3,0,3])
 axis off;
 
 x1=[-0.1,0.6]+0.2;
y1=[0.7,1.5]+1.3;
 [x]=imread('dir1\fig_5','jpg');
image(x1,y1,x);
axis([0.1,3,0,35])
 axis off;
 
 
  x1=[-0.1,0.6]+1.3;
y1=[0.7,1.5]+1.35;
 [x]=imread('dir1\fig_6','jpg');
image(x1,y1,x);
axis([0.1,3,0,3])
 axis off;
%  
  x1=[-0.1,0.7]+2.2;
y1=[0.7,1.5]+1.35;
 [x]=imread('dir1\fig_7','jpg');
image(x1,y1,x);
axis([0.1,3,0,3])
 axis off;
 
 
 
 hold off
 

 axis off;
% Update handles structure
set(gcf, 'units','normalized','outerposition',[0 0 1 1]);

guidata(hObject, handles);

% UIWAIT makes gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



% --- Executes on button press in radiobutton27.
function radiobutton27_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ind_3_7_1_1;
global ind_3_7_1_2;
global ind_3_7_1_3;
global ind_3_7_1_4;
global ind_3_7_1_5;
global ind_3_7_1_6;
global ind_3_7_1_7;

if (ind_3_7_1_1==0)
   set(handles.radiobutton27,'value',1, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')  
   set(handles.radiobutton28,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')
   set(handles.radiobutton29,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')  
   set(handles.radiobutton30,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')
   set(handles.radiobutton31,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode') 
   set(handles.radiobutton32,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode') 
   set(handles.radiobutton33,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')        
    ind_3_7_1_1=1;
    ind_3_7_1_2=0;
    ind_3_7_1_3=0;
    ind_3_7_1_4=0;
    ind_3_7_1_5=0;
    ind_3_7_1_6=0;
    ind_3_7_1_7=0;
     circ_3;   
   
elseif (ind_3_7_1_1==1)
   set(handles.radiobutton27,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')  
   set(handles.radiobutton28,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')
   set(handles.radiobutton29,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')  
   set(handles.radiobutton30,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')
   set(handles.radiobutton31,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode') 
   set(handles.radiobutton32,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode') 
   set(handles.radiobutton33,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')        
    ind_3_7_1_1=0;
    ind_3_7_1_2=0;
    ind_3_7_1_3=0;
    ind_3_7_1_4=0;
    ind_3_7_1_5=0;
    ind_3_7_1_6=0;
    ind_3_7_1_7=0;
   
else
end

% Hint: get(hObject,'Value') returns toggle state of radiobutton27


% --- Executes on button press in radiobutton28.
function radiobutton28_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ind_3_7_1_1;
global ind_3_7_1_2;
global ind_3_7_1_3;
global ind_3_7_1_4;
global ind_3_7_1_5;
global ind_3_7_1_6;
global ind_3_7_1_7;

if (ind_3_7_1_2==0)
   set(handles.radiobutton27,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')  
   set(handles.radiobutton28,'value',1, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')
   set(handles.radiobutton29,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')  
   set(handles.radiobutton30,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')
   set(handles.radiobutton31,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode') 
   set(handles.radiobutton32,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode') 
   set(handles.radiobutton33,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')        
    ind_3_7_1_1=0;
    ind_3_7_1_2=1;
    ind_3_7_1_3=0;
    ind_3_7_1_4=0;
    ind_3_7_1_5=0;
    ind_3_7_1_6=0;
    ind_3_7_1_7=0;
   circ_6;   
   
elseif (ind_3_7_1_2==1)
   set(handles.radiobutton27,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')  
   set(handles.radiobutton28,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')
   set(handles.radiobutton29,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')  
   set(handles.radiobutton30,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')
   set(handles.radiobutton31,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode') 
   set(handles.radiobutton32,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode') 
   set(handles.radiobutton33,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')        
    ind_3_7_1_1=0;
    ind_3_7_1_2=0;
    ind_3_7_1_3=0;
    ind_3_7_1_4=0;
    ind_3_7_1_5=0;
    ind_3_7_1_6=0;
    ind_3_7_1_7=0;
   
else
end

% Hint: get(hObject,'Value') returns toggle state of radiobutton28


% --- Executes on button press in radiobutton29.
function radiobutton29_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ind_3_7_1_1;
global ind_3_7_1_2;
global ind_3_7_1_3;
global ind_3_7_1_4;
global ind_3_7_1_5;
global ind_3_7_1_6;
global ind_3_7_1_7;

if (ind_3_7_1_3==0)
   set(handles.radiobutton27,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')  
   set(handles.radiobutton28,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')
   set(handles.radiobutton29,'value',1, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')  
   set(handles.radiobutton30,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')
   set(handles.radiobutton31,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode') 
   set(handles.radiobutton32,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode') 
   set(handles.radiobutton33,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')        
    ind_3_7_1_1=0;
    ind_3_7_1_2=0;
    ind_3_7_1_3=1;
    ind_3_7_1_4=0;
    ind_3_7_1_5=0;
    ind_3_7_1_6=0;
    ind_3_7_1_7=0;
   circ_1;   
   
elseif (ind_3_7_1_3==1)
   set(handles.radiobutton27,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')  
   set(handles.radiobutton28,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')
   set(handles.radiobutton29,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')  
   set(handles.radiobutton30,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')
   set(handles.radiobutton31,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode') 
   set(handles.radiobutton32,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode') 
   set(handles.radiobutton33,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')        
    ind_3_7_1_1=0;
    ind_3_7_1_2=0;
    ind_3_7_1_3=0;
    ind_3_7_1_4=0;
    ind_3_7_1_5=0;
    ind_3_7_1_6=0;
    ind_3_7_1_7=0;
   
else
end

% Hint: get(hObject,'Value') returns toggle state of radiobutton29


% --- Executes on button press in radiobutton30.
function radiobutton30_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ind_3_7_1_1;
global ind_3_7_1_2;
global ind_3_7_1_3;
global ind_3_7_1_4;
global ind_3_7_1_5;
global ind_3_7_1_6;
global ind_3_7_1_7;

if (ind_3_7_1_4==0)
   set(handles.radiobutton27,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')  
   set(handles.radiobutton28,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')
   set(handles.radiobutton29,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')  
   set(handles.radiobutton30,'value',1, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')
   set(handles.radiobutton31,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode') 
   set(handles.radiobutton32,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode') 
   set(handles.radiobutton33,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')        
    ind_3_7_1_1=0;
    ind_3_7_1_2=0;
    ind_3_7_1_3=0;
    ind_3_7_1_4=1;
    ind_3_7_1_5=0;
    ind_3_7_1_6=0;
    ind_3_7_1_7=0;
       circ_5;      
   
elseif (ind_3_7_1_4==1)
   set(handles.radiobutton27,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')  
   set(handles.radiobutton28,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')
   set(handles.radiobutton29,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')  
   set(handles.radiobutton30,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')
   set(handles.radiobutton31,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode') 
   set(handles.radiobutton32,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode') 
   set(handles.radiobutton33,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')        
    ind_3_7_1_1=0;
    ind_3_7_1_2=0;
    ind_3_7_1_3=0;
    ind_3_7_1_4=0;
    ind_3_7_1_5=0;
    ind_3_7_1_6=0;
    ind_3_7_1_7=0;
   
else
end

% Hint: get(hObject,'Value') returns toggle state of radiobutton30

% --- Executes on button press in radiobutton31.
function radiobutton31_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ind_3_7_1_1;
global ind_3_7_1_2;
global ind_3_7_1_3;
global ind_3_7_1_4;
global ind_3_7_1_5;
global ind_3_7_1_6;
global ind_3_7_1_7;

if (ind_3_7_1_5==0)
   set(handles.radiobutton27,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')  
   set(handles.radiobutton28,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')
   set(handles.radiobutton29,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')  
   set(handles.radiobutton30,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')
   set(handles.radiobutton31,'value',1, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode') 
   set(handles.radiobutton32,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode') 
   set(handles.radiobutton33,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')        
    ind_3_7_1_1=0;
    ind_3_7_1_2=0;
    ind_3_7_1_3=0;
    ind_3_7_1_4=0;
    ind_3_7_1_5=1;
    ind_3_7_1_6=0;
    ind_3_7_1_7=0;
    circ_2;     
   
elseif (ind_3_7_1_5==1)
   set(handles.radiobutton27,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')  
   set(handles.radiobutton28,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')
   set(handles.radiobutton29,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')  
   set(handles.radiobutton30,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')
   set(handles.radiobutton31,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode') 
   set(handles.radiobutton32,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode') 
   set(handles.radiobutton33,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')        
    ind_3_7_1_1=0;
    ind_3_7_1_2=0;
    ind_3_7_1_3=0;
    ind_3_7_1_4=0;
    ind_3_7_1_5=0;
    ind_3_7_1_6=0;
    ind_3_7_1_7=0;
   
else
end

% Hint: get(hObject,'Value') returns toggle state of radiobutton31

% --- Executes on button press in radiobutton32.
function radiobutton32_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ind_3_7_1_1;
global ind_3_7_1_2;
global ind_3_7_1_3;
global ind_3_7_1_4;
global ind_3_7_1_5;
global ind_3_7_1_6;
global ind_3_7_1_7;

if (ind_3_7_1_6==0)
   set(handles.radiobutton27,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')  
   set(handles.radiobutton28,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')
   set(handles.radiobutton29,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')  
   set(handles.radiobutton30,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')
   set(handles.radiobutton31,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode') 
   set(handles.radiobutton32,'value',1, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode') 
   set(handles.radiobutton33,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')        
    ind_3_7_1_1=0;
    ind_3_7_1_2=0;
    ind_3_7_1_3=0;
    ind_3_7_1_4=0;
    ind_3_7_1_5=0;
    ind_3_7_1_6=1;
    ind_3_7_1_7=0;
     circ_4;    
   
elseif (ind_3_7_1_6==1)
   set(handles.radiobutton27,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')  
   set(handles.radiobutton28,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')
   set(handles.radiobutton29,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')  
   set(handles.radiobutton30,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')
   set(handles.radiobutton31,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode') 
   set(handles.radiobutton32,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode') 
   set(handles.radiobutton33,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')        
    ind_3_7_1_1=0;
    ind_3_7_1_2=0;
    ind_3_7_1_3=0;
    ind_3_7_1_4=0;
    ind_3_7_1_5=0;
    ind_3_7_1_6=0;
    ind_3_7_1_7=0;
   
else
end

% Hint: get(hObject,'Value') returns toggle state of radiobutton32
% Hint: get(hObject,'Value') returns toggle state of radiobutton13
% --- Executes on button press in pushbutton1.


% --- Executes on button press in radiobutton33.
function radiobutton33_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ind_3_7_1_1;
global ind_3_7_1_2;
global ind_3_7_1_3;
global ind_3_7_1_4;
global ind_3_7_1_5;
global ind_3_7_1_6;
global ind_3_7_1_7;

if (ind_3_7_1_7==0)
   set(handles.radiobutton27,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')  
   set(handles.radiobutton28,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')
   set(handles.radiobutton29,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')  
   set(handles.radiobutton30,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')
   set(handles.radiobutton31,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode') 
   set(handles.radiobutton32,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode') 
   set(handles.radiobutton33,'value',1, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')        
    ind_3_7_1_1=0;
    ind_3_7_1_2=0;
    ind_3_7_1_3=0;
    ind_3_7_1_4=0;
    ind_3_7_1_5=0;
    ind_3_7_1_6=0;
    ind_3_7_1_7=1;
    circ_7;    
   
elseif (ind_3_7_1_7==1)
   set(handles.radiobutton27,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')  
   set(handles.radiobutton28,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')
   set(handles.radiobutton29,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')  
   set(handles.radiobutton30,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')
   set(handles.radiobutton31,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode') 
   set(handles.radiobutton32,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode') 
   set(handles.radiobutton33,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')        
    ind_3_7_1_1=0;
    ind_3_7_1_2=0;
    ind_3_7_1_3=0;
    ind_3_7_1_4=0;
    ind_3_7_1_5=0;
    ind_3_7_1_6=0;
    ind_3_7_1_7=0;
   
else
end


% Hint: get(hObject,'Value') returns toggle state of radiobutton33
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ind_3_7_1_1;
global ind_3_7_1_2;
global ind_3_7_1_3;
global ind_3_7_1_4;
global ind_3_7_1_5;
global ind_3_7_1_6;
global ind_3_7_1_7;

   set(handles.radiobutton27,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')  
   set(handles.radiobutton28,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')
   set(handles.radiobutton29,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')  
   set(handles.radiobutton30,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')
   set(handles.radiobutton31,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode') 
   set(handles.radiobutton32,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode') 
   set(handles.radiobutton33,'value',0, 'FontSize',0.571, 'FontUnits','normalized', 'FontName', 'Unicode')        
    ind_3_7_1_1=0;
    ind_3_7_1_2=0;
    ind_3_7_1_3=0;
    ind_3_7_1_4=0;
    ind_3_7_1_5=0;
    ind_3_7_1_6=0;
    ind_3_7_1_7=0;
   

gui_d_3;
close(handles.figure1);
