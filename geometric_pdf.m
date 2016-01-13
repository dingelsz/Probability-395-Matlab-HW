function [ pmf ] = geometric_pdf( input_vector, p_success )
%--------------------------------------------------------------------------
% FUNCTION: geometric_pdf
%--------------------------------------------------------------------------
%
% DESCRIPTION: Calculate the pmf using a geometric distribution.
%
% INPUT: 
%   input_vector    Vector
%   p_success       Scalar
%
% OUTPUT:
%   pmf             Vector
%
%--------------------------------------------------------------------------
pmf = ( 1 - p_success ) .^ (input_vector - 1) * p_success
%--------------------------------------------------------------------------
% END OF FUNCTION
%--------------------------------------------------------------------------
end

