function varargout = untitled13(varargin)
% UNTITLED13 MATLAB code for untitled13.fig
%      UNTITLED13, by itself, creates a new UNTITLED13 or raises the existing
%      singleton*.
%
%      H = UNTITLED13 returns the handle to a new UNTITLED13 or the handle to
%      the existing singleton*.
%
%      UNTITLED13('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED13.M with the given input arguments.
%
%      UNTITLED13('Property','Value',...) creates a new UNTITLED13 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled13_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled13_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled13

% Last Modified by GUIDE v2.5 02-Jul-2018 12:13:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled13_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled13_OutputFcn, ...
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


% --- Executes just before untitled13 is made visible.
function untitled13_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled13 (see VARARGIN)

% Choose default command line output for untitled13
handles.output = hObject;
guidata(hObject, handles);
ha=axes('units','normalized','pos',[0 0 1 1]);
 uistack(ha,'down');
 ii=imread('图背景.jpg');
image(ii);
 colormap gray
 set(ha,'handlevisibility','off','visible','off');

global Errors net_1 w1 w2 theta1 theta2 p t
i=2;
while i<=500&&Errors(i)>=1
    i=i+1;
    net_1.iw{1,1}=w1;    %rand(隐藏层节点数，输入层节点数)
    net_1.lw{2,1}=w2;    %rand(输出层节点数，隐藏层节点数)
    net_1.b{1}=theta1;
    net_1.b{2}=theta2;
    net_1.trainParam.showWindow = false;      %不显示训练窗口
    net_1.trainParam.showCommandLine = false;%不显示训练窗口
    net_1.divideFcn='';
    net_1.trainParam.epochs=1; 
    net_1.trainParam.mc=0.5;               % 附加动量因子
    net_1.trainParam.lr=0.1;                % 学习速率，这里设置为0.05
    net_1.trainParam.min_grad=1e-10;         %最小性能梯度
    [net_1,tr]=train(net_1,p,t);
    [normtrainoutput,trainPerf]=sim(net_1,p);%训练的数据，根据BP得到的结果
    Error=abs(normtrainoutput-t);
    Errors(i)=sum(sum(Error));   
    w1=net_1.iw{1,1};   %输入层到隐藏层权值
    theta1=net_1.b{1};   %隐层阈值
    w2=net_1.lw{2,1};    %隐层到输出层权值
    theta2=net_1.b{2};   %输出层阈值
end
% Update handles structure
guidata(hObject, handles);

n=length(Errors)
for i=1:n
    axes(handles.axes1);
    plot(i,Errors(i),'*')
    pause(0.1)
    hold on
end
hold off

% UIWAIT makes untitled13 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled13_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% Hint: place code in OpeningFcn to populate axes1

% --- Executes on key press with focus on figure1 and none of its controls.
function figure1_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.FIGURE)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
global enter
enter=enter+1;
if double(get(gcf,'CurrentCharacter')==13&&enter==13)
    close
    untitled1
end
