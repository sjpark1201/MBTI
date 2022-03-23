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

% Calculating Data

% For E/I:

    W1 = responses(:) == 'a';
    X1 = responses(:) == 'b';
    Y1 = responses(:) == 'c';
    Z1 = responses(:) == 'd';
    
    E = sum(W1+Y1);
    I = sum(X1+Z1);
    
    percentage_E = (E/(9)) * 100;
    percentage_I = (I/(9)) * 100;

% For J/P:

    W4 = responses(:) == 'm';
    X4 = responses(:) == 'n';
    Y4 = responses(:) == 'o';
    Z4 = responses(:) == 'p';
    
    J = sum(W4+Y4);
    P = sum(X4+Z4);

    
    
    percentage_J = (J/(9)) * 100;
    percentage_P = (P/(9)) * 100;

% Results Page

Screen('TextSize', window, 30); 
Screen('TextFont', window, 'Courier');
DrawFormattedText(window, 'Your MBTI Personality Test Results', 'center', screenYpixels * 0.2  , [1 1 1]);

Screen('TextSize', window, 20);
Screen('TextFont', window, 'Courier');
DrawFormattedText(window, 'Personality Type: ENTJ' , 'center', screenYpixels * 0.3, [1 1 1]);

Screen('TextSize', window, 20);
Screen('TextFont', window, 'Courier');
DrawFormattedText(window, 'Specific Results:' , 'center', screenYpixels * 0.4, [1 1 1]);

Screen('TextSize', window, 15);
Screen('TextFont', window, 'Courier');
DrawFormattedText(window, strcat('Percent Extroverted:', '', num2str(percentage_E), '%') , 'center', screenYpixels * 0.5, [1 1 1]);

Screen('TextSize', window, 15);
Screen('TextFont', window, 'Courier');
DrawFormattedText(window, strcat('Percent Introverted:', '', num2str(percentage_I), '%') , 'center', screenYpixels * 0.55, [1 1 1]);

Screen('TextSize', window, 15);
Screen('TextFont', window, 'Courier');
DrawFormattedText(window, strcat('Percent Judging:', '', num2str(percentage_J), '%') , 'center', screenYpixels * 0.6, [1 1 1]);

Screen('TextSize', window, 15);
Screen('TextFont', window, 'Courier');
DrawFormattedText(window, strcat('Percent Percieving:', '', num2str(percentage_P), '%') , 'center', screenYpixels * 0.65, [1 1 1]);

Screen('Flip', window);
KbStrokeWait;



