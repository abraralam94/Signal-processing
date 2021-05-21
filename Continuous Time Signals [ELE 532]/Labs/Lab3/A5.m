
function A5(Dn, omega0) % A5 function will accept a filled Dn array, and 
%                           associated omega0 as input
                       
    t=[-300:1:300];
    x10 = zeros(size(t));
    
    for n = 1:(((length(Dn)-1)/2) + 1),
        x10 = x10+real(Dn(1,n)*exp(1j*omega0*(n-(((length(Dn)-1)/2) + 1))*t));
    end
    
    for n = (((length(Dn)-1)/2) + 2):length(Dn),
        x10 = x10+real(Dn(1,n)*exp(1j*omega0*(n-(((length(Dn)-1)/2) + 1))*t));
    end
    
    plot(t,x10,'k'); xlabel('t'); ylabel('x_{10}(t)');     
end


