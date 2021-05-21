function Dn_array = A3_X1()% This function calculates the Dns from a user specified range given by user
               % This function uses X3(t) Dn expression for demonstration
   
    prompt = 'What is the upper limit of Dn? ';% Ask user to enter the upper range
    % ie, if we want Dn from -5 to 5, we enter 5.
    x = input(prompt);
    n = (-x:x);
    
    D_n = zeros([1 2*x+1]);
    
    D_n(1, (x+1)-3) = 1.0/2.0;
    D_n(1, (x+1)+3) = 1.0/2.0;
    D_n(1, (x+1)-1) = (1.0/4.0)*j;
    D_n(1, (x+1)+1) = (-1.0/4.0)*j;
    Dn_array = D_n;
 
end