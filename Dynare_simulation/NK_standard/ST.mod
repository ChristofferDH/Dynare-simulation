warning off;

% Variable

var n c pi k b g y w i t r r_ann pi_ann; 
predetermined_variables k, b ;
varexo e_g;

% Parametre

parameters alpha beta sigma gamma_c gamma_c_bar gamma_g delta eta theta lambda_p my_p rho rho_g phi_b phi_g phi_pi omega varphi;

% Parameterværdier

alpha=0.33;
beta=0.99;
gamma_g=0.2;
delta=0.025;
eta=1;
theta=0.75;           
my_p=1.2;
varphi=0.2;
phi_pi=1.5;
sigma=1;
phi_b=0.33;
phi_g=0.10;
rho_g=0.9;


% Indre parameterværdier 

rho= beta^(-1)-1;
gamma_c= (1-gamma_g) - delta*alpha/((rho+delta)*my_p);
gamma_c_bar= gamma_c + gamma_g;
lambda_p= (1-beta*theta)*(1-theta)/theta;

omega= eta*(1-beta*(1-delta))*(1-gamma_c_bar)  ;

model(linear);

% 37
k(+1) = (1-delta+delta*alpha/(1-gamma_c_bar))*k + n*delta*(1-alpha)/(1-gamma_c_bar) - c*delta*gamma_c/(1-gamma_c_bar) - g*delta/(1-gamma_c_bar);

% 38
pi = beta*pi(+1) + lambda_p*c - alpha*lambda_p*k + (alpha + varphi)*lambda_p*n;

% 25
c = c(+1) - (r-pi(+1))/sigma ;

% 40
(1-alpha)*n - gamma_c*c - (1-gamma_c_bar-alpha)*k + (1-gamma_c_bar)*eta*r = (omega*(1+varphi)+beta*(1-alpha))*n(+1)+(omega-beta*gamma_c)*c(+1)- (omega+beta*(1-gamma_c_bar-alpha))*k(+1) + (1-gamma_c_bar)*eta*pi(+1) + (1-beta*rho_g)*g ;

% 36
b(+1)= (1+rho)*(1-phi_b)*b + (1+rho)*(1-phi_g)*g; 

% 22
g=rho_g*g(-1) + e_g;

% 33
y= (1-alpha)*n + alpha*k;

% 29
w = sigma*c + varphi*n;

% 21
t = phi_b*b + phi_g*g;

% 19
r =phi_pi*pi;

% 39
i = k + 1/(1-gamma_c_bar)*((1-alpha)*n - gamma_c*c - g - (1 - gamma_c_bar - alpha)*k);

% Annualiseret rente

r_ann = r * 4;

% Annualiseret inflation
pi_ann = pi * 4;

end;

initval;

n=0;
c=0;
pi=0;
k=0;
b=0;
g=0;
y=0;
r=0;

end;

steady;

shocks;
var e_g=1;
end;

stoch_simul(irf=30, noprint, nograph);