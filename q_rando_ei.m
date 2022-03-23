function e_or_i = personality_test_e_or_i(questions, options)

Q1 = "QUESTION: When you call someone do you:";
Q2 = "QUESTION: Do you prefer:";
Q3 = "QUESTION: Do you";
Q4 = "QUESTION: How big is your circle of friends?";
Q5 = "QUESTION: You had a really rough day- what does your ide of unwinding consist of?";
Q6 = "QUESTION: How do you tend to make plans with people?";
Q7 = "QUESTION: Which group of colors do you like best?";
Q8 = "QUESTION: What type of TV show do you like best?";
Q9 = "QUESTION: What started the last fight that you had with a friend or significant other?";

questions = [Q1 Q2 Q3 Q4 Q5 Q6 Q7 Q8 Q9];

responses = [];
random_q_bank = [];
r_q_bank = randperm(9);
for num = r_q_bank
    question = questions(num);
    random_q_bank = [random_q_bank question];

end

for i = 1:9
    specific_question = random_q_bank(i);
  
    if secific_question == Q1
        option1 = "(1) Easily come up with stuff on the fly"; 
        option2 = "(2) Rehearse what you'll say beforehand";
        option3 = "(3) Feel calm and collected";
        option4 = "(4) Stutter a lot";
    elseif specific_question == Q2
        option1 = "(1) Many friends with brief contact";
        option2 = "(2) A few friends with more lengthy contact";
        option3 = "(3) Large group gatherings";
        option4 = "(4) One on one talk";
    elseif specific_question == Q3
        option1 = "(1) Speak easily to strangers" ;
        option2 = "(2) Prefer talking to people you know";
        option3 = "(3) Want to get to know more people";
        option4 = "(4) Enjoy the comfort of";
    elseif specific_question == Q4
        option1 = "(1) I make friends wherever I go, so I have a lot of good friends";
        option2 = "(2) Less than ten, I prefer quality of quantity";
        option3 = "(3) I have different groups of friends that I bounce around";
        option4 = "(4) I have a ton of friends on social media, but only a few I hang out with regularly";
    elseif specific_question == Q5
        option1 = "(1) Going out to dinner with a bunch of friends";
        option2 = "(2) My cough and Netflix";
        option3 = "(3) Going out to a party";
        option4 = "(4) Dinner with my best friend at our favorite restaurant";
    elseif specific_question == Q6
        option1 = "(1) Any time I want to go out I just call and see who is free";
        option2 = "(2) I usually make plans about a week inadvance";
        option3 = "(3) I just show up to a function and see if anyone is out";
        option4 = "(4) I schedule get-togethers as far in advance as possible";
    elseif specific_question == Q7
        option1 = "(1) Red, orange, yellow";
        option2 = "(2) Blue, green";
        option3 = "(3) Pink, purple";
        option4 = "(4) Gray, white, black";
    elseif specific_question == Q8
        option1 = "(1) Dramas with a lot of character development";
        option2 = "(2) True crime shows";
        option3 = "(3) Reality TV";
        option4 = "(4) Anything on HGTV";
    elseif specific_question == Q9
        option1 = "(1) I made plans for us without talking to them first";
        option2 = "(2) I was upset about something from school and didn't want to talk about it";
        option3 = "(3) I was accused of being aloof or distracted during a conversation";
        option4 = "(4) I felt like they were not spending enough time with me";
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

    
