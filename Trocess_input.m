%Hello
%%%%%%%==========================================================
%This game is designed in two levels of easy and hard
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================

function process_input(hObject, eventdata, handles, choice)

global status;
global ended;

chosen_cell = choice;
if (status(chosen_cell)~=0)  % check if chosen box is free
    set(handles.edit1,'string','Invalid input')
    return                                          
end


%%%%%%%==========================================================

set(eval(['handles.pushbutton' num2str(chosen_cell)]),'string','X')
set(eval(['handles.pushbutton' num2str(chosen_cell)]),'ForegroundColor',[0 0 1])
status(chosen_cell)=3;

%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================

ended = check4winner(hObject, eventdata, handles);
if ended ~= 0
    return
end

temp = turn_pc(hObject, eventdata, handles);

%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================

% Place the "O" on status matrix and on push button
set(eval(['handles.pushbutton' num2str(temp)]), 'string','O')
set(eval(['handles.pushbutton' num2str(temp)]),'ForegroundColor',[0 1 0])

set(handles.edit1,'string','Your Turn !')

%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================

ended = check4winner(hObject, eventdata, handles);
if ended ~= 0
    return
end

%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================
