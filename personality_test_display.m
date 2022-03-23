% Sean Park wrote and debugged the code: 8-10 hours

% Clears the workspace and the screen

close all;
clearvars;
sca

RestrictKeysForKbCheck([]);

Screen('Preference', 'SkipSyncTests', 1); % Prevents the possibility of encountering a screen error 

% Introduction Screen

% Display Settings

BackColor = [255 255 255];

TextColor = [0 0 0];   
TextFont = 'Courier';

screens = Screen('Screens');
ScreenNum = max(screens);  

[window, windowRect] = PsychImaging('OpenWindow', ScreenNum, BackColor); % opens a window on the mainscreen with chosen background color
[screenXpixels, screenYpixels] = Screen('WindowSize', window);
[xCenter, yCenter] = RectCenter(windowRect);

Screen('TextFont', window, TextFont); % Sets all text in the font that we chose             

% Displaying text we want to on the main screen 

Screen('TextSize', window, 50);
DrawFormattedText(window, 'MBTI (Myers-Briggs Type Indicator) Personality Test', 'center', screenYpixels * 0.4, TextColor);

Screen('TextSize', window, 40);
DrawFormattedText(window, 'The next page contains important instructions. Please read them carefully', 'center', screenYpixels * 0.5, TextColor);
 
Screen('TextSize', window, 20);
DrawFormattedText(window, 'Press any key to continue ...' ,'center', screenYpixels * 0.9, TextColor);

Screen('Flip', window);
KbStrokeWait;

% Next Screen 

Screen('TextSize', window, 50); 
Screen('TextFont', window, 'Courier');
DrawFormattedText(window, 'MBTI Personality Test Instructions:', 'center', screenYpixels * 0.4  , [1 1 1]);

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Courier');
DrawFormattedText(window, 'This test consists of 36 multiple choice questions designed to identify you with one of 16 personality types.', 'center', screenYpixels * 0.5, [1 1 1]);

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Courier');
DrawFormattedText(window, 'To respond to each question, press the cooresponding number to the answer choice on your keyboard. ' , 'center', screenYpixels * 0.6, [1 1 1]);

Screen('TextSize', window, 20);
Screen('TextFont', window, 'Courier');
DrawFormattedText(window, 'Press 1 to continue' , 'center', screenYpixels * 0.9, [1 1 1]);

Screen('Flip', window);
KbStrokeWait;   

% describe variables

responses = [];     

% Algorithm to   display multiple choice questions onto psychtoolbox 
    
personality_test_question_and_options

    


