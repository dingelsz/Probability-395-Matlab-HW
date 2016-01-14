function [ pmf ] = uniform_pdf( input_vector, lower_bound, upper_bound )
%--------------------------------------------------------------------------
% FUNCTION: uniform_pdf
%--------------------------------------------------------------------------
%
% DESCRIPTION: Calculate the pmf using a uniform distribution.
%
% INPUT: 
%   input_vector    Vector
%   lower_bound     Scalar
%   upper_bounds    Scalar
%
% OUTPUT:
%   pmf             Vector
%
%--------------------------------------------------------------------------
% Bounds check!
a = lower_bound;
b = upper_bound;
if upper_bound < lower_bound
    a = upper_bound;
    b = lower_bound;
end

% Preallocate the pmf variable
pmf = zeros( 1, length( input_vector ) );

% Save the value instead of computing it every time it's needed
value = 1 ./ ( b - a ); 

% Remove any values are outside of the bounds then change them to 0
i = 1;
for elem = input_vector
   if elem > a && elem < b
       pmf(i) = value;
   else
       pmf(i) = 0;
   end
   i = i + 1;
end
%--------------------------------------------------------------------------
% END OF FUNCTION
%--------------------------------------------------------------------------
end

