function varargout = untitled9(varargin)
% UNTITLED9 MATLAB code for untitled9.fig
%      UNTITLED9, by itself, creates a new UNTITLED9 or raises the existing
%      singleton*.
%
%      H = UNTITLED9 returns the handle to a new UNTITLED9 or the handle to
%      the existing singleton*.
%
%      UNTITLED9('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED9.M with the given input arguments.
%
%      UNTITLED9('Property','Value',...) creates a new UNTITLED9 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled9_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled9_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled9

% Last Modified by GUIDE v2.5 03-Jul-2018 23:16:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled9_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled9_OutputFcn, ...
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


% --- Executes just before untitled9 is made visible.
function untitled9_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled9 (see VARARGIN)

% Choose default command line output for untitled9
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled9 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled9_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
ha=axes('units','normalized','pos',[0 0 1 1]);
 uistack(ha,'down');
 ii=imread('��1.jpg');
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
