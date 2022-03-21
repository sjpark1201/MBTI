
% Code written and debugged by Sean Park (~ 3-4 hours)

function j_or_p = personality_test(questions, options) % function that generates test question and format
    
    % Questions 1-10 for the J/S Category of the MBTI Personality Test

        Q1 = "Walking into a bookstore, you observe two books with their titles listed below. Wanting to learn from what you read, which of the following books would you pick off the shelf?";
        Q2 = "Which of the following statements would you consider a compliment:";
        Q3 = "You;re at a bakery and spot your favorite sweet treat on the back shelf. Which of the following best describes you as you attempt to grab the treat?";
        Q4 = "You and your four friends are planning a vacation to the beach (fun fun!)! Each of your friends suggests what to do during the vacation below. Which of the following do you resonate with most?";
        Q5 = "Deciding where to eat for dinner, you have a plethora of options: Sushi, Mexican, Mediterranean, Burgers, etc. After deliberating for 40 minutes, you finally decide to eat Mexican food. You are most relieved";
        Q6 = "The poster below displays four quotes. Out of all the quotes, which one do you resonate with most?";
        Q7 = "Your Biology lab report is due in exactly one week from now. When are you most likely to begin the lab report?";
        Q8 = "Which of the following traits do you admire most?";
        Q9 = "Your friend asks whether you want to watch Batman tonight. However, you have a Literature Midterm tomorrow! How do you respond?";

        questions = [Q1 Q2 Q3 Q4 Q5 Q6 Q7 Q8 Q9]; % The questions themselves will be placed into a row vector called questions

    % Personality Test Algorithm 
        
        responses = []; % creating an empty vector called 'responses' which will store the user's responses to each question throughout the test
        
        for i = 1:9
           
            question = questions(i); % Questions is equal to the string at index i 
            
            % Creating the individual choices for each question
        
            if questions(i) == Q1 
                options = ["The Path Towards Success" "Taking Life One Step at a Time" "Planning Ahead" "Openness and Adaptability"];
            elseif questions(i) == Q2
                options = ["'Wow, you seem to already have everything planned!'" "'It's so great that you're always down to try new things!'" "'I appreciate the motivation you have towards reaching your goals!'" "'It's amazing how you're able to get everything done at the last minute!'"];
            elseif questions(i) == Q3 
                options = ["Reluctant" "Impulsive" "With Intent" "Relaxed"];
            elseif questions(i) == Q4
                options = ["Friend 1: 'Each day should be reserved for one activity: Surfing - Day One, Beach Day - Day Two, Boardwalk - Day Three, Activities at the Pier - Day Four. How does that sound?!'" "'Friend 2: Let's take it day by day and see where the day takes us!'" "'Friend 3: 'I would like the whole trip to be filled with water activities! Do you want me to buy tickets for surfing, jet skiing, and scuba diving?'" "'Friend 4: I want this vacation to be all about exploration! I'm truly down to do anything!'"];
            elseif questions(i) == Q5 
                options = ["after making the decision" "before making the decision" "while making the decision" "throughout the whole process"];
            elseif questions(i) == Q6 
                options = ["Franklin Quote" "Morrison Quote" "Christie Quote" "Einstein Quote"];
            elseif questions(i) == Q7
                options = ["Today and finish it in a few hours" "The day before its due and finish it in a few hours" "Today and spread the workload out throughout the week" "The day before its due and submit it late"];
            elseif questions(i) == Q8
                options = ["Organization" "Adaptability" "Persistence" "Impulsivity"];
            else
                options = ["SOLID NO: going will ruin your study plans" "IMMEDIATE YES: you want to live in the moment" "RELUCTANT NO: you really want to go but realize studying is probably what you should do" "RELUCTANT YES: you know you have to study but watching Batman is a must"];
            end
            
            UIControl_FontSize_bak = get(0, 'DefaultUIControlFontSize');
            set(0, 'DefaultUIControlFontSize', 18);
            choice = menu(question, options); % using the choice function which displays the questions and options in a display box 
            set(0, 'DefaultUIControlFontSize', UIControl_FontSize_bak);
            disp("You Chose" + " " + options(choice)); % once the user answers the question, MATLAB will display "You Chose ___"
    
            
            % the following conditional statements below enable us to fill the vector 
            % responses' with user responses 
        
            if options(choice) == options(1)
                responses = [responses, 'a']; 
            elseif options(choice) == options(2)
                responses = [responses, 'b'];
            elseif options(choice) == options(3)
                responses = [responses, 'c'];
            else 
                responses = [responses, 'd'];
            end
        end
    
        % determines whether your are judging or perceiving
        
        W = responses(:) == 'a';
        X = responses(:) == 'b';
        Y = responses(:) == 'c';
        Z = responses(:) == 'd';


        J = sum(W+Y); % choices a and c describe people with judging characteristics 
        P = sum(X+Z); % choices b and d describe people with perceiving characteristics  

        if J > P % if there are more a  and c choices, this means the person is more judging 
            j_or_p = 'J';
        elseif P > J  % if there are more b and d choices, this means the person is more perceiving 
            j_or_p = 'P';
        end
end 
