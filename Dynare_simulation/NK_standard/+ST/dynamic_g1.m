function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = ST.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(13, 20);
g1(1,4)=(-(params(7)*(1-params(1))/(1-params(5))));
g1(1,5)=params(7)*params(4)/(1-params(5));
g1(1,1)=(-(1-params(7)+params(7)*params(1)/(1-params(5))));
g1(1,7)=1;
g1(1,9)=params(7)/(1-params(5));
g1(2,4)=(-(params(10)*(params(1)+params(18))));
g1(2,5)=(-params(10));
g1(2,6)=1;
g1(2,19)=(-params(2));
g1(2,1)=params(1)*params(10);
g1(3,5)=1;
g1(3,18)=(-1);
g1(3,19)=(-1)/params(3);
g1(3,14)=1/params(3);
g1(4,4)=1-params(1);
g1(4,17)=(-(params(17)*(1+params(18))+(1-params(1))*params(2)));
g1(4,5)=(-params(4));
g1(4,18)=(-(params(17)-params(4)*params(2)));
g1(4,19)=(-((1-params(5))*params(8)));
g1(4,1)=(-(1-params(5)-params(1)));
g1(4,7)=params(17)+params(2)*(1-params(5)-params(1));
g1(4,9)=(-(1-params(2)*params(13)));
g1(4,14)=(1-params(5))*params(8);
g1(5,2)=(-((1+params(12))*(1-params(14))));
g1(5,8)=1;
g1(5,9)=(-((1+params(12))*(1-params(15))));
g1(6,3)=(-params(13));
g1(6,9)=1;
g1(6,20)=(-1);
g1(7,4)=(-(1-params(1)));
g1(7,1)=(-params(1));
g1(7,10)=1;
g1(8,4)=(-params(18));
g1(8,5)=(-params(3));
g1(8,11)=1;
g1(9,2)=(-params(14));
g1(9,9)=(-params(15));
g1(9,13)=1;
g1(10,6)=(-params(16));
g1(10,14)=1;
g1(11,4)=(-((1-params(1))*T(1)));
g1(11,5)=(-(T(1)*(-params(4))));
g1(11,1)=(-(1+T(1)*(-(1-params(5)-params(1)))));
g1(11,9)=T(1);
g1(11,12)=1;
g1(12,14)=(-4);
g1(12,15)=1;
g1(13,6)=(-4);
g1(13,16)=1;

end
