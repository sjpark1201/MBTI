% CLPS 0950 - Project I by Sean Park, Minchae Kim, and Wonjin Ko

% Sean Park wrote and debugged the code below: 8-10 hours
% Wonjin Ko reviewed/edited this code: 2-3 hours 

% NOTE: when you run this code for the first time, it may crash. If it
% does, wait for it to close and then try running it again. It should work

% Clears the workspace and the screen

close all;
clearvars;
sca 

KbName('UnifyKeyNames') %uniform names%

RestrictKeysForKbCheck([]);

Screen('Preference', 'SkipSyncTests', 1); % Prevents the possibility of encountering a screen error 

% Introduction Screen

% General Display Settings

BackColor = [255 255 255];

TextColor = [0 0 0];              
TextFont = 'Courier';

screens = Screen('Screens');
ScreenNum = max(screens);  

% For some computers, the following code may work better for line 35: [window, windowRect] = PsychImaging('OpenWindow', ScreenNum, BackColor, [0 0 3200 1500])

[window, windowRect] = PsychImaging('OpenWindow', ScreenNum, BackColor); % opens a window on the mainscreen with chosen background color
[screenXpixels, screenYpixels] = Screen('WindowSize', window);
[xCenter, yCenter] = RectCenter(windowRect);

Screen('TextFont', window, TextFont); % Sets all text in the font that we chose             

% Displaying text we want to on the main screen 

Screen('TextSize', window, 50);
DrawFormattedText(window, 'MBTI (Myers-Briggs Type Indicator) Personality Test', 'center', screenYpixels * 0.4, [68 142 228],60);

Screen('TextSize', window, 40);
DrawFormattedText(window, 'The next page contains important instructions. Please read them carefully', 'center', screenYpixels * 0.5, TextColor,60);

Screen('TextSize', window, 20);
DrawFormattedText(window, 'Personality Descriptions accredited to 16Personalities' ,'center', screenYpixels * 0.8, TextColor,60);
 
Screen('TextSize', window, 20);
DrawFormattedText(window, 'Press any key to continue ...' ,'center', screenYpixels * 0.9, TextColor,60);

Screen('Flip', window);
KbStrokeWait;

% Next Screen 

Screen('TextSize', window, 50); 
Screen('TextFont', window, 'Courier');
DrawFormattedText(window, 'MBTI Personality Test Instructions:', 'center', screenYpixels * 0.4  , [68 142 228],40);

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Courier');
DrawFormattedText(window, 'This test consists of 36 multiple choice questions designed to identify you with one of 16 personality types.', 'center', screenYpixels * 0.5, [1 1 1],40);

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Courier');
DrawFormattedText(window, 'To respond to each question, press the cooresponding number to the answer choice on your keyboard. ' , 'center', screenYpixels * 0.6, [1 1 1],40);

Screen('TextSize', window, 20);
Screen('TextFont', window, 'Courier');
DrawFormattedText(window, 'Press 1 to continue' , 'center', screenYpixels * 0.9, [1 1 1],40);

Screen('Flip', window);
KbStrokeWait;   

% describe variables

responses = [];     

% Algorithm to display multiple choice questions onto psychtoolbox 
    
personality_test_question_and_options_changes
