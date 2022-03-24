url_13_1 = 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg/1200px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg'
img1 = webread(url_13_1);
imagesc(img1)
%% 
url_13_2 = 'https://images.fineartamerica.com/images/artworkimages/mediumlarge/1/energized--abstract-art-by-fidostudio-tom-fedro--fidostudio.jpg'
img2 = webread(url_13_2);
imagesc(img2)
%% 
url_13_3 = 'https://images.unsplash.com/photo-1581337204873-ef36aa186caa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bGFuZHNjYXBlJTIwcGFpbnRpbmd8ZW58MHx8MHx8&w=1000&q=80'
img3 = webread(url_13_3);
imagesc(img3)
%% 
url_13_4 = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSaSBrUMiSPey1tqWoJGL1hiNoLY0xxwtjRg&usqp=CAU'
img4 = webread(url_13_4);
imagesc(img4)
%Wonjin coded and debugged this section (~5-6 hours)

%%Psychtoolbox code%%

%%pull images from web%% 
       img1 = webread(url_13_1);
       img2 = webread(url_13_2);
       img3 = webread(url_13_3);
       img4 = webread(url_13_4);
      
        A1 = Screen('MakeTexture', window, img1);
        A2 = Screen('MakeTexture', window, img2);
        A3 = Screen('MakeTexture', window, img3);
        A4 = Screen('MakeTexture', window, img4);
        A = [A1 A2 A3 A4]; %make an vector of texture pointers

   
        %size/placement of image on screen
        rect1 = CenterRectOnPointd([0 0 200 200], xCenter-(xCenter/2), yCenter/2)';
        rect2 = CenterRectOnPointd([0 0 200 200], xCenter-(xCenter/6), yCenter/2)';
        rect3 = CenterRectOnPointd([0 0 200 200], xCenter+(xCenter/6), yCenter/2)';
        rect4 = CenterRectOnPointd([0 0 200 200], xCenter+(xCenter/2), yCenter/2)';
        rects = [rect1 rect2 rect3 rect4]; %row for each rect

        %displays images
        Screen('DrawTextures', window, T,[],rects);
        
        
        %labels the images
        Screen('TextSize', window, 40);
        Screen('TextFont', window, 'Courier');
        DrawFormattedText(window, '1' , screenXpixels*.245, screenYpixels*.4, [1 1 1]);
        DrawFormattedText(window, '2' , screenXpixels*.41, screenYpixels*.4, [1 1 1]);
        DrawFormattedText(window, '3' , screenXpixels*.58, screenYpixels*.4, [1 1 1]);
        DrawFormattedText(window, '4' , screenXpixels*.745, screenYpixels*.4, [1 1 1]);
