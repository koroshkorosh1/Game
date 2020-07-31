%Hello
%%%%%%%==========================================================
%This game is designed in two levels of easy and hard
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi

%%%%%%%==========================================================
%%%%%%%==========================================================
%%%%%%   function "check4winner"  
%%%%%%%==========================================================

function result = check4winner(hObject, eventdata, handles)

global status;

% Summing rows and columns and diagonals to check for wins
WinCol = sum(status);                   % 1X3 Matrix
WinRow = sum(status');                  % 1X3 Matrix
WinDiag1 = sum(diag(status));           % 1 element matrix
WinDiag2 = status(3)+status(5)+status(7);   % 1 element matrix


%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================


result = 0;

% Did O win?
if find(WinCol==30 | WinRow==30 | WinDiag1==30 | WinDiag2 ==30)
    set(handles.edit1,'string','***** I Win! *****')
    result = 1;
    
    
    
%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%========================================================== 
    
    
    
    
    
    y=chirp(0:0.001:1,100,1,25,'q',[],'concave');
    sound(1000./y,8192); pause(0.3);sound(100./y,8192);

    return
end


%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================


% Did X win?
if find(WinCol==9 | WinRow==9 | WinDiag1==9 | WinDiag2 ==9)
    set(handles.edit1,'string','Congratulations!')
    
    result = 1;
    
    load handel
    sound(y,8192)

    return
end


%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%========================================================== 


% If there are no winners, and no more clear fields. It's a tie.
if isempty(find(status==0))
    set(handles.edit1,'string','...... It''s a tie ......')
    result = 1;
    
    % Sound effect for tied game
    y=sin(0:500);
    sound(y,8192);pause(0.3);sound(y,8192);pause(0.3);

end

%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================

