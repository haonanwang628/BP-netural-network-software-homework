function varargout = untitled15(varargin)
% UNTITLED15 MATLAB code for untitled15.fig
%      UNTITLED15, by itself, creates a new UNTITLED15 or raises the existing
%      singleton*.
%
%      H = UNTITLED15 returns the handle to a new UNTITLED15 or the handle to
%      the existing singleton*.
%
%      UNTITLED15('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED15.M with the given input arguments.
%
%      UNTITLED15('Property','Value',...) creates a new UNTITLED15 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled15_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled15_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled15

% Last Modified by GUIDE v2.5 03-Jul-2018 20:48:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled15_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled15_OutputFcn, ...
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


% --- Executes just before untitled15 is made visible.
function untitled15_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled15 (see VARARGIN)

% Choose default command line output for untitled15
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
ha=axes('units','normalized','pos',[0 0 1 1]);
 uistack(ha,'down');
 ii=imread('图背景.png');
image(ii);
 colormap gray
 set(ha,'handlevisibility','off','visible','off');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled15 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled15_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global bp1;
for i=1:length(bp1)
    hold on
    plot(handles.axes1,i,bp1(1,i),'k*'); 
    xlabel('迭代次数')
    ylabel('误差平方和')
    pause(0.0001);
end
pause(2);
close(gcf);
untitled7
% Get default command line output from handles structure
varargout{1} = handles.output;
