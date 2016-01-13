function [ pmf ] = normal_pdf( input_vector, mean, standard_deviation )
%--------------------------------------------------------------------------
% FUNCTION: normal_pdf
%--------------------------------------------------------------------------
%
% DESCRIPTION: Calculate the pmf using a normal distribution.
%
% INPUT: 
%   input_vector        Vector
%   mean                Scalar
%   standard_deviation  Scalar
%
% OUTPUT:
%   pmf                 Vector
%
%--------------------------------------------------------------------------

pmf = 1 ./ sqrt( 2 * pi * standard_deviation ) * exp( ...
    -1 / 2 * ( ( input_vector - mean ) ./ sqrt(standard_deviation) ) .^ 2 )

%--------------------------------------------------------------------------
% END OF FUNCTION
%--------------------------------------------------------------------------
end

