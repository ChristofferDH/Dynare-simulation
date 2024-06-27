function [residual, g1, g2] = dnk_zlb_static(y, x, params)
%
% Status : Computes static model for Dynare
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

residual = zeros( 23, 1);

%
% Model equations
%

zK_TO_Y__ = params(1)*params(2)/(1-params(1)*(1-params(3)))/params(11);
zC_TO_Y__ = (params(11)-1+params(11)*(1/params(1)-1)*zK_TO_Y__+1-params(2))/params(11)-params(17);
zN_SS__ = ((1-params(2))/zC_TO_Y__/params(11)/params(13)/params(21))^(1/(1+params(4)));
zYY_SS__ = zN_SS__*zK_TO_Y__^(params(2)/(1-params(2)));
T159 = (1-params(14))*(1-params(1)*params(14))/params(14)/(1+params(1));
T205 = exp(y(13))/(1/params(1)-(1-params(3)));
lhs =exp(y(5))+exp(y(8));
rhs =exp(y(19)+y(10))+exp(y(8))*(1-params(3)+exp(y(13)+y(23)))+(1-1/exp(y(20)))*exp(y(22))-y(15)*zYY_SS__-zYY_SS__*y(4)+zYY_SS__*y(4)*exp(y(12));
residual(1)= lhs-rhs;
lhs =exp(y(16));
rhs =params(1)*exp(y(16)+y(12)-y(6));
residual(2)= lhs-rhs;
lhs =exp(y(16))*exp(y(18));
rhs =params(1)*exp(y(16))*(exp(y(13)+y(23))+(1-params(3))*exp(y(18)));
residual(3)= lhs-rhs;
lhs =exp(y(19)+y(16)-y(21));
rhs =exp(y(17));
residual(4)= lhs-rhs;
lhs =y(22);
rhs =y(3)+(1-params(2))*y(10)+params(2)*(y(8)+y(23));
residual(5)= lhs-rhs;
lhs =y(22)+log(1-params(2))-y(20)-y(10);
rhs =y(19);
residual(6)= lhs-rhs;
lhs =y(22)+log(params(2))-y(20)-y(8);
rhs =y(13)+y(23);
residual(7)= lhs-rhs;
lhs =y(6)-y(6)*params(12);
rhs =params(1)*(y(6)-y(6)*params(12))-(1-params(7))*(1-params(1)*params(7))/params(7)*(y(20)-log(params(11)));
residual(8)= lhs-rhs;
lhs =y(19);
rhs =y(19)*1/(1+params(1))+(1-1/(1+params(1)))*(y(19)+y(6))-y(6)*(1+params(1)*params(15))/(1+params(1))+y(6)*params(15)/(1+params(1))-T159*(y(21)-log(params(13)));
residual(9)= lhs-rhs;
lhs =y(14);
rhs =y(14)*params(8)+y(6)*(1-params(8))*params(10)+(1-params(8))*params(9)/4*(y(22)-log(zYY_SS__))+(1-params(8))*log(1/params(1));
residual(10)= lhs-rhs;
lhs =exp(y(16));
rhs =y(1)+(1-params(5))/(1-params(1)*params(5))*(1/(exp(y(5))-exp(y(5))*params(5))-params(1)*params(5)/(exp(y(5))-exp(y(5))*params(5)));
residual(11)= lhs-rhs;
lhs =exp(y(17));
rhs =params(21)*exp(y(10))^params(4);
residual(12)= lhs-rhs;
lhs =T205;
rhs =params(16)/(1-params(16))*exp(y(23))+1-params(16)/(1-params(16));
residual(13)= lhs-rhs;
lhs =exp(y(7));
rhs =exp(y(8))-(1-params(3))*exp(y(8));
residual(14)= lhs-rhs;
lhs =exp(y(16))*exp(y(18))*(1-y(9));
rhs =exp(y(16))-params(1)*exp(y(16))*y(9);
residual(15)= lhs-rhs;
residual(16) = y(9);
lhs =zYY_SS__*y(2);
rhs =zYY_SS__*params(17)*(1-params(18))+zYY_SS__*y(2)*params(18)+zYY_SS__*x(2);
residual(17)= lhs-rhs;
lhs =zYY_SS__*y(4)*exp(y(12))+zYY_SS__*y(2);
rhs =y(15)*zYY_SS__+zYY_SS__*y(4);
residual(18)= lhs-rhs;
lhs =y(15)*zYY_SS__;
rhs =zYY_SS__*y(15)*params(24)+(1-params(24))*(zYY_SS__*y(4)*params(22)+zYY_SS__*y(2)*params(23));
residual(19)= lhs-rhs;
lhs =y(1);
rhs =y(1)*params(19)+x(1);
residual(20)= lhs-rhs;
residual(21) = y(6);
residual(22) = y(12);
lhs =y(3);
rhs =y(3)*params(20)+x(3);
residual(23)= lhs-rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
if nargout >= 2,
  g1 = zeros(23, 23);

  %
  % Jacobian matrix
  %

  g1(1,4)=(-((-zYY_SS__)+zYY_SS__*exp(y(12))));
  g1(1,5)=exp(y(5));
  g1(1,8)=exp(y(8))-exp(y(8))*(1-params(3)+exp(y(13)+y(23)));
  g1(1,10)=(-exp(y(19)+y(10)));
  g1(1,12)=(-(zYY_SS__*y(4)*exp(y(12))));
  g1(1,13)=(-(exp(y(8))*exp(y(13)+y(23))));
  g1(1,15)=zYY_SS__;
  g1(1,19)=(-exp(y(19)+y(10)));
  g1(1,20)=(-(exp(y(22))*(-((-exp(y(20)))/(exp(y(20))*exp(y(20)))))));
  g1(1,22)=(-((1-1/exp(y(20)))*exp(y(22))));
  g1(1,23)=(-(exp(y(8))*exp(y(13)+y(23))));
  g1(2,6)=(-(params(1)*(-exp(y(16)+y(12)-y(6)))));
  g1(2,12)=(-(params(1)*exp(y(16)+y(12)-y(6))));
  g1(2,16)=exp(y(16))-params(1)*exp(y(16)+y(12)-y(6));
  g1(3,13)=(-(exp(y(13)+y(23))*params(1)*exp(y(16))));
  g1(3,16)=exp(y(16))*exp(y(18))-params(1)*exp(y(16))*(exp(y(13)+y(23))+(1-params(3))*exp(y(18)));
  g1(3,18)=exp(y(16))*exp(y(18))-params(1)*exp(y(16))*(1-params(3))*exp(y(18));
  g1(3,23)=(-(exp(y(13)+y(23))*params(1)*exp(y(16))));
  g1(4,16)=exp(y(19)+y(16)-y(21));
  g1(4,17)=(-exp(y(17)));
  g1(4,19)=exp(y(19)+y(16)-y(21));
  g1(4,21)=(-exp(y(19)+y(16)-y(21)));
  g1(5,3)=(-1);
  g1(5,8)=(-params(2));
  g1(5,10)=(-(1-params(2)));
  g1(5,22)=1;
  g1(5,23)=(-params(2));
  g1(6,10)=(-1);
  g1(6,19)=(-1);
  g1(6,20)=(-1);
  g1(6,22)=1;
  g1(7,8)=(-1);
  g1(7,13)=(-1);
  g1(7,20)=(-1);
  g1(7,22)=1;
  g1(7,23)=(-1);
  g1(8,6)=1-params(12)-params(1)*(1-params(12));
  g1(8,20)=(1-params(7))*(1-params(1)*params(7))/params(7);
  g1(9,6)=(-(params(15)/(1+params(1))+1-1/(1+params(1))-(1+params(1)*params(15))/(1+params(1))));
  g1(9,19)=1-(1/(1+params(1))+1-1/(1+params(1)));
  g1(9,21)=T159;
  g1(10,6)=(-((1-params(8))*params(10)));
  g1(10,14)=1-params(8);
  g1(10,22)=(-((1-params(8))*params(9)/4));
  g1(11,1)=(-1);
  g1(11,5)=(-((1-params(5))/(1-params(1)*params(5))*((-(exp(y(5))-exp(y(5))*params(5)))/((exp(y(5))-exp(y(5))*params(5))*(exp(y(5))-exp(y(5))*params(5)))-(-(params(1)*params(5)*(exp(y(5))-exp(y(5))*params(5))))/((exp(y(5))-exp(y(5))*params(5))*(exp(y(5))-exp(y(5))*params(5))))));
  g1(11,16)=exp(y(16));
  g1(12,10)=(-(params(21)*exp(y(10))*getPowerDeriv(exp(y(10)),params(4),1)));
  g1(12,17)=exp(y(17));
  g1(13,13)=T205;
  g1(13,23)=(-(params(16)/(1-params(16))*exp(y(23))));
  g1(14,7)=exp(y(7));
  g1(14,8)=(-(exp(y(8))-(1-params(3))*exp(y(8))));
  g1(15,9)=(-(exp(y(16))*exp(y(18))))-(-(params(1)*exp(y(16))));
  g1(15,16)=exp(y(16))*exp(y(18))*(1-y(9))-(exp(y(16))-params(1)*exp(y(16))*y(9));
  g1(15,18)=exp(y(16))*exp(y(18))*(1-y(9));
  g1(16,9)=1;
  g1(17,2)=zYY_SS__-zYY_SS__*params(18);
  g1(18,2)=zYY_SS__;
  g1(18,4)=zYY_SS__*exp(y(12))-zYY_SS__;
  g1(18,12)=zYY_SS__*y(4)*exp(y(12));
  g1(18,15)=(-zYY_SS__);
  g1(19,2)=(-((1-params(24))*zYY_SS__*params(23)));
  g1(19,4)=(-((1-params(24))*zYY_SS__*params(22)));
  g1(19,15)=zYY_SS__-zYY_SS__*params(24);
  g1(20,1)=1-params(19);
  g1(21,6)=1;
  g1(22,12)=1;
  g1(23,3)=1-params(20);
  if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
  end
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],23,529);
end
end
