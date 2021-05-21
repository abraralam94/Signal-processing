function A4_X3()% This function calculates the Dns from a user specified range given by user
               % This function uses X3(t) Dn expression for demonstration
    clf; 
    prompt = 'What is the upper limit of Dn? ';% Ask user to enter the upper range
    % ie, if we want Dn from -5 to 5, we enter 5.
    x = input(prompt);
    n = (-x:x);
    D_n = (1/4) * (sin((pi/4.0)*n)./((pi/4.0)*n)); %our X_2(t) Dn expression 
                                                   
    D_n(1,x+1) = 1/4.0;   % our D0 index, index = (1, given upper bound+1)

    subplot(1,2,1); stem(n,abs(D_n),'.k');
    xlabel('n'); ylabel('|D_n|');
    subplot(1,2,2); stem(n,angle(D_n),'.k');
    xlabel('n'); ylabel('\angle D_n [rad]');
    clear all;