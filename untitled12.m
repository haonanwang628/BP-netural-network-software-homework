function varargout = untitled12(varargin)
% UNTITLED12 MATLAB code for untitled12.fig
%      UNTITLED12, by itself, creates a new UNTITLED12 or raises the existing
%      singleton*.
%
%      H = UNTITLED12 returns the handle to a new UNTITLED12 or the handle to
%      the existing singleton*.
%
%      UNTITLED12('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED12.M with the given input arguments.
%
%      UNTITLED12('Property','Value',...) creates a new UNTITLED12 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled12_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled12_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled12

% Last Modified by GUIDE v2.5 02-Jul-2018 13:47:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled12_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled12_OutputFcn, ...
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


% --- Executes just before untitled12 is made visible.
function untitled12_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled12 (see VARARGIN)

% Choose default command line output for untitled12
handles.output = hObject;
global enter;
enter=-1;
ha=axes('units','normalized','pos',[0 0 1 1]);
 uistack(ha,'down');
 ii=imread('图2.png');
image(ii);
 colormap gray
 set(ha,'handlevisibility','off','visible','off');
% Update handles structure
guidata(hObject, handles);

 %%
global Show_Data w1 w2 theta1 theta2 net_1 p t
p=Show_Data(:,1:5)';
t=Show_Data(:,6:8)';
net_1=newff(p,t,4,{'logsig','purelin'});%网络创建
w1=rand(4,5) - 0.5;
w2=rand(3,4) - 0.5; 
theta1=rand(4,1)-0.5;
theta2=rand(3,1)-0.5;
set(handles.text103,'string','网络初始化');
%%
% UIWAIT makes untitled12 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled12_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function text2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on key press with focus on figure1 and none of its controls.
function figure1_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.FIGURE)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)

 
 %%
 %初始化网络
global w1 w2 theta1 theta2 net_1 p t Errors
global enter;
% net_1=newff(p,t,4,{'logsig','purelin'});%网络创建
% w1=rand(4,5) - 0.5;
% w2=rand(3,4) - 0.5; 
% b1=rand(4,1)-0.5;
% b2=rand(3,1)-0.5;
enter=enter+1
if double(get(gcf,'CurrentCharacter')==13&&enter==0)
    set(handles.text60,'string',num2str(w1(1,1)));
    set(handles.text61,'string',num2str(w1(2,1)));
    set(handles.text62,'string',num2str(w1(3,1)));
    set(handles.text63,'string',num2str(w1(4,1)));    
    set(handles.text68,'string',num2str(w1(1,2)));
    set(handles.text69,'string',num2str(w1(2,2)));
    set(handles.text70,'string',num2str(w1(3,2)));
    set(handles.text71,'string',num2str(w1(4,2)));   
    set(handles.text72,'string',num2str(w1(1,3)));
    set(handles.text73,'string',num2str(w1(2,3)));
    set(handles.text74,'string',num2str(w1(3,3)));
    set(handles.text75,'string',num2str(w1(4,3)));    
    set(handles.text76,'string',num2str(w1(1,4)));
    set(handles.text77,'string',num2str(w1(2,4)));
    set(handles.text78,'string',num2str(w1(3,4)));
    set(handles.text79,'string',num2str(w1(4,4)));    
    set(handles.text44,'string',num2str(w1(1,5)));
    set(handles.text45,'string',num2str(w1(2,5)));
    set(handles.text46,'string',num2str(w1(3,5)));
    set(handles.text47,'string',num2str(w1(4,5)));
    
    set(handles.text8,'string',num2str(theta1(1)));
    set(handles.text9,'string',num2str(theta1(2)));
    set(handles.text10,'string',num2str(theta1(3)));
    set(handles.text11,'string',num2str(theta1(4)));
    
    set(handles.text80,'string',num2str(w2(1,1)));
    set(handles.text81,'string',num2str(w2(2,1)));
    set(handles.text82,'string',num2str(w2(3,1)));
    set(handles.text83,'string',num2str(w2(1,2)));
    set(handles.text84,'string',num2str(w2(2,2)));
    set(handles.text85,'string',num2str(w2(3,2)));    
    set(handles.text86,'string',num2str(w2(1,3)));
    set(handles.text87,'string',num2str(w2(2,3)));
    set(handles.text88,'string',num2str(w2(3,3)));    
    set(handles.text95,'string',num2str(w2(1,4)));
    set(handles.text96,'string',num2str(w2(2,4)));
    set(handles.text97,'string',num2str(w2(3,4)));
    
    set(handles.text12,'string',num2str(theta2(1)));
    set(handles.text13,'string',num2str(theta2(2)));
    set(handles.text14,'string',num2str(theta2(3)));
   
    set(handles.text103,'string','输入数据，以第一个样本为例');
end
%%
%第一次训练
if double(get(gcf,'CurrentCharacter')==13&&enter==1)    
    set(handles.text2,'string',num2str(p(1,1)))
    set(handles.text3,'string',num2str(p(2,1)))
    set(handles.text4,'string',num2str(p(3,1)))
    set(handles.text5,'string',num2str(p(4,1)))
    set(handles.text6,'string',num2str(p(5,1)))
    set(handles.text103,'string','前向计算');
end
if double(get(gcf,'CurrentCharacter')==13&&enter==2)
    [normtrainoutput,trainPerf]=sim(net_1,p);%训练的数据，根据BP得到的结果
    Error=abs(normtrainoutput-t);
    Errors(1)=sum(sum(Error));
    set(handles.text98,'string',num2str(normtrainoutput(1,1)));
    set(handles.text99,'string',num2str(normtrainoutput(2,1)));
    set(handles.text100,'string',num2str(normtrainoutput(3,1)));
    set(handles.text15,'string',num2str(Errors(1)));
    set(handles.text103,'string','反向调节');
end
%%
%%
%%第一次反向调节演示
%输出层阈值调整
if double(get(gcf,'CurrentCharacter')==13&&enter==3)
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
    % %将所得的结果进行反归一化，得到其拟合的数据
    w1=net_1.iw{1,1};   %输入层到隐藏层权值
    theta1=net_1.b{1};   %隐层阈值
    w2=net_1.lw{2,1};    %隐层到输出层权值
    theta2=net_1.b{2};   %输出层阈值
    
    set(handles.text12,'string',num2str(theta2(1)));
    set(handles.text13,'string',num2str(theta2(2)));
    set(handles.text14,'string',num2str(theta2(3)));

end
%隐藏层到输出层权值调整
if double(get(gcf,'CurrentCharacter')==13&&enter==4)
    set(handles.text80,'string',num2str(w2(1,1)));
    set(handles.text81,'string',num2str(w2(2,1)));
    set(handles.text82,'string',num2str(w2(3,1)));
    set(handles.text83,'string',num2str(w2(1,2)));
    set(handles.text84,'string',num2str(w2(2,2)));
    set(handles.text85,'string',num2str(w2(3,2)));
    set(handles.text86,'string',num2str(w2(1,3)));
    set(handles.text87,'string',num2str(w2(2,3)));
    set(handles.text88,'string',num2str(w2(3,3)));
    set(handles.text95,'string',num2str(w2(1,4)));
    set(handles.text96,'string',num2str(w2(2,4)));
    set(handles.text97,'string',num2str(w2(3,4)));

end
%隐藏层阈值调整
if double(get(gcf,'CurrentCharacter')==13&&enter==5)
    set(handles.text8,'string',num2str(theta1(1)));
    set(handles.text9,'string',num2str(theta1(2)));
    set(handles.text10,'string',num2str(theta1(3)));
    set(handles.text11,'string',num2str(theta1(4)));

end
%输入层到隐藏层权值调整
if double(get(gcf,'CurrentCharacter')==13&&enter==6)
    set(handles.text60,'string',num2str(w1(1,1)));
    set(handles.text61,'string',num2str(w1(2,1)));
    set(handles.text62,'string',num2str(w1(3,1)));
    set(handles.text63,'string',num2str(w1(4,1)));    
    set(handles.text68,'string',num2str(w1(1,2)));
    set(handles.text69,'string',num2str(w1(2,2)));
    set(handles.text70,'string',num2str(w1(3,2)));
    set(handles.text71,'string',num2str(w1(4,2)));   
    set(handles.text72,'string',num2str(w1(1,3)));
    set(handles.text73,'string',num2str(w1(2,3)));
    set(handles.text74,'string',num2str(w1(3,3)));
    set(handles.text75,'string',num2str(w1(4,3)));    
    set(handles.text76,'string',num2str(w1(1,4)));
    set(handles.text77,'string',num2str(w1(2,4)));
    set(handles.text78,'string',num2str(w1(3,4)));
    set(handles.text79,'string',num2str(w1(4,4)));    
    set(handles.text44,'string',num2str(w1(1,5)));
    set(handles.text45,'string',num2str(w1(2,5)));
    set(handles.text46,'string',num2str(w1(3,5)));
    set(handles.text47,'string',num2str(w1(4,5)));
    set(handles.text103,'string','前向计算');

end
%%

%%
%第二次训练
if double(get(gcf,'CurrentCharacter')==13&&enter==7)
    [normtrainoutput,trainPerf]=sim(net_1,p);%训练的数据，根据BP得到的结果
    Error=abs(normtrainoutput-t);
    Errors(2)=sum(sum(Error));
    set(handles.text98,'string',num2str(normtrainoutput(1,1)));
    set(handles.text99,'string',num2str(normtrainoutput(2,1)));
    set(handles.text100,'string',num2str(normtrainoutput(3,1)));
    set(handles.text15,'string',num2str(Errors(2)));
    set(handles.text103,'string','反向调节');

end

%%第二次反向调节演示
%输出层阈值调整
if double(get(gcf,'CurrentCharacter')==13&&enter==8)
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
    % %将所得的结果进行反归一化，得到其拟合的数据
    w1=net_1.iw{1,1};   %输入层到隐藏层权值
    theta1=net_1.b{1};   %隐层阈值
    w2=net_1.lw{2,1};    %隐层到输出层权值
    theta2=net_1.b{2};   %输出层阈值
    
    set(handles.text12,'string',num2str(theta2(1)));
    set(handles.text13,'string',num2str(theta2(2)));
    set(handles.text14,'string',num2str(theta2(3)));

end
%隐藏层到输出层权值调整
if double(get(gcf,'CurrentCharacter')==13&&enter==9)
    set(handles.text80,'string',num2str(w2(1,1)));
    set(handles.text81,'string',num2str(w2(2,1)));
    set(handles.text82,'string',num2str(w2(3,1)));
    set(handles.text83,'string',num2str(w2(1,2)));
    set(handles.text84,'string',num2str(w2(2,2)));
    set(handles.text85,'string',num2str(w2(3,2)));
    set(handles.text86,'string',num2str(w2(1,3)));
    set(handles.text87,'string',num2str(w2(2,3)));
    set(handles.text88,'string',num2str(w2(3,3)));
    set(handles.text95,'string',num2str(w2(1,4)));
    set(handles.text96,'string',num2str(w2(2,4)));
    set(handles.text97,'string',num2str(w2(3,4)));

end
%隐藏层阈值调整
if double(get(gcf,'CurrentCharacter')==13&&enter==10)
    set(handles.text8,'string',num2str(theta1(1)));
    set(handles.text9,'string',num2str(theta1(2)));
    set(handles.text10,'string',num2str(theta1(3)));
    set(handles.text11,'string',num2str(theta1(4)));

end
%输入层到隐藏层权值调整
if double(get(gcf,'CurrentCharacter')==13&&enter==11)
    set(handles.text60,'string',num2str(w1(1,1)));
    set(handles.text61,'string',num2str(w1(2,1)));
    set(handles.text62,'string',num2str(w1(3,1)));
    set(handles.text63,'string',num2str(w1(4,1)));    
    set(handles.text68,'string',num2str(w1(1,2)));
    set(handles.text69,'string',num2str(w1(2,2)));
    set(handles.text70,'string',num2str(w1(3,2)));
    set(handles.text71,'string',num2str(w1(4,2)));   
    set(handles.text72,'string',num2str(w1(1,3)));
    set(handles.text73,'string',num2str(w1(2,3)));
    set(handles.text74,'string',num2str(w1(3,3)));
    set(handles.text75,'string',num2str(w1(4,3)));    
    set(handles.text76,'string',num2str(w1(1,4)));
    set(handles.text77,'string',num2str(w1(2,4)));
    set(handles.text78,'string',num2str(w1(3,4)));
    set(handles.text79,'string',num2str(w1(4,4)));    
    set(handles.text44,'string',num2str(w1(1,5)));
    set(handles.text45,'string',num2str(w1(2,5)));
    set(handles.text46,'string',num2str(w1(3,5)));
    set(handles.text47,'string',num2str(w1(4,5)));
    set(handles.text103,'string','演示误差图');

end

if double(get(gcf,'CurrentCharacter')==13&&enter==12)
    close
    untitled13
end



% --- Executes during object creation, after setting all properties.
function text3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text60_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text60 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text61_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text62_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text63_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text68_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text68 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text69_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text69 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text70_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text70 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text71_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text71 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text72_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text72 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text73_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text73 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text74_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text74 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text75_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text75 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text76_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text76 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text77_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text77 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text78_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text78 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text79_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text79 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text44_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text45_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text46_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text47_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text80_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text80 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text81_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text81 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text82_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text82 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text83_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text83 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text84_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text84 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text85_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text85 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text86_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text86 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text87_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text87 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text88_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text88 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text95_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text95 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text96_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text96 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text97_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text97 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text98_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text98 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text99_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text99 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text100_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text100 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text103_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text103 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
