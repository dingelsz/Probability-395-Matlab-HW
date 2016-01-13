function [ pmf ] = poisson_pdf( input_vector, mean )
%--------------------------------------------------------------------------
% FUNCTION: poisson_pdf
%--------------------------------------------------------------------------
%
% DESCRIPTION: Calculate the pmf using a poisson distribution.
%
% INPUT: 
%   input_vector    Vector
%   mean            Scalar
%
% OUTPUT:
%   pmf             Vector
%
%--------------------------------------------------------------------------
pmf = exp( -mean ) * mean .^ input_vector ./ factorial(input_vector)
%--------------------------------------------------------------------------
% END OF FUNCTION
%--------------------------------------------------------------------------
end

