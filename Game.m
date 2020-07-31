%Hello
%%%%%%%==========================================================
%This game is designed in two levels of easy and hard
% There are main functions in the accompanying files
% Refer to the adjacent files to get the source code
%We call all functions in one file
%%%%%%%==========================================================

function varargout = xo(varargin)


%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================


% XO M-file for xo.fig
%DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @xo_OpeningFcn, ...
                   'gui_OutputFcn',  @xo_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
   gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
%DO NOT EDIT


%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================

%We call all functions in one file
function xo_OpeningFcn(hObject, ~, handles, varargin)


%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================

handles.output = hObject;
% Update handles structure
guidata(hObject, handles);

%%%%%%%==========================================================

%%
% *%START*
clear
clc

global status;
global ended;

ended = 0;
status = zeros(3,3);

%%%%%%%==========================================================

%We call all functions in one file
function varargout = xo_OutputFcn(~, ~, handles)


%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================

varargout{1} = handles.output;

%%%%%%%==========================================================

function checkbox1_Callback(~, ~, ~)

%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================


%%%%%%%==========================================================


function checkbox2_Callback(~, ~, ~)
%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================

%%%%%%%==========================================================

%We call all functions in one file
function pushbutton1_Callback(hObject, eventdata, handles)


%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================


global ended;
if ended ~= 0
     reset(hObject, eventdata, handles)
    return
end

process_input(hObject, eventdata, handles, 1)

%%%%%%%==========================================================


%We call all functions in one file     
function pushbutton2_Callback(hObject, eventdata, handles)


%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================

global ended;
if ended ~= 0
     reset(hObject, eventdata, handles)
    return
end

process_input(hObject, eventdata, handles, 2)

%%%%%%%==========================================================

%We call all functions in one file
function pushbutton4_Callback(hObject, eventdata, handles)


%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================


global ended;
if ended ~= 0
     reset(hObject, eventdata, handles)
    return
end

process_input(hObject, eventdata, handles, 4)


%%%%%%%==========================================================

%We call all functions in one file
function pushbutton5_Callback(hObject, eventdata, handles)


%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================


global ended;
if ended ~= 0
     reset(hObject, eventdata, handles)
    return
end

process_input(hObject, eventdata, handles, 5)

%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================

%We call all functions in one file
function pushbutton7_Callback(hObject, eventdata, handles)


%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================


global ended;
if ended ~= 0
     reset(hObject, eventdata, handles)
    return
end

process_input(hObject, eventdata, handles, 7)

%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================

%We call all functions in one file
function pushbutton8_Callback(hObject, eventdata, handles)

%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================

global ended;
if ended ~= 0
     reset(hObject, eventdata, handles)
    return
end

process_input(hObject, eventdata, handles, 8)

%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================


%We call all functions in one file
function pushbutton3_Callback(hObject, eventdata, handles)
global ended;
if ended ~= 0
     reset(hObject, eventdata, handles)
    return
end

process_input(hObject, eventdata, handles, 3)

%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================

%We call all functions in one file
function pushbutton6_Callback(hObject, eventdata, handles)


%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================


global ended;  
if ended ~= 0
     reset(hObject, eventdata, handles)
    return
end

process_input(hObject, eventdata, handles, 6)


%%%%%%%==========================================================


%We call all functions in one file
function pushbutton9_Callback(hObject, eventdata, handles)


%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================

global ended;
if ended ~= 0
     reset(hObject, eventdata, handles)
    return
end

process_input(hObject, eventdata, handles, 9)

%%%%%%%==========================================================

function reset_button_Callback(hObject, eventdata, handles)

%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================

reset(hObject, eventdata, handles)


%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================


function edit1_Callback(hObject, ~, handles)
%We call all functions in one file

%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================


%%%%%%%==========================================================


function edit1_CreateFcn(hObject, ~, handles)

%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================

if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================

function pushbutton12_Callback(~, ~, ~)

%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================


%%%%%%%==========================================================

%help
function Untitled_1_Callback(~, eventdata, handles)
help.message = {{'Project Name | Game'; ...
    'Software |  MATLAB'; ...
    'Location |  Shiraz University (Iran)';...
    'Supervisor |  Dr. Hejazi'; ...
    'Student |  Korosh Agha Mohammad Ghasemi'; ...
   "" ;'Good luck!'; ...
    '';''};'About this GUI'};
msgbox(help.message{1},help.message{2})

%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================

function About_Callback(~, ~, ~)

%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================


function pushbutton14_Callback(~, ~, ~)
%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================

%%%%%%%==========================================================


function pushbutton15_Callback(~, ~, ~)

%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================


function pushbutton16_Callback(~, ~, ~)

%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================

%%%%%%%==========================================================



