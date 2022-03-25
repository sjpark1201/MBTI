% Wonjin Ko Coded and Debugged the Code Below: 30 min 
% The Code below is for Question 33 

% Pull images from web

   img1 = imread('Q6.png');

   A1 = Screen('MakeTexture', window, img1);
   A = [A1]; %make an vector of texture pointers

% Size/placement of image on screen

   rect1 = CenterRectOnPointd([0 0 500 300], xCenter, yCenter/1.15)';
   rects = [rect1]; %row for each rect

% Displays images
   
   Screen('DrawTextures', window, A,[],rects);
        
 