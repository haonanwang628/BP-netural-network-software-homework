function varargout = loading(varargin)
% LOADING MATLAB code for loading.fig
%      LOADING, by itself, creates a new LOADING or raises the existing
%      singleton*.
%
%      H = LOADING returns the handle to a new LOADING or the handle to
%      the existing singleton*.
%
%      LOADING('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LOADING.M with the given input arguments.
%
%      LOADING('Property','Value',...) creates a new LOADING or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before loading_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to loading_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help loading

% Last Modified by GUIDE v2.5 02-Jul-2018 14:22:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @loading_OpeningFcn, ...
                   'gui_OutputFcn',  @loading_OutputFcn, ...
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


% --- Executes just before loading is made visible.
function loading_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to loading (see VARARGIN)

% Choose default command line output for loading
handles.output = hObject;
ha=axes('units','normalized','pos',[0 0 1 1]);
 uistack(ha,'down');
 ii=imread('gou2.png');
image(ii);
 colormap gray
 set(ha,'handlevisibility','off','visible','off');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes loading wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = loading_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
