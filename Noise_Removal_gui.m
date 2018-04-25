function varargout = Noise_Removal_gui(varargin)
% NOISE_REMOVAL_GUI M-file for Noise_Removal_gui.fig
%      NOISE_REMOVAL_GUI, by itself, creates a new NOISE_REMOVAL_GUI or raises the existing
%      singleton*.
%
%      H = NOISE_REMOVAL_GUI returns the handle to a new NOISE_REMOVAL_GUI or the handle to
%      the existing singleton*.
%
%      NOISE_REMOVAL_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NOISE_REMOVAL_GUI.M with the given input arguments.
%
%      NOISE_REMOVAL_GUI('Property','Value',...) creates a new NOISE_REMOVAL_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Noise_Removal_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Noise_Removal_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Noise_Removal_gui

% Last Modified by GUIDE v2.5 18-May-2017 14:47:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Noise_Removal_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @Noise_Removal_gui_OutputFcn, ...
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


% --- Executes just before Noise_Removal_gui is made visible.
function Noise_Removal_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Noise_Removal_gui (see VARARGIN)

% Choose default command line output for Noise_Removal_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Noise_Removal_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Noise_Removal_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    
    [file path]=uigetfile({'*.jpg';'*.bmp';'*.jpeg';'*.png';'*.tif';'*.gif'},'Choose Image');
    
    A=imread([path file]);
    imshow(A,'parent',handles.axes1);
    handles.A = A;
    guidata(hObject,handles);
    
% --- Executes on button press in median.
function median_Callback(hObject, eventdata, handles)
% hObject    handle to median (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

 ResImg = median(handles.A);

% --- Executes on button press in gaussian.
function gaussian_Callback(hObject, eventdata, handles)
% hObject    handle to gaussian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%gaussian;
ResImg = gaussian(handles.A);
% --- Executes on button press in laplacian.
function laplacian_Callback(hObject, eventdata, handles)
% hObject    handle to laplacian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%laplacian;
ResImg = laplacian(handles.A);

% --- Executes on button press in mean.
function mean_Callback(hObject, eventdata, handles)
% hObject    handle to mean (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%mean;
ResImg = mean(handles.A);

% --- Executes on button press in sobel.
function sobel_Callback(hObject, eventdata, handles)
% hObject    handle to sobel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%sobel;
ResImg = sobel(handles.A);


% --- Executes during object creation, after setting all properties.
function median_CreateFcn(hObject, eventdata, handles)
% hObject    handle to median (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
%median;
%ResImg = median(handles.A);

