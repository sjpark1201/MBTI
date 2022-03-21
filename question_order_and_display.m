
%% Question Randomization

% create a vector q from 1 to n where n is the total number of questions

q_order = randperm(n); % create a random permutation of numbers from 1 to n

for i = q_order(1):q_order(end)
    disp(q(i))
end

%% Putting the four letters together

% the lines below are purely for testing 
e_or_i = 'e';
s_or_n = 'n';
t_or_f = 't';
j_or_s = 'j';

MBTI = [e_or_i, s_or_n, t_or_f, j_or_s];
disp(MBTI)