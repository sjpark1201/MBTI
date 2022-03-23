
% Questions 

    Q1 = "QUESTION: When you call someone do you: ";
    Q2 = "QUESTION: Do you prefer ...";
    Q3 = "QUESTION: Do you ... ";
    Q4 = "QUESTION: How big is your circle of friends?";
    Q5 = "QUESTION: You had a really rough day - what does your ide of unwinding consist of?";
    Q6 = "QUESTION: How do you tend to make plans with people?";
    Q7 = "QUESTION: Which group of colors do you like best?";
    Q8 = "QUESTION: What type of TV show do you like best?";
    Q9 = "QUESTION: What started the last fight that you had with a friend or significant other?";
    Q10 = "QUESTION: If your friend was wearing something you didn't like, would you tell them?";
    Q11 = "QUESTION: What is the biggest thing that gets in the way of your work?";
    Q12 = "QUESTION: Which statement do you most identify with?";
    Q13 = "QUESTION: How do you feel about conflict?";
    Q14 = "QUESTION: Which do you value the most?";
    Q15 = "QUESTION: When making an important life decision, which do you consider first?";
    Q16 = "QUESTION: If you had to pick a game, which one would you choose?";
    Q17 = "QUESTION: Is it worse to be:";
    Q18 = "QUESTION: Do you value in yourself more that you are:";
    Q28 = "QUESTION: Walking into a bookstore, you observe two books with their titles listed below. Wanting to learn from what you read, which of the following books would you pick off the shelf?";
    Q29 = "QUESTION: Which of the following statements would you consider a compliment:";
    Q30 = "QUESTION: Youre at a bakery and spot your favorite sweet treat on the back shelf. Which of the following best describes you as you attempt to grab the treat?";
    Q31 = "QUESTION: You and your four friends are planning a vacation to the beach (fun fun!)! Each of your friends suggests what to do during the vacation below. Which of the following do you resonate with most?";
    Q32 = "QUESTION: Deciding where to eat for dinner, you have a plethora of options: Sushi, Mexican, Mediterranean, Burgers, etc. After deliberating for 40 minutes, you finally decide to eat Mexican food. You are most relieved";
    Q33 = "QUESTION: The poster below displays four quotes. Out of all the quotes, which one do you resonate with most?";
    Q34 = "QUESTION: Your Biology lab report is due in exactly one week from now. When are you most likely to begin the lab report?";
    Q35 = "QUESTION: Which of the following traits do you admire most?";
    Q36 = "QUESTION: Your friend asks whether you want to watch Batman tonight. However, you have a Literature Midterm tomorrow! How do you respond?";
   
% Minchae Kim wrote and debugged the code: 2-3 hours

questions = [Q1 Q2 Q3 Q4 Q5 Q6 Q7 Q8 Q9 Q10 Q11 Q12 Q13 Q14 Q15 Q16 Q17 Q18 Q28 Q29 Q30 Q31 Q32 Q33 Q34 Q35 Q36];

random_q_bank = [];
r_q_bank = randperm(27);

for num = r_q_bank % randomizes the questions 
    question = questions(num);
    random_q_bank = [random_q_bank question];
end 

for i = 1:27 % this for loop displays questions in random order until test is complete

% Sean Park coded the following: 8-10 hours 
% displays the question 

    specific_question = random_q_bank(i);
    
    Screen('TextSize', window, 30);
    Screen('TextFont', window, 'Courier');
    DrawFormattedText(window, char(specific_question), 'center', screenYpixels * 0.2, [1 1 1]); 
    
% assigning and displaying specific options to each question
    
    if specific_question == Q1
        option1 = '(1) Easily come up with stuff on the fly'; 
        option2 = '(2) Rehearse what youll say beforehand';
        option3 = '(3) Feel calm and collected';
        option4 = '(4) Stutter a lot';
    elseif specific_question == Q2
        option1 = '(1) Many friends with brief contact';
        option2 = '(2) A few friends with more lengthy contact';
        option3 = '(3) Large group gatherings';
        option4 = '(4) One on one talk';
    elseif specific_question == Q3
        option1 = '(1) Speak easily to strangers' ;
        option2 = '(2) Prefer talking to people you know';
        option3 = '(3) Want to get to know more people';
        option4 = '(4) Enjoy the comfort of';
    elseif specific_question == Q4
        option1 = '(1) I make friends wherever I go, so I have a lot of good friends';
        option2 = '(2) Less than ten, I prefer quality of quantity';
        option3 = '(3) I have different groups of friends that I bounce around';
        option4 = '(4) I have a ton of friends on social media, but only a few I hang out with regularly';
    elseif specific_question == Q5
        option1 = '(1) Going out to dinner with a bunch of friends';
        option2 = '(2) My cough and Netflix';
        option3 = '(3) Going out to a party';
        option4 = '(4) Dinner with my best friend at our favorite restaurant';
    elseif specific_question == Q6
        option1 = '(1) Any time I want to go out I just call and see who is free';
        option2 = '(2) I usually make plans about a week inadvance';
        option3 = '(3) I just show up to a function and see if anyone is out';
        option4 = '(4) I schedule get-togethers as far in advance as possible';
    elseif specific_question == Q7
        option1 = '(1) Red, orange, yellow';
        option2 = '(2) Blue, green';
        option3 = '(3) Pink, purple';
        option4 = '(4) Gray, white, black';
    elseif specific_question == Q8
        option1 = '(1) Dramas with a lot of character development';
        option2 = '(2) True crime shows';
        option3 = '(3) Reality TV';
        option4 = '(4) Anything on HGTV';
    elseif specific_question == Q9
        option1 = '(1) I made plans for us without talking to them first';
        option2 = '(2) I was upset about something from school and didnt want to talk about it';
        option3 = '(3) I was accused of being aloof or distracted during a conversation';
        option4 = '(4) I felt like they were not spending enough time with me';
    elseif specific_question == Q10
        option1 = '(1) No, I would still tell them I like it';
        option2 = '(2) Definitely, if the tables were turned, I would want to know';
        option3 = '(3) Probably not, I wouldnt want to hurt their feelings';
        option4 = '(4) Yes, if their clothes were stained, ripped, or didnt fit properly';
    elseif specific_question == Q11
        option1 = 'I hold a grudge and have a hard time letting things go';
        option2 = 'I am a stickler for the rules';
        option3 = 'I let my emotions disrupt my workflow';
        option4 = 'I can be too technical about things';
    elseif specific_question == Q12
        option1 = 'When there is conflict around me, I feel unbalanced or off';
        option2 = 'I hate lying and value the truth above all else';
        option3 = 'Before making a decision I like to talk with everyone involved';
        option4 = 'I enjoy doing highly technical or scientific work';
    elseif specific_question == Q13
        option1 = '(1) I avoid it all costs, it makes me feel very uncomfortable';
        option2 = '(2) Its a necessary part of life that can be handled';
        option3 = '(3) I dont like it, but can hold my own in an argument';
        option4 = '(4) I welcome it, since conflict often results in a solution';
    elseif specific_question == Q14
        option1 = '(1) Harmony';
        option2 = '(2) Truth';
        option3 = '(3) Relationships';
        option4 = '(4) Logic';
    elseif specific_question == Q15
        option1 = '(1) My personal feelingss';
        option2 = '(2) The outcome that makes the most sense';
        option3 = '(3) My career goals';
        option4 = '(4) What is best for my friends and family';
    elseif specific_question == Q16
        option1 = '(1) Charades';
        option2 = '(2) Chess';
        option3 = '(3) Truth or dare';
        option4 = '(4) Monopoly';
    elseif specific_question == Q17
        option1 = '(1) Merciless';
        option2 = '(2) Unjust';
        option3 = '(3) Heartless';
        option4 = '(4) Biased';
    elseif specific_question == Q18;
        option1 = '(1) Devoted';
        option2 = '(2) Unwavering';
        option3 = '(3) Admiring';
        option4 = '(4) Steadfast';
    elseif specific_question == Q28 
        option1 = '(1) The Path Towards Success';
        option2 = '(2) Taking Life One Step at a Time'; 
        option3 = '(3) Planning Ahead'; 
        option4 = '(4) Openness and Adaptability';
    elseif specific_question == Q29
        option1 = '(1) Wow, you seem to already have everything planned!';
        option2 = '(2) Its so great that youre always down to try new things!';
        option3 = '(3) I appreciate the motivation you have towards reaching your goals!';
        option4 = '(4) Its amazing how youre able to get everything done at the last minute!';
    elseif specific_question == Q30
        option1 = '(1) Reluctant';
        option2 = '(2) Impulsive';
        option3 = '(3) With Intent';
        option4 = '(4) Relaxed';
    elseif specific_question == Q31
        option1 = '(1) Friend 1: Each day should be reserved for one activity: Surfing - Day One, Beach Day - Day Two, Boardwalk - Day Three, Activities at the Pier - Day Four. How does that sound?!';
        option2 = '(2) Friend 2: Lets take it day by day and see where the day takes us!';
        option3 = '(3) Friend 3: I would like the whole trip to be filled with water activities! Do you want me to buy tickets for surfing, jet skiing, and scuba diving?';
        option4 = '(4) Friend 4: I want this vacation to be all about exploration! Im truly down to do anything!';
    elseif specific_question == Q32 
        option1 = '(1) after making the decision';
        option2 = '(2) before making the decision';
        option3 = '(3) while making the decision';
        option4 = '(4) throughout the whole process';
    elseif specific_question == Q33 
        option1 = '(1) Franklin Quote';
        option2 = '(2) Morrison Quote';
        option3 = '(3) Christie Quote';
        option4 = '(4) Einstein Quote';
    elseif specific_question == Q34
        option1 = '(1) Today and finish it in a few hours';
        option2 = '(2) The day before its due and finish it in a few hours';
        option3 = '(3) Today and spread the workload out throughout the week';
        option4 = '(4) The day before its due and submit it late';
    elseif specific_question == Q35
        option1 = '(1) Organization';
        option2 = '(2) Adaptability';
        option3 = '(3) Persistence';
        option4 = '(4) Impulsivity';
    elseif specific_question == Q36
        option1 = '(1) SOLID NO: going will ruin your study plans';
        option2 = '(2) IMMEDIATE YES: you want to live in the moment';
        option3 = '(3) RELUCTANT NO: you really want to go but realize studying is probably what you should do';
        option4 = '(4) RELUCTANT YES: you know you have to study but watching Batman is a must';
    end
    
% displaying options on screen
   
    Screen('TextSize', window, 20);
    Screen('TextFont', window, 'Courier');
    DrawFormattedText(window, option1, 'center', screenYpixels * 0.4, [1 1 1]);

    Screen('TextSize', window, 20);  
    Screen('TextFont', window, 'Courier');
    DrawFormattedText(window, option2, 'center',screenYpixels * 0.5, [1 1 1]);

    Screen('TextSize', window, 20);
    Screen('TextFont', window, 'Courier');  
    DrawFormattedText(window, option3, 'center', screenYpixels * 0.6, [1 1 1]);

    Screen('TextSize', window, 20);
    Screen('TextFont', window, 'Courier');
    DrawFormattedText(window, option4, 'center', screenYpixels * 0.7, [1 1 1]);
    
    Screen('Flip', window);

% restricting user keyboard responses to 1, 2, 3, or 4 
    
    % KbStrokeWait; 
    % KbNames('UnifyKeyNames')
   
    RestrictKeysForKbCheck([KbName('1!') KbName('2@') KbName('3#') KbName('4$') KbName('ESCAPE')]);
    [secs, keyCode] = KbStrokeWait;
    qans = KbName(keyCode);

% helps us store data into a row vector called responses 
    
    % if the questions are from 1-9, place a,b,c, or d in responses

    comp_1 = {Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9};

    if strcmp(specific_question, comp_1) 

        if strcmp(qans,'1!')
            responses = [responses, 'a']; 
        elseif strcmp(qans,'2@')
            responses = [responses, 'b'];
        elseif strcmp(qans,'3#')
            responses = [responses, 'c'];
        elseif strcmp(qans,'4$')
            responses = [responses, 'd'];
        end
    end

    % if the questions are from 28-36, place m,n,o, or p in responses

    comp_2 = {Q28, Q29, Q30, Q31, Q32, Q33, Q34, Q35, Q36};

    if strcmp(specific_question, comp_2) 

        if strcmp(qans,'1!')
            responses = [responses, 'm']; 
        elseif strcmp(qans,'2@')
            responses = [responses, 'n'];
        elseif strcmp(qans,'3#')
            responses = [responses, 'o'];
        elseif strcmp(qans,'4$')
            responses = [responses, 'p'];
        end
    end

end 

% Completion Screen

disp(responses)
completion_and_results
