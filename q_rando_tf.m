function f_or_t = personality_test_f_or_t(questions, options)

Q1 = "If your friend was wearing something you didn't like, would you tell them?";
Q2 = "What is the biggest thing that gets in the way of your work?";
Q3 = "Which statement do you most identify with?";
Q4 = "How do you feel about conflict?";
Q5 = "Which do you value the most?";
Q6 = "When making an important life decision, which do you consider first?";
Q7 = "If you had to pick a game, which one would you choose?";
Q8 = "Is it worse to be:";
Q9 = "Do you value in yourself more that you are:";

questions = [Q1 Q2 Q3 Q4 Q5 Q6 Q7 Q8 Q9];

responses = [];
random_q_bank = [];
r_q_bank = randperm(9);
for num = r_q_bank
    question = questions(num);
    random_q_bank = [random_q_bank question];
end


for i = 1:9
    question = random_q_bank(i);
    if question == Q1
        options = ["No, I would still tell them I like it" "Definitely, if the tables were turned, I would want to know" "Probably not, I wouldn't want to hurt their feelings" "Yes, if their clothes were stained, ripped, or didn't fit properly"];
    elseif question == Q2
        options = ["I hold a grudge and have a hard time letting things go" "I am a stickler for the rules" "I let my emotions disrupt my workflow" "I can be too technical about things"];
    elseif question == Q3
        options = ["When there is conflict around me, I feel unbalanced or 'off'" "I hate lying and value the truth above all else" "Before making a decision I like to talk with everyone involved" "I enjoy doing highly technical or scientific work"];
    elseif question == Q4
        options = ["I avoid it all costs, it makes me feel very uncomfortable" "It's a necessary part of life that can be handled" "I don't like it, but can hold my own in an argument" "I welcome it, since conflict often results in a solution"];
    elseif question == Q5
        options = ["Harmony" "Truth" "Relationships" "Logic"];
    elseif question == Q6
        options = ["My personal feelings" "Which of the possible outcomes would make the most sense" "My career goals" "What is best for my friends and famlily"];
    elseif question == Q7
        options = ["Charades" "Chess" "Truth or dare" "Monopoly"];
    elseif question == Q8
        options = ["Merciless" "Unjust" "Heartless" "Biased"];
    else question == Q9
        options = ["Devoted" "Unwavering" "Admiring" "Steadfast"];
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