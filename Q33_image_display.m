%%pull images from web%% 
       img1 = imread('Q6.png');

      
        A1 = Screen('MakeTexture', window, img1);
        A = [A1]; %make an vector of texture pointers

   
        %size/placement of image on screen
        rect1 = CenterRectOnPointd([0 0 600 400], xCenter, yCenter/1.35)';
        rects = [rect1]; %row for each rect

        %displays images
        Screen('DrawTextures', window, A,[],rects);
        
 