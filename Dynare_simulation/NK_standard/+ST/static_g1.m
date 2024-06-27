function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = ST.static_g1_tt(T, y, x, params);
end
g1 = zeros(13, 13);
g1(1,1)=(-(params(7)*(1-params(1))/(1-params(5))));
g1(1,2)=params(7)*params(4)/(1-params(5));
g1(1,4)=1-(1-params(7)+params(7)*params(1)/(1-params(5)));
g1(1,6)=params(7)/(1-params(5));
g1(2,1)=(-(params(10)*(params(1)+params(18))));
g1(2,2)=(-params(10));
g1(2,3)=1-params(2);
g1(2,4)=params(1)*params(10);
g1(3,3)=(-1)/params(3);
g1(3,11)=1/params(3);
g1(4,1)=1-params(1)-(params(17)*(1+params(18))+(1-params(1))*params(2));
g1(4,2)=(-params(4))-(params(17)-params(4)*params(2));
g1(4,3)=(-((1-params(5))*params(8)));
g1(4,4)=params(17)+params(2)*(1-params(5)-params(1))-(1-params(5)-params(1));
g1(4,6)=(-(1-params(2)*params(13)));
g1(4,11)=(1-params(5))*params(8);
g1(5,5)=1-(1+params(12))*(1-params(14));
g1(5,6)=(-((1+params(12))*(1-params(15))));
g1(6,6)=1-params(13);
g1(7,1)=(-(1-params(1)));
g1(7,4)=(-params(1));
g1(7,7)=1;
g1(8,1)=(-params(18));
g1(8,2)=(-params(3));
g1(8,8)=1;
g1(9,5)=(-params(14));
g1(9,6)=(-params(15));
g1(9,10)=1;
g1(10,3)=(-params(16));
g1(10,11)=1;
g1(11,1)=(-((1-params(1))*T(1)));
g1(11,2)=(-(T(1)*(-params(4))));
g1(11,4)=(-(1+T(1)*(-(1-params(5)-params(1)))));
g1(11,6)=T(1);
g1(11,9)=1;
g1(12,11)=(-4);
g1(12,12)=1;
g1(13,3)=(-4);
g1(13,13)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
