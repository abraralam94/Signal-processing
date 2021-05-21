clf; 
    prompt = 'What is the upper limit of Dn? ';% Ask user to enter the upper range
    % ie, if we want Dn from -5 to 5, we enter 5.
    x = input(prompt);
    n = (-x:x);
    
    D_n = zeros([1 2*x+1]);
    
    D_n(1, (x+1)-3) = 1.0/2.0;
    D_n(1, (x+1)+3) = 1.0/2.0;
    D_n(1, (x+1)-1) = (1.0/4.0)*j;
    D_n(1, (x+1)+1) = (-1.0/4.0)*j;

    subplot(1,2,1); stem(n,abs(D_n),'.k');
    xlabel('n'); ylabel('|D_n|');
    subplot(1,2,2); stem(n,angle(D_n),'.k');
    xlabel('n'); ylabel('\angle D_n [rad]');
    clear all;