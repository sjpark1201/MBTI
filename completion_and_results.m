% Sean Park coded and debugged this code: 2 hours 

% Completion Screen

% Displaying text we want to on the main screen 

RestrictKeysForKbCheck([]);

Screen('TextSize', window, 30); 
Screen('TextFont', window, 'Courier');
DrawFormattedText(window, 'Congratulations! You have completed the MBTI personality test!', 'center', screenYpixels * 0.4  , [1 1 1]);

Screen('TextSize', window, 20);
Screen('TextFont', window, 'Courier');
DrawFormattedText(window, 'Press any key to view your results' , 'center', screenYpixels * 0.9, [1 1 1]);

Screen('Flip', window);
KbStrokeWait;

% Calculating Data: For the data below, a and c represent one category
% while b and d represent another category. This pattern continues
% for every category using different letters (i.e. for T/F, i and k
% represent one category while j and l represent another)

% For E/I:

    W1 = responses(:) == 'a';
    X1 = responses(:) == 'b';
    Y1 = responses(:) == 'c';
    Z1 = responses(:) == 'd';
    
    E = sum(W1+Y1);
    I = sum(X1+Z1);
    
    if E > I
        e_or_i = ' E';
    elseif I > E
        e_or_i = ' I';
    end

    % displays data as a percentage

    percentage_E = (E/(9)) * 100;
    percentage_I = (I/(9)) * 100;

% For S/N

    W2 = responses(:) == 'e';
    X2 = responses(:) == 'f';
    Y2 = responses(:) == 'g';
    Z2 = responses(:) == 'h';
    
    N = sum(W1+Y1);
    S = sum(X1+Z1);
    
    if N > S
        s_or_n = 'N';
    elseif S > N
        s_or_n = 'S';
    end

    % displays data as a percentage

    percentage_S = (S/(9)) * 100;
    percentage_N = (N/(9)) * 100;
    
% For T/F

    W3 = responses(:) == 'i';
    X3 = responses(:) == 'j';
    Y3 = responses(:) == 'k';
    Z3 = responses(:) == 'l';
    
    F = sum(W3+Y3);
    T = sum(X3+Z3);
    
    if T > F
        t_or_f = 'T';
    elseif F > T
        t_or_f = 'F';
    end
       
    percentage_T = (T/(9)) * 100;
    percentage_F = (F/(9)) * 100;

% For J/P:

    W4 = responses(:) == 'm';
    X4 = responses(:) == 'n';
    Y4 = responses(:) == 'o';
    Z4 = responses(:) == 'p';
    
    J = sum(W4+Y4);
    P = sum(X4+Z4);

    if J > P
        j_or_p = 'J';
    elseif P > J
        j_or_p = 'P';
    end
    
    percentage_J = (J/(9)) * 100;
    percentage_P = (P/(9)) * 100;

    personality = strcat(e_or_i, s_or_n, t_or_f, j_or_p)

% Results Page

Screen('TextSize', window, 40); 
Screen('TextFont', window, 'Courier');
DrawFormattedText(window, 'Your MBTI Personality Test Results', 'center', screenYpixels * 0.2  , [1 1 1]);

% Takes your results from the individual four categories and concatenates
% the letters together. For example, lets say you got E in the first, N in
% the second, T in the third, and J in the fourth. The strcat code below
% concatenates it into ENTJ

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Courier');
p_type = strcat('Personality Type:', e_or_i, s_or_n, t_or_f, j_or_p);
DrawFormattedText(window, p_type, 'center', screenYpixels * 0.3, [68 142 228]);

% Personality Name: assigning personality name based on type 

if personality == ' INTJ'
    p_name = 'ARCHITECT: Imaginative and strategic thinkers, with a plan for everything';
elseif personality == ' INTP'
    p_name = 'LOGICIAN: Innovative inventors with an unquenchable thirst for knowledge';
elseif personality == ' ENTJ'
    p_name = 'COMMANDER: Bold, imaginative, and strong-willed leaders, always finding a way - or making one';
elseif personality == ' ENTP'
    p_name = 'DEBATER: Smart and curious thinkers who cannot resist and intellectual challenge';
elseif personality == ' INFJ'
    p_name = 'ADVOCATE: Quiet and mystical, yet very inspiring and tireless idealists';
elseif personality == ' INFP' 
    p_name = 'MEDIATOR: Poetic, kind, and altruistic people, always eager to help a good cause';
elseif personality == ' ENFJ' 
    p_name = 'PROTAGONIST: Charismatic and inspiring leaders, able to mesmerize their listeners';
elseif personality == ' ENFP' 
    p_name = 'CAMPAIGNER: Enthusiastic, creative, and sociable free spirits, who can always find a reason to smile';
elseif personality == ' ISTJ' 
    p_name = 'LOGISTICIAN: Practical and fact-minded individuals, whose reliability cannot be doubted';
elseif personality == ' ISFJ'
    p_name = 'DEFENDER: Very dedicated and warm protectors, always ready to defend their loved ones';
elseif personality == ' ESTJ' 
    p_name = 'EXCECUTIVE: Excellent administrators, unsurpassed at managing things - or people';
elseif personality == ' ESFJ'
    p_name = 'CONSUL: Extraordinarily caring, social, and popular people, always eager to help';
elseif personality == ' ISTP' 
    p_name = 'VIRTUSO: Bold and practical experimenters, masters of all kinds of tools';
elseif personality == ' ISFP'
    p_name = 'ADVENTURER: Flexible and charming artists, always ready to explore and experience something new';
elseif personality == ' ESTP'
    p_name = 'ENTREPRENEUR: Smart, energetic, and very perceptive people, who truly enjoy living on the edge';
elseif personality == ' ESFP' 
    p_name = 'ENTERTAINER: Spontaneous, energetic, and enthusiastic people - life is never boring around them';
end

Screen('TextSize', window, 28);
Screen('TextFont', window, 'Courier');
DrawFormattedText(window, p_name, 'center', screenYpixels * 0.4, [83, 97, 138]);

% Each of the following below displays the percent value to which you are
% in a specific category. The strcat involves the number 32 which is the
% ASCII space character

Screen('TextSize', window, 27);
Screen('TextFont', window, 'Courier');
DrawFormattedText(window, 'Specific Results: ' , 'center', screenYpixels * 0.5, [1 1 1]);

Screen('TextSize', window, 25);
Screen('TextFont', window, 'Courier');
percentage_ext = strcat('Percent Extroverted (E):', 32, num2str(percentage_E), '%');
DrawFormattedText(window, percentage_ext , 'center', screenYpixels * 0.6, [1 1 1]);

Screen('TextSize', window, 25);
Screen('TextFont', window, 'Courier');
percentage_int = strcat('Percent Introverted (I):', 32, num2str(percentage_I), '%');
DrawFormattedText(window, percentage_int, 'center', screenYpixels * 0.65, [1 1 1]);

Screen('TextSize', window, 25);
Screen('TextFont', window, 'Courier');
percentage_sen = strcat('Percent Sensing (S):', 32, num2str(percentage_S), '%');
DrawFormattedText(window, percentage_sen, 'center', screenYpixels * 0.7, [1 1 1]);

Screen('TextSize', window, 25);
Screen('TextFont', window, 'Courier');
percentage_ntu = strcat('Percent Intuition (N):', 32, num2str(percentage_N), '%');
DrawFormattedText(window, percentage_ntu, 'center', screenYpixels * 0.75, [1 1 1]);

Screen('TextSize', window, 25);
Screen('TextFont', window, 'Courier');
percentage_think = strcat('Percent Thinking (T):', 32, num2str(percentage_T), '%');
DrawFormattedText(window, percentage_think, 'center', screenYpixels * 0.8, [1 1 1]);

Screen('TextSize', window, 25);
Screen('TextFont', window, 'Courier');
percentage_feel = strcat('Percent Feeling (F):', 32, num2str(percentage_F), '%');
DrawFormattedText(window, percentage_feel, 'center', screenYpixels * 0.85, [1 1 1]);

Screen('TextSize', window, 25);
Screen('TextFont', window, 'Courier');
percentage_judge = strcat('Percent Judging (J):', 32, num2str(percentage_J), '%');
DrawFormattedText(window, percentage_judge , 'center', screenYpixels * 0.9, [1 1 1]);

Screen('TextSize', window, 25);
Screen('TextFont', window, 'Courier');
percentage_percieve = strcat('Percent Percieving (P):', 32, num2str(percentage_P), '%');
DrawFormattedText(window, percentage_percieve, 'center', screenYpixels * 0.95, [1 1 1]);

Screen('Flip', window);
KbStrokeWait;
