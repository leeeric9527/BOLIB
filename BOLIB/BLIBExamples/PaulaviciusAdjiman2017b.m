function w=PaulaviciusAdjiman2017b(x,y,keyf,keyxy)
% This file provides all functions defining PaulaviciusAdjiman2017b problem 
% and their first and second order derivatives.
% [dim_x dim_y dim_G dim_g] = [1 1 4 2]

 
 
if nargin<4 || isempty(keyxy)
    switch keyf
    case 'F'; w = x+y;
    case 'G'; w = [-x-1; x-1; -y-1; y-1]; 
    case 'f'; w = .5*x*y^2-(x^3)*y;
    case 'g'; w = [-y-1; y-1];    
    end    
else
    switch keyf
    case 'F'
        switch keyxy
        case 'x' ; w = 1;         
        case 'y' ; w = 1;         
        case 'xx'; w = 0;
        case 'xy'; w = 0;
        case 'yy'; w = 0;
        end 
    case 'G'  
        switch keyxy            
        case 'x' ; w = [-1; 1; 0; 0];    
        case 'y' ; w = [ 0; 0; -1; 1];         
        case 'xx'; w =  zeros(4,1);  
        case 'xy'; w =  zeros(4,1);  
        case 'yy'; w =  zeros(4,1); 
        end           
	case 'f'   
        switch keyxy
        case 'x' ; w = 0.5*y^2-3*(x^2)*y;    
        case 'y' ; w = x*y-x^3;     
        case 'xx'; w = -6*x*y;
        case 'xy'; w = y-3*x^2;
        case 'yy'; w = x;
        end           
	case 'g'   
        switch keyxy
        case 'x' ; w = [ 0; 0];
        case 'y' ; w = [-1; 1];            
        case 'xx'; w =  zeros(2,1);  
        case 'xy'; w =  zeros(2,1);   
        case 'yy'; w =  zeros(2,1);
        end        
   end   
end

end


