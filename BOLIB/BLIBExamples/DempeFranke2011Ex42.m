function w=DempeFranke2011Ex42(x,y,keyf,keyxy)
% This file provides all functions defining DempeFranke2011Ex42 problem 
% and their first and second order derivatives.
% [dim_x dim_y dim_G dim_g] = [2 2 4 3]


if nargin<4 || isempty(keyxy)
    switch keyf
    case 'F'; w = x(1)+sum((y-[1;0]).^2);
    case 'G'; w = [-1-x(1);-1+x(1);-1-x(2);1+x(2)]; 
    case 'f'; w = x'*y;      
    case 'g'; w = [-y(1)+y(2)-1; y(1)+y(2)-3.5; y(2)-2];  
    end    
else
    switch keyf
    case 'F'
        switch keyxy
        case 'x' ; w = [1;0];         
        case 'y' ; w = 2*(y-[1;0]);        
        case 'xx'; w = zeros(2);
        case 'xy'; w = zeros(2);
        case 'yy'; w = 2*eye(2);
        end 
    case 'G'  
        switch keyxy
        case 'x' ; w = [-1 0; 1 0; 0 -1; 0 1];    
        case 'y' ; w = zeros(4,2);      
        case 'xx'; w = zeros(8,2);
        case 'xy'; w = zeros(8,2);
        case 'yy'; w = zeros(8,2);
        end           
	case 'f'   
        switch keyxy
        case 'x' ; w = y;    
        case 'y' ; w = x;          
        case 'xx'; w = zeros(2);
        case 'xy'; w = eye(2);
        case 'yy'; w = 2*eye(2);
        end           
	case 'g'   
        switch keyxy
        case 'x' ; w = zeros(3,2); 
        case 'y' ; w = [-1 1; 1 1; 0 1];              
        case 'xx'; w = zeros(6,2);
        case 'xy'; w = zeros(6,2);
        case 'yy'; w = zeros(6,2);
        end        
   end   
end

end


