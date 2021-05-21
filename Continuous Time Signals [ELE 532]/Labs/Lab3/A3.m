function Dn_array = A3()% This function calculates the Dns from a user specified range given by user
               % This function uses X3(t) Dn expression for demonstration
   
    prompt = 'What is the upper limit of Dn? ';% Ask user to enter the upper range
    % ie, if we want Dn from -5 to 5, we enter 5.
    x = input(prompt);
    n = (-x:x);
    D_n = (1/4) * (sin((pi/4.0)*n)./((pi/4.0)*n)); %our X_3(t) Dn expression 
    %                                               has been used to test this function

    D_n(1,x+1) = 1/4.0;   % index = (1, given upper bound+1)

    Dn_array = D_n;
 
end