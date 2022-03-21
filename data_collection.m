%% Data Collection

% Percentage: For E & I Characteristics

% Percentage: For S & N Characteristics

% Percentage: For T & F Characteristics 

% Percentage: For J & P Characteristics 

    W = responses(:) == 'a';
    X = responses(:) == 'b';
    Y = responses(:) == 'c';
    Z = responses(:) == 'd';

    J = sum(W+Y); % choices a and c describe people with judging characteristics 
    P = sum(X+Z); % choices b and d describe people with perceiving characteristics 

    percentage_value_j = J/10 * 100;
    percentage_value_p = P/10 * 100;

    percentage_j = [percentage_value_j, '%'];
    percentage_p = [percentage_value_p, '%'];








