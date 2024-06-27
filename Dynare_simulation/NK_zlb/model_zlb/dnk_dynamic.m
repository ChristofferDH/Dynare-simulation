function [residual, g1, g2, g3] = dnk_dynamic(y, x, params, steady_state, it_)
%
% Status : Computes dynamic model for Dynare
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

%
% Model equations
%

residual = zeros(23, 1);
zK_TO_Y__ = params(1)*params(2)/(1-params(1)*(1-params(3)))/params(11);
zC_TO_Y__ = (params(11)-1+params(11)*(1/params(1)-1)*zK_TO_Y__+1-params(2))/params(11)-params(17);
zN_SS__ = ((1-params(2))/zC_TO_Y__/params(11)/params(13)/params(21))^(1/(1+params(4)));
zYY_SS__ = zN_SS__*zK_TO_Y__^(params(2)/(1-params(2)));
T177 = (1-params(14))*(1-params(1)*params(14))/params(14)/(1+params(1));
T209 = (1-params(5))/(1-params(1)*params(5));
T230 = exp(y(26))/(1/params(1)-(1-params(3)));
lhs =exp(y(18))+exp(y(21));
rhs =exp(y(32)+y(23))+(1-params(3)+exp(y(26)+y(36)))*exp(y(8))+(1-1/exp(y(33)))*exp(y(35))-y(28)*zYY_SS__-zYY_SS__*y(17)+zYY_SS__*exp(y(10))*y(4);
residual(1)= lhs-rhs;
lhs =exp(y(29));
rhs =params(1)*exp(y(25)-y(38)+y(41));
residual(2)= lhs-rhs;
lhs =exp(y(29))*exp(y(31));
rhs =params(1)*exp(y(41))*(exp(y(40)+y(44))+(1-params(3))*exp(y(42)));
residual(3)= lhs-rhs;
lhs =exp(y(32)+y(29)-y(34));
rhs =exp(y(30));
residual(4)= lhs-rhs;
lhs =y(35);
rhs =y(16)+(1-params(2))*y(23)+params(2)*(y(36)+y(8));
residual(5)= lhs-rhs;
lhs =y(35)+log(1-params(2))-y(33)-y(23);
rhs =y(32);
residual(6)= lhs-rhs;
lhs =y(35)+log(params(2))-y(33)-y(8);
rhs =y(26)+y(36);
residual(7)= lhs-rhs;
lhs =y(19)-params(12)*y(6);
rhs =params(1)*(y(38)-y(19)*params(12))-(1-params(7))*(1-params(1)*params(7))/params(7)*(y(33)-log(params(11)));
residual(8)= lhs-rhs;
lhs =y(32);
rhs =1/(1+params(1))*y(13)+(1-1/(1+params(1)))*(y(38)+y(43))-y(19)*(1+params(1)*params(15))/(1+params(1))+y(6)*params(15)/(1+params(1))-T177*(y(34)-log(params(13)));
residual(9)= lhs-rhs;
lhs =y(27);
rhs =params(8)*y(11)+y(19)*(1-params(8))*params(10)+(1-params(8))*params(9)/4*(y(35)-log(zYY_SS__))+(1-params(8))*log(1/params(1));
residual(10)= lhs-rhs;
lhs =exp(y(29));
rhs =y(14)+T209*(1/(exp(y(18))-params(5)*exp(y(5)))-params(1)*params(5)/(exp(y(37))-exp(y(18))*params(5)));
residual(11)= lhs-rhs;
lhs =exp(y(30));
rhs =params(21)*exp(y(23))^params(4);
residual(12)= lhs-rhs;
lhs =T230;
rhs =params(16)/(1-params(16))*exp(y(36))+1-params(16)/(1-params(16));
residual(13)= lhs-rhs;
lhs =exp(y(20));
rhs =exp(y(21))-(1-params(3))*exp(y(8));
residual(14)= lhs-rhs;
lhs =exp(y(29))*exp(y(31))*(1-y(22));
rhs =exp(y(29))-params(1)*exp(y(41))*y(39);
residual(15)= lhs-rhs;
lhs =y(22);
rhs =params(6)*(exp(y(20))-exp(y(7)));
residual(16)= lhs-rhs;
lhs =zYY_SS__*y(15);
rhs =zYY_SS__*params(17)*(1-params(18))+zYY_SS__*params(18)*y(2)+zYY_SS__*x(it_, 2);
residual(17)= lhs-rhs;
lhs =zYY_SS__*exp(y(10))*y(4)+zYY_SS__*y(15);
rhs =y(28)*zYY_SS__+zYY_SS__*y(17);
residual(18)= lhs-rhs;
lhs =y(28)*zYY_SS__;
rhs =zYY_SS__*params(24)*y(12)+(1-params(24))*(zYY_SS__*y(4)*params(22)+zYY_SS__*y(15)*params(23));
residual(19)= lhs-rhs;
lhs =y(14);
rhs =params(19)*y(1)+x(it_, 1);
residual(20)= lhs-rhs;
lhs =y(19);
rhs =y(24)-y(9);
residual(21)= lhs-rhs;
lhs =y(25);
rhs =y(27);
residual(22)= lhs-rhs;
lhs =y(16);
rhs =params(20)*y(3)+x(it_, 3);
residual(23)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(23, 47);

  %
  % Jacobian matrix
  %

  g1(1,4)=(-(zYY_SS__*exp(y(10))));
  g1(1,17)=zYY_SS__;
  g1(1,18)=exp(y(18));
  g1(1,8)=(-((1-params(3)+exp(y(26)+y(36)))*exp(y(8))));
  g1(1,21)=exp(y(21));
  g1(1,23)=(-exp(y(32)+y(23)));
  g1(1,10)=(-(zYY_SS__*exp(y(10))*y(4)));
  g1(1,26)=(-(exp(y(26)+y(36))*exp(y(8))));
  g1(1,28)=zYY_SS__;
  g1(1,32)=(-exp(y(32)+y(23)));
  g1(1,33)=(-(exp(y(35))*(-((-exp(y(33)))/(exp(y(33))*exp(y(33)))))));
  g1(1,35)=(-((1-1/exp(y(33)))*exp(y(35))));
  g1(1,36)=(-(exp(y(26)+y(36))*exp(y(8))));
  g1(2,38)=(-(params(1)*(-exp(y(25)-y(38)+y(41)))));
  g1(2,25)=(-(params(1)*exp(y(25)-y(38)+y(41))));
  g1(2,29)=exp(y(29));
  g1(2,41)=(-(params(1)*exp(y(25)-y(38)+y(41))));
  g1(3,40)=(-(params(1)*exp(y(41))*exp(y(40)+y(44))));
  g1(3,29)=exp(y(29))*exp(y(31));
  g1(3,41)=(-(params(1)*exp(y(41))*(exp(y(40)+y(44))+(1-params(3))*exp(y(42)))));
  g1(3,31)=exp(y(29))*exp(y(31));
  g1(3,42)=(-(params(1)*exp(y(41))*(1-params(3))*exp(y(42))));
  g1(3,44)=(-(params(1)*exp(y(41))*exp(y(40)+y(44))));
  g1(4,29)=exp(y(32)+y(29)-y(34));
  g1(4,30)=(-exp(y(30)));
  g1(4,32)=exp(y(32)+y(29)-y(34));
  g1(4,34)=(-exp(y(32)+y(29)-y(34)));
  g1(5,16)=(-1);
  g1(5,8)=(-params(2));
  g1(5,23)=(-(1-params(2)));
  g1(5,35)=1;
  g1(5,36)=(-params(2));
  g1(6,23)=(-1);
  g1(6,32)=(-1);
  g1(6,33)=(-1);
  g1(6,35)=1;
  g1(7,8)=(-1);
  g1(7,26)=(-1);
  g1(7,33)=(-1);
  g1(7,35)=1;
  g1(7,36)=(-1);
  g1(8,6)=(-params(12));
  g1(8,19)=1-params(1)*(-params(12));
  g1(8,38)=(-params(1));
  g1(8,33)=(1-params(7))*(1-params(1)*params(7))/params(7);
  g1(9,6)=(-(params(15)/(1+params(1))));
  g1(9,19)=(1+params(1)*params(15))/(1+params(1));
  g1(9,38)=(-(1-1/(1+params(1))));
  g1(9,13)=(-(1/(1+params(1))));
  g1(9,32)=1;
  g1(9,43)=(-(1-1/(1+params(1))));
  g1(9,34)=T177;
  g1(10,19)=(-((1-params(8))*params(10)));
  g1(10,11)=(-params(8));
  g1(10,27)=1;
  g1(10,35)=(-((1-params(8))*params(9)/4));
  g1(11,14)=(-1);
  g1(11,5)=(-(T209*params(5)*exp(y(5))/((exp(y(18))-params(5)*exp(y(5)))*(exp(y(18))-params(5)*exp(y(5))))));
  g1(11,18)=(-(T209*((-exp(y(18)))/((exp(y(18))-params(5)*exp(y(5)))*(exp(y(18))-params(5)*exp(y(5))))-(-(params(1)*params(5)*(-(exp(y(18))*params(5)))))/((exp(y(37))-exp(y(18))*params(5))*(exp(y(37))-exp(y(18))*params(5))))));
  g1(11,37)=(-(T209*(-((-(params(1)*params(5)*exp(y(37))))/((exp(y(37))-exp(y(18))*params(5))*(exp(y(37))-exp(y(18))*params(5)))))));
  g1(11,29)=exp(y(29));
  g1(12,23)=(-(params(21)*exp(y(23))*getPowerDeriv(exp(y(23)),params(4),1)));
  g1(12,30)=exp(y(30));
  g1(13,26)=T230;
  g1(13,36)=(-(params(16)/(1-params(16))*exp(y(36))));
  g1(14,20)=exp(y(20));
  g1(14,8)=(1-params(3))*exp(y(8));
  g1(14,21)=(-exp(y(21)));
  g1(15,22)=(-(exp(y(29))*exp(y(31))));
  g1(15,39)=params(1)*exp(y(41));
  g1(15,29)=exp(y(29))*exp(y(31))*(1-y(22))-exp(y(29));
  g1(15,41)=params(1)*exp(y(41))*y(39);
  g1(15,31)=exp(y(29))*exp(y(31))*(1-y(22));
  g1(16,7)=(-(params(6)*(-exp(y(7)))));
  g1(16,20)=(-(exp(y(20))*params(6)));
  g1(16,22)=1;
  g1(17,2)=(-(zYY_SS__*params(18)));
  g1(17,15)=zYY_SS__;
  g1(17,46)=(-zYY_SS__);
  g1(18,15)=zYY_SS__;
  g1(18,4)=zYY_SS__*exp(y(10));
  g1(18,17)=(-zYY_SS__);
  g1(18,10)=zYY_SS__*exp(y(10))*y(4);
  g1(18,28)=(-zYY_SS__);
  g1(19,15)=(-((1-params(24))*zYY_SS__*params(23)));
  g1(19,4)=(-((1-params(24))*zYY_SS__*params(22)));
  g1(19,12)=(-(zYY_SS__*params(24)));
  g1(19,28)=zYY_SS__;
  g1(20,1)=(-params(19));
  g1(20,14)=1;
  g1(20,45)=(-1);
  g1(21,19)=1;
  g1(21,9)=1;
  g1(21,24)=(-1);
  g1(22,25)=1;
  g1(22,27)=(-1);
  g1(23,3)=(-params(20));
  g1(23,16)=1;
  g1(23,47)=(-1);
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],23,2209);
end
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],23,103823);
end
end
