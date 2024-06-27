warning off;

% Standardmodellen

% Variable

var
a_c
a_g
a_z
b
c
dp
ik 
k
mack
n
p
r
rk
rnot
tax
uc
un
vk
w
xp
xw
y
zk ;

varexo 
eps_c
eps_g
eps_z;

% Parametre

parameters BETA ALPHA DK ETA EC FIK 
TETAP phi_r phi_y phi_pi  XP_SS LAGP 
 XW_SS TETAW LAGW ZETAK GBAR
RHO_AG RHO_AC RHO_AZ TAU ETAXB ETAXG RHOTAX YY_SS  ;

model;

# zK_TO_Y = BETA*ALPHA/(1-BETA*(1-DK))/XP_SS ;
# zC_TO_Y = (XP_SS-1+(1/BETA-1)*zK_TO_Y*XP_SS+(1-ALPHA))/XP_SS - GBAR  ;
# zN_SS = ((1-ALPHA)/(zC_TO_Y)/XP_SS/XW_SS/TAU)^(1/(1+ETA)) ;
# zYY_SS = (zN_SS) *  zK_TO_Y^(ALPHA/(1-ALPHA)) ;

% A1
exp(c) + exp(k) = exp(w+n)  + (exp(rk+zk)+(1-DK))*exp(k(-1)) + (1-1/exp(xp))*exp(y) - tax*zYY_SS
- b*zYY_SS + exp(r(-1))*b(-1)*zYY_SS ;

% A2
exp(uc) = BETA*exp(r-dp(+1)+uc(+1)) ;

% A3
exp(uc)*exp(vk) = BETA * exp(uc(+1)) * ( exp(rk(+1)+zk(+1)) + (1-DK)*exp(vk(+1)) )  ;

% A4
exp(w+uc-xw) = exp(un) ;

% A5
y =a_z + (1-ALPHA)*n + ALPHA*(k(-1)+zk) ;

% A6
log(1-ALPHA) + y - xp - n = w ;

% A7
log(ALPHA) + y - xp - k(-1) = rk + zk ;

% A8
dp - LAGP*dp(-1) = BETA*(dp(1) - LAGP*dp) -
((1-TETAP)*(1-BETA*TETAP)/TETAP)*(xp-log(XP_SS))  ;
				  
% A9
w = (1/(1+BETA))*(w(-1)) + (1-(1/(1+BETA)))*(w(1)+dp(+1))  
- (1+BETA*LAGW)/(1+BETA)*dp + LAGW/(1+BETA)*dp(-1) 
- ((1-TETAW)*(1-BETA*TETAW)/TETAW)/(1+BETA)*(xw-log(XW_SS))  ;

% A10
rnot = phi_r*rnot(-1) + (1-phi_r)*(phi_pi)*dp + (1-phi_r)*phi_y/4*(y-log(zYY_SS)) 
+ (1-phi_r)*log(1/BETA) ; 

% A11
exp(uc) = a_c + ((1-EC)/(1-BETA*EC))*(1/(exp(c)-EC*exp(c(-1))) - BETA*EC/(exp(c(+1))-EC*exp(c)));

% A12
exp(un) =  TAU*exp(n)^(ETA) ;

% A13
exp(rk) / ( (1/BETA)-(1-DK) ) = ZETAK/(1-ZETAK)*exp(zk) + (1-ZETAK/(1-ZETAK));

% A14
exp(ik) = exp(k) - (1-DK)*exp(k(-1)) ;

% A15
exp(uc)*exp(vk)*(1-mack) = exp(uc) - BETA * exp(uc(+1))*(mack(+1)) ; 

mack = FIK*(exp(ik)-exp(ik(-1))) ;

% A16-A18
a_g*zYY_SS = (1-RHO_AG)*GBAR*zYY_SS + RHO_AG*a_g(-1)*zYY_SS + eps_g*zYY_SS ;
a_g*zYY_SS + exp(r(-1))*b(-1)*zYY_SS = tax*zYY_SS + b*zYY_SS ;
tax*zYY_SS = RHOTAX*tax(-1)*zYY_SS + (1-RHOTAX)*(ETAXB*b(-1)*zYY_SS + ETAXG*a_g*zYY_SS) ;

% A19
a_c = RHO_AC * a_c(-1) + eps_c ;

% Ekstra definitioner
dp = p - p(-1) ;

r = rnot;

% Persistens fra stød til z (bruges ikke)
a_z = RHO_AZ * a_z(-1) + eps_z ;

end ;


steady;

//resid(1);

shocks;
var eps_c ; stderr 0.01  ;
var eps_g ; stderr 0.01  ;
var eps_z ; stderr 0.01  ;
end;

stoch_simul(order=1,irf=0,periods=1000)   ;
