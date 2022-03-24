
function s_or_i = personality_test(questions, options)
 Q10 = "QUESTION: Which of the following classes are you most likely to take next semester?";
 Q11 = "QUESTION: When writing a paper, do you:";
 Q12 = "QUESTION: If asked to attend a social event, do you:";
 Q13 = "QUESTION: Which of the following appeals to you the most?";
 Q14 = "QUESTION: When you see a wishing well do you throw a penny in and make a wish?";
 Q15 = "QUESTION: If you play a musical instrument (or if you did play one), how do you approach music?";
 Q16 = "QUESTION: When looking for places to eat, which criteria is of most importance?";
 Q17 = "QUESTION: What kinds of books to you enjoy?";
 Q18 = "QUESTION: When eating a new food, do you:";

questions = [Q10,Q11,Q12,Q13,Q14,Q15,Q16,Q17,Q18];

responses = [];

for i = 1:9   
question = questions(i);

if questions(i) == Q10
        options = ['(1) CSCI 1510: Introduction to Cryptography and Computer Security','(2) ANTH 1310: International Health: Anthropological Perspectives','(3) BIOL 1140: Tissue Engineering','(4) CLPS 1680F: Topics in Development: The Developmental and Evolutionary Origins of Mind'];
    elseif questions(i) == Q11
        options = ['(1) Start with a detailed outline','(2) Start writing, and see where it goes','(3) Have a hard time with an initial idea','(4) Have a hard time filling the word count'];
    elseif questions(i) == Q12
        options = ['(1) Analyze the pros and cons of attending before making a decision','(2) Decide to go and deal with consequences after','(3) Decide to stay and feel FOMO (fear of missing out)','(4) Decide to go and regret going'];
    elseif questions(i) == Q13
        options = ['(1) Painting 1','(2) Painting 2','(3) Painting 3','(4) Painting 4'];
    elseif questions(i) == Q14
        options = ['(1) No, but I do fish out some pocket change','(2) Sure, I believe in luck','(3) I guess ... I have spare change','(4) Always, I even have other lucky charms'];
    elseif questions(i) == Q15
        options = ['(1) Music is made through the harmony beats and keys','(2) Music is made through expressive notes, without restriction','(3) Music should follow what the composer had intended it to sound like','(4) Music should be objective and it is fine to put your own twist on pieces'];
    elseif questions(i) == Q16
        options = ['(1) Distance to the place','(2) How good the food looks','(3) Ratings of the place','(4) Your food preference'];
    elseif questions(i) == Q17
        options = [   '(1) Non-fiction ','(2) Fiction','(3) Textbooks','(4) Graphic Novels'];
    elseif questions(i) == Q18
        options = [ '(1) See how others feel about it ','(2) Smell it','(3) Wonder how it would taste','(4) Eat it'];
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

s = sum(W+Y);
i = sum(X+Z);

if s > i
    s_or_i = "S";
elseif I > E
    s_or_i = "I";
end
end

