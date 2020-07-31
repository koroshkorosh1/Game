%Hello
%%%%%%%==========================================================
%This game is designed in two levels of easy and hard
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================
%%%%%%%==========================================================
%%%%%%   Function turn_pc()  
%%%%%%%==========================================================
%%%%%%%==========================================================


function play = turn_pc(hObject, eventdata, handles)
% Function to implement computer skill and have it play

global status;
play = 0;


%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%==========================================================


%%%%%  Play randomly, when difficulty is set to "easy"

if get(handles.radiobutton1,'value') == 1
    while play==0
        % get a random number between 1 and 9
        loc = ceil(9*rand);
        if status(loc)==0
            play = loc;  % input was valid
            break
        end
    end
    status(loc) = 10;
    return
end


%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%==========================================================


%%%%% Win if you can
WinCol = find(sum(status) ==20 ); 
WinRow = find(sum(status')==20 );
WinDiag1 = find(sum(diag(status)) ==20); % 1 element matrix
WinDiag2 = find(status(3)+status(5)+status(7) ==20); % 1 element matrix


%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%==========================================================


% Complete a two-in-a-row
if ~isempty(WinCol)
    %complete the column to win and return
    while 1
        % get a random number between 1 and 3 and adjust depending on
        % winning column number
        loc = ceil(3*rand)+(WinCol-1)*3;
        if status(loc)==0
            break % input was valid
        end
    end
    status(loc) = 10;
    play = loc;
    return
end
% Complete a two-in-a-column
if ~isempty(WinRow)
    %complete the row to win and return
    while 1
        % get a random number between 1,4,7 and adjust depending on 
        % winning row number 
        loc = (3*ceil(3*rand)-2)+(WinRow-1)*1;
        if status(loc)==0
            break % input was valid
        end
    end
    status(loc) = 10;
    play = loc;
    return
end
% Complete a two-in-the-diagonal
if ~isempty(WinDiag1)
    %complete the first diagonal to win and return
    while 1
        % get a random number between 1,5 and 9.
        loc = 4*ceil(3*rand)-3;
        if status(loc)==0
            break % input was valid
        end
    end    
    status(loc) = 10;
    play = loc;
    return
end


%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%==========================================================


% Complete a two-in-the-other-diagonal
if ~isempty(WinDiag2)
    %complete the second diagonal to win and return
    while 1
        % get a random number between 3,5 and 7.
        loc = 2*ceil(3*rand)+1;
        if status(loc)==0
            break % input was valid
        end
    end      
    status(loc) = 10;
    play = loc;
    return
end


%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%==========================================================


%%%%%  Block a player's two-in-a-row
BlockCol = find(sum(status) ==6 ); 
BlockRow = find(sum(status')==6 ); 
BlockDiag1 = find(sum(diag(status)) ==6); % 1 element matrix
BlockDiag2 = find(status(3)+status(5)+status(7) ==6); % 1 element matrix
% Block a two-in-a-row
if ~isempty(BlockRow)
    %complete the row to block player
    while 1
        % get a random number between 1,4,7 and adjust depending on 
        % winning row numner 
        loc = (3*ceil(3*rand)-2)+(BlockRow-1)*1;
        if status(loc)==0
            break % input was valid
        end

    end

    status(loc) = 10;
    play = loc;
    return
end


%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================



% Block a two-in-a-column
if ~isempty(BlockCol)
    %complete the column to block player
    while 1
        % get a random number between 1 and 3 and adjust depending on
        % winning column number
        loc = ceil(3*rand)+(BlockCol-1)*3;
        if status(loc)==0
            break % input was valid
        end

    end
    status(loc) = 10;
    play = loc;
    return
end
% Block a two-in-the-diagonal
if ~isempty(BlockDiag1)
    %complete the first diagonal to block player
    while 1
        % get a random number between 1,5 and 9.
        loc = 4*ceil(3*rand)-3;
        if status(loc)==0
            break % input was valid
        end
    end    
    status(loc) = 10;
    play = loc;
    return
end
% Block a two-in-the-other-diagonal
if ~isempty(BlockDiag2)
    %complete the second diagonal to block player
    while 1
        % get a random number between 3,5 and 7.
        loc = 2*ceil(3*rand)+1;
        if status(loc)==0
            break % input was valid
        end
    end      
    status(loc) = 10;
    play = loc;
    return
end


%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================



%%%%%  Play randomly, when all the above does not apply
while play==0
    % get a random number between 1 and 9
    loc = ceil(9*rand);
    if status(loc)==0
        play = loc;  % input was valid
        break
    end
end

status(loc) = 10;
return

%%%%%%%==========================================================
% Shiraz University (Iran)
% Supervisor Dr. Hejazi
% Student  Korosh Agha Mohammad Ghasemi
%%%%%%%==========================================================

