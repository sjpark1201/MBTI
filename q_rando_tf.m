function f_or_t = personality_test_f_or_t(questions, options)

Q1 = "QUESTION: If your friend was wearing something you didn't like, would you tell them?";
Q2 = "QUESTION: What is the biggest thing that gets in the way of your work?";
Q3 = "QUESTION: Which statement do you most identify with?";
Q4 = "QUESTION: How do you feel about conflict?";
Q5 = "QUESTION: Which do you value the most?";
Q6 = "QUESTION: When making an important life decision, which do you consider first?";
Q7 = "QUESTION: If you had to pick a game, which one would you choose?";
Q8 = "QUESTION: Is it worse to be:";
Q9 = "QUESTION: Do you value in yourself more that you are:";

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
    if specific_question == Q1
        option1 = '(1) No, I would still tell them I like it';
        option2 = '(2) Definitely, if the tables were turned, I would want to know';
        option3 = '(3) Probably not, I wouldn't want to hurt their feelings';
        option4 = '(4) Yes, if their clothes were stained, ripped, or didn't fit properly';
    elseif specific_question == Q2
        option1 = 'I hold a grudge and have a hard time letting things go';
        option2 = 'I am a stickler for the rules';
        option3 = 'I let my emotions disrupt my workflow';
        option4 = 'I can be too technical about things';
    elseif specific_question == Q3
        option1 = 'When there is conflict around me, I feel unbalanced or 'off'';
        option2 = 'I hate lying and value the truth above all else';
        option3 = 'Before making a decision I like to talk with everyone involved';
        option4 = 'I enjoy doing highly technical or scientific work';
    elseif specfici_question == Q4
        option1 = '(1) I avoid it all costs, it makes me feel very uncomfortable';
        option2 = '(2) It's a necessary part of life that can be handled';
        option3 = '(3) I don't like it, but can hold my own in an argument';
        option4 = '(4) I welcome it, since conflict often results in a solution';
    elseif specific_question == Q5
        option1 = '(1) Harmony';
        option2 = '(2) Truth';
        option3 = '(3) Relationships';
        option4 = '(4) Logic';
    elseif specific_question == Q6
        option1 = '(1) My personal feelingss';
        option2 = '(2) The outcome that makes the most sense';
        option3 = '(3) My career goals';
        option4 = '(4) What is best for my friends and family';
    elseif specific_question == Q7
        option1 = '(1) Charades';
        option2 = '(2) Chess';
        option3 = '(3) Truth or dare';
        option4 = '(4) Monopoly';
    elseif specific_question == Q8
        option1 = '(1) Merciless';
        option2 = '(2) Unjust';
        option3 = '(3) Heartless';
        option4 = '(4) Biased';
    else sppecific_question == Q9
        option1 = '(1) Devoted';
        option2 = '(2) Unwavering';
        option3 = '(3) Admiring';
        option4 = '(4) Steadfast';
    end

    UIControl_FontSize_bak = get(0, 'DefaultUicontrolFontSize');
    set(0, 'DefaultUIControlFontSize', 18);
    choice = menu(question, options);
    set(0, 'DefaultUIControlFontSize', UIControl_FontSize_bak);
    disp("You Chose" + " " + options(choice));

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

W = responses(:) == 'a';
X = responses(:) == 'b';
Y = responses(:) == 'c';
Z = responses(:) == 'd';

F = sum(W+Y);
T = sum(X+Z);

if F > T
    f_or_t = 'F';
elseif T > F
    f_or_t = 'T';
end

q_bank = [Q1 Q2 Q3 Q4 Q5 Q6 Q7 Q8 Q9];
cookie = randperm(9)
for num = cookie
    q_bank(num)
end
