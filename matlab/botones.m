function varargout = botones(varargin)
% BOTONES MATLAB code for botones.fig
%      BOTONES, by itself, creates a new BOTONES or raises the existing
%      singleton*.
%
%      H = BOTONES returns the handle to a new BOTONES or the handle to
%      the existing singleton*.
%
%      BOTONES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BOTONES.M with the given input arguments.
%
%      BOTONES('Property','Value',...) creates a new BOTONES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before botones_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to botones_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help botones

% Last Modified by GUIDE v2.5 03-Jun-2021 15:33:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @botones_OpeningFcn, ...
                   'gui_OutputFcn',  @botones_OutputFcn, ...
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


% --- Executes just before botones is made visible.
function botones_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to botones (see VARARGIN)

% Choose default command line output for botones
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes botones wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = botones_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when selected object is changed in uibuttongroup2.
function uibuttongroup2_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup2 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
valor= get(hObject, 'string')

switch valor
    case '12'
         set(handles.text2, 'Fontsize', 12)
    case '20'
             set(handles.text2, 'Fontsize', 20)   
    case '28'
                set(handles.text2, 'Fontsize', 28)
end 
        
% --- Executes when selected object is changed in uibuttongroup1.
function uibuttongroup1_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup1 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

variable = get(hObject,'string');

switch variable
    
    case 'Azul'
        set(handles.text2, 'Foregroundcolor', 'b')
    case 'Rojo'
        set(handles.text2, 'Foregroundcolor', 'r')
    case 'Amarillo'
        set(handles.text2, 'Foregroundcolor', 'y')
    case 'Random'
        set(handles.text2, 'Foregroundcolor', [rand(), rand(), rand()])
end 
