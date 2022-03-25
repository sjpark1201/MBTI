%%pull images from web%% 
       img1 = webread(Q13_1);
       img2 = webread(Q13_2);
       img3 = webread(Q13_3);
       img4 = webread(Q13_4);
      
        A1 = Screen('MakeTexture', window, img1);
        A2 = Screen('MakeTexture', window, img2);
        A3 = Screen('MakeTexture', window, img3);
        A4 = Screen('MakeTexture', window, img4);
        A = [A1 A2 A3 A4]; %make an vector of texture pointers

   
        %size/placement of image on screen
        rect1 = CenterRectOnPointd([0 0 300 300], xCenter-(xCenter/2), yCenter/1.35)';
        rect2 = CenterRectOnPointd([0 0 300 300], xCenter-(xCenter/6), yCenter/1.35)';
        rect3 = CenterRectOnPointd([0 0 300 300], xCenter+(xCenter/6), yCenter/1.35)';
        rect4 = CenterRectOnPointd([0 0 300 300], xCenter+(xCenter/2), yCenter/1.35)';
        rects = [rect1 rect2 rect3 rect4]; %row for each rect

        %displays images
        Screen('DrawTextures', window, A,[],rects);
        
        
        %labels the images
        Screen('TextSize', window, 40);
        Screen('TextFont', window, 'Courier');
        DrawFormattedText(window, '1' , screenXpixels*.245, screenYpixels*.55, [1 1 1]);
        DrawFormattedText(window, '2' , screenXpixels*.41, screenYpixels*.55, [1 1 1]);
        DrawFormattedText(window, '3' , screenXpixels*.58, screenYpixels*.55, [1 1 1]);
        DrawFormattedText(window, '4' , screenXpixels*.745, screenYpixels*.55, [1 1 1]);