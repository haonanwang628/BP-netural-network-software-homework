function varargout = untitled10(varargin)
% UNTITLED10 MATLAB code for untitled10.fig
%      UNTITLED10, by itself, creates a new UNTITLED10 or raises the existing
%      singleton*.
%
%      H = UNTITLED10 returns the handle to a new UNTITLED10 or the handle to
%      the existing singleton*.
%
%      UNTITLED10('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED10.M with the given input arguments.
%
%      UNTITLED10('Property','Value',...) creates a new UNTITLED10 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled10_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled10_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled10

% Last Modified by GUIDE v2.5 30-Jun-2018 20:30:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled10_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled10_OutputFcn, ...
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


% --- Executes just before untitled10 is made visible.
function untitled10_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled10 (see VARARGIN)

% Choose default command line output for untitled10
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled10 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled10_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
ha=axes('units','normalized','pos',[0 0 1 1]);
 uistack(ha,'down');
 ii=imread('12.png');
image(ii);
 colormap gray
 set(ha,'handlevisibility','off','visible','off');

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
untitled4
