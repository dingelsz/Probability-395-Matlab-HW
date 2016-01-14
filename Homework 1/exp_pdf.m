function [ pmf ] = exp_pdf( input_vector, mean )
%--------------------------------------------------------------------------
% FUNCTION: exp_pdf
%--------------------------------------------------------------------------
%
% DESCRIPTION: Calculate the pmf using an exponential distribution.
%
% INPUT: 
%   input_vector        Vector
%   mean                Scalar
%
% OUTPUT:
%   pmf                 Vector
%
%--------------------------------------------------------------------------
% Check for a positive mean. 
if mean < 0
    error(' ERROR - mean variable passed into exp_pdf must be greater then 0' )
end

pmf = mean * exp( - mean * input_vector )

% Must have valid pmf! Remove any crazy values.
i = 1;
for elem = pmf
    if elem > 1
        pmf(i) = 0;
    end
    i = i + 1;
end

%--------------------------------------------------------------------------
% END OF FUNCTION
%--------------------------------------------------------------------------
end

