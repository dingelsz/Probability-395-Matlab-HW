function [ pmf ] = binomial_pdf( input_vector, sample_size, p_success )
%--------------------------------------------------------------------------
% FUNCTION: binomial_pdf
%--------------------------------------------------------------------------
%
% DESCRIPTION: Calculate the pmf using a binomial distribution.
%
% INPUT: 
%   input_vector    Vector
%   sample_size     Scalar
%   mean            Scalar
%
% OUTPUT:
%   pmf             Vector
%
%--------------------------------------------------------------------------
i = 1;
for x = input_vector
    pmf(i) = nchoosek(sample_size, x) * p_success .^ x ...
           * (1 - p_success ) .^(sample_size - x);
    i = i + 1;
end
%--------------------------------------------------------------------------
% END OF FUNCTION
%--------------------------------------------------------------------------
end

