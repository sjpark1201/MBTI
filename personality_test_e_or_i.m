function e_or_i = personality_test_e_or_i(questions, options)

Q1 = "When you call someone do you:";
Q2 = "Do you prefer:";
Q3 = "Do you";
Q4 = "How big is your circle of friends?";
Q5 = "You had a really rough day- what does your ide of unwinding consist of?";
Q6 = "How do you tend to make plans with people?";
Q7 = "Which group of colors do you like best?";
Q8 = "What type of TV show do you like best?";
Q9 = "What started the last fight that you had with a friend or significant other?";

questions = [Q1 Q2 Q3 Q4 Q5 Q6 Q7 Q8 Q9];

responses = [];

for i = 1:9
    question = questions(i);

    if questions(i) == Q1
        options = ["Easily come up with stuff on the fly" "Rehearse what you'll say beforehand" "Feel calm and collected" "Stutter a lot"];
    elseif questions(i) == Q2
        options = ["Many friends with brief contact" "A few friends with more lengthy contact" "Large group gatherings" "One on one talk"];
    elseif questions(i) == Q3
        options = ["Speak easily to strangers" "Prefer talking to people you know" "Want to get to know more people" "Enjoy the comfort of company you are familiar with"];
    elseif questions(i) == Q4
        options = ["I make friends wherever I go, so I have a lot of good friends" "Less than ten, I prefer quality over quantity" "I have different groups of friends that I bounce around" "I have a ton of friends on social media, but only a few that I hang out with regularly"];
    elseif questions(i) == Q5
        options = ["Going out to dinner with a bunch of friends" "My cough and Netflix" "Going out to a party" "Dinner with my best friend at our favorite restaurant"];
    elseif questions(i) == Q6
        options = ["Any time I want to go out I just call and see who is free" "I usually make plans about a week in advance" "I just show up to a function and see if anyone is out" "I schedule get-togethers as far in advance as possible"];
    elseif questions(i) == Q7
        options = ["Red, orange, yellow" "Blue,green" "Pink, purple" "Gray, white, black"];
    elseif questions(i) == Q8
        options = ["Dramas with a lot of character development" "True crime shows" "Reality TV" "Anything on HGTV"];
    else questions(i) == Q9
        options = ["I made plans for us without talking to them first" "I was upset about something from school and didn't want to talk about it" "I was accused of being aloof or distracted during a conversation" "I felt like they were not spending enough time with me"];
    end 

    UIControl_FontSize_bak = get(0, 'DefaultUIControlFontSize');
    set(0, 'DefaultUIControlFontSize', 18);
    choice = menu(question, options);
    set(0, 'DefaultUIControlFontSize', UIControl_FontSize_bak);
    disp("You Chose" + " " + options(choice));

    if options (choice) == options(1)
        responses = [responses, 'a'];
    elseif options(choice) == options(2)
        responses = [responses, 'b'];
    elseif options(choice) == options(3)
        responses = [responses, 'c'];
    else
        responses = [responses, 'd'];
    end
end

W = responses(:) == 'a';
X = responses(:) == 'b';
Y = responses(:) == 'c';
Z = responses(:) == 'd';

E = sum(W+Y);
I = sum(X+Z);

if E > I
    e_or_i = "E";
elseif I > E
    e_or_i = "I";
end
end



    
