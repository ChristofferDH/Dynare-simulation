%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

if isoctave || matlab_ver_less_than('8.6')
    clear all
else
    clearvars -global
    clear_persistent_variables(fileparts(which('dynare')), false)
end
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'ST';
M_.dynare_version = '5.0';
oo_.dynare_version = '5.0';
options_.dynare_version = '5.0';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(1,1);
M_.exo_names_tex = cell(1,1);
M_.exo_names_long = cell(1,1);
M_.exo_names(1) = {'e_g'};
M_.exo_names_tex(1) = {'e\_g'};
M_.exo_names_long(1) = {'e_g'};
M_.endo_names = cell(13,1);
M_.endo_names_tex = cell(13,1);
M_.endo_names_long = cell(13,1);
M_.endo_names(1) = {'n'};
M_.endo_names_tex(1) = {'n'};
M_.endo_names_long(1) = {'n'};
M_.endo_names(2) = {'c'};
M_.endo_names_tex(2) = {'c'};
M_.endo_names_long(2) = {'c'};
M_.endo_names(3) = {'pi'};
M_.endo_names_tex(3) = {'pi'};
M_.endo_names_long(3) = {'pi'};
M_.endo_names(4) = {'k'};
M_.endo_names_tex(4) = {'k'};
M_.endo_names_long(4) = {'k'};
M_.endo_names(5) = {'b'};
M_.endo_names_tex(5) = {'b'};
M_.endo_names_long(5) = {'b'};
M_.endo_names(6) = {'g'};
M_.endo_names_tex(6) = {'g'};
M_.endo_names_long(6) = {'g'};
M_.endo_names(7) = {'y'};
M_.endo_names_tex(7) = {'y'};
M_.endo_names_long(7) = {'y'};
M_.endo_names(8) = {'w'};
M_.endo_names_tex(8) = {'w'};
M_.endo_names_long(8) = {'w'};
M_.endo_names(9) = {'i'};
M_.endo_names_tex(9) = {'i'};
M_.endo_names_long(9) = {'i'};
M_.endo_names(10) = {'t'};
M_.endo_names_tex(10) = {'t'};
M_.endo_names_long(10) = {'t'};
M_.endo_names(11) = {'r'};
M_.endo_names_tex(11) = {'r'};
M_.endo_names_long(11) = {'r'};
M_.endo_names(12) = {'r_ann'};
M_.endo_names_tex(12) = {'r\_ann'};
M_.endo_names_long(12) = {'r_ann'};
M_.endo_names(13) = {'pi_ann'};
M_.endo_names_tex(13) = {'pi\_ann'};
M_.endo_names_long(13) = {'pi_ann'};
M_.endo_partitions = struct();
M_.param_names = cell(18,1);
M_.param_names_tex = cell(18,1);
M_.param_names_long = cell(18,1);
M_.param_names(1) = {'alpha'};
M_.param_names_tex(1) = {'alpha'};
M_.param_names_long(1) = {'alpha'};
M_.param_names(2) = {'beta'};
M_.param_names_tex(2) = {'beta'};
M_.param_names_long(2) = {'beta'};
M_.param_names(3) = {'sigma'};
M_.param_names_tex(3) = {'sigma'};
M_.param_names_long(3) = {'sigma'};
M_.param_names(4) = {'gamma_c'};
M_.param_names_tex(4) = {'gamma\_c'};
M_.param_names_long(4) = {'gamma_c'};
M_.param_names(5) = {'gamma_c_bar'};
M_.param_names_tex(5) = {'gamma\_c\_bar'};
M_.param_names_long(5) = {'gamma_c_bar'};
M_.param_names(6) = {'gamma_g'};
M_.param_names_tex(6) = {'gamma\_g'};
M_.param_names_long(6) = {'gamma_g'};
M_.param_names(7) = {'delta'};
M_.param_names_tex(7) = {'delta'};
M_.param_names_long(7) = {'delta'};
M_.param_names(8) = {'eta'};
M_.param_names_tex(8) = {'eta'};
M_.param_names_long(8) = {'eta'};
M_.param_names(9) = {'theta'};
M_.param_names_tex(9) = {'theta'};
M_.param_names_long(9) = {'theta'};
M_.param_names(10) = {'lambda_p'};
M_.param_names_tex(10) = {'lambda\_p'};
M_.param_names_long(10) = {'lambda_p'};
M_.param_names(11) = {'my_p'};
M_.param_names_tex(11) = {'my\_p'};
M_.param_names_long(11) = {'my_p'};
M_.param_names(12) = {'rho'};
M_.param_names_tex(12) = {'rho'};
M_.param_names_long(12) = {'rho'};
M_.param_names(13) = {'rho_g'};
M_.param_names_tex(13) = {'rho\_g'};
M_.param_names_long(13) = {'rho_g'};
M_.param_names(14) = {'phi_b'};
M_.param_names_tex(14) = {'phi\_b'};
M_.param_names_long(14) = {'phi_b'};
M_.param_names(15) = {'phi_g'};
M_.param_names_tex(15) = {'phi\_g'};
M_.param_names_long(15) = {'phi_g'};
M_.param_names(16) = {'phi_pi'};
M_.param_names_tex(16) = {'phi\_pi'};
M_.param_names_long(16) = {'phi_pi'};
M_.param_names(17) = {'omega'};
M_.param_names_tex(17) = {'omega'};
M_.param_names_long(17) = {'omega'};
M_.param_names(18) = {'varphi'};
M_.param_names_tex(18) = {'varphi'};
M_.param_names_long(18) = {'varphi'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 1;
M_.endo_nbr = 13;
M_.param_nbr = 18;
M_.orig_endo_nbr = 13;
M_.aux_vars = [];
M_.predetermined_variables = [ 4 5 ];
M_ = setup_solvers(M_);
M_.Sigma_e = zeros(1, 1);
M_.Correlation_matrix = eye(1, 1);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
M_.surprise_shocks = [];
M_.heteroskedastic_shocks.Qvalue_orig = [];
M_.heteroskedastic_shocks.Qscale_orig = [];
options_.linear = true;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
M_.nonzero_hessian_eqs = [];
M_.hessian_eq_zero = isempty(M_.nonzero_hessian_eqs);
M_.orig_eq_nbr = 13;
M_.eq_nbr = 13;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 0 4 17;
 0 5 18;
 0 6 19;
 1 7 0;
 2 8 0;
 3 9 0;
 0 10 0;
 0 11 0;
 0 12 0;
 0 13 0;
 0 14 0;
 0 15 0;
 0 16 0;]';
M_.nstatic = 7;
M_.nfwrd   = 3;
M_.npred   = 3;
M_.nboth   = 0;
M_.nsfwrd   = 3;
M_.nspred   = 3;
M_.ndynamic   = 6;
M_.dynamic_tmp_nbr = [1; 0; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , 'k' ;
  2 , 'name' , 'pi' ;
  3 , 'name' , 'c' ;
  4 , 'name' , '4' ;
  5 , 'name' , 'b' ;
  6 , 'name' , 'g' ;
  7 , 'name' , 'y' ;
  8 , 'name' , 'w' ;
  9 , 'name' , 't' ;
  10 , 'name' , 'r' ;
  11 , 'name' , 'i' ;
  12 , 'name' , 'r_ann' ;
  13 , 'name' , 'pi_ann' ;
};
M_.mapping.n.eqidx = [1 2 4 7 8 11 ];
M_.mapping.c.eqidx = [1 2 3 4 8 11 ];
M_.mapping.pi.eqidx = [2 3 4 10 13 ];
M_.mapping.k.eqidx = [1 2 4 7 11 ];
M_.mapping.b.eqidx = [5 9 ];
M_.mapping.g.eqidx = [1 4 5 6 9 11 ];
M_.mapping.y.eqidx = [7 ];
M_.mapping.w.eqidx = [8 ];
M_.mapping.i.eqidx = [11 ];
M_.mapping.t.eqidx = [9 ];
M_.mapping.r.eqidx = [3 4 10 12 ];
M_.mapping.r_ann.eqidx = [12 ];
M_.mapping.pi_ann.eqidx = [13 ];
M_.mapping.e_g.eqidx = [6 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [4 5 6 ];
M_.exo_names_orig_ord = [1:1];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(13, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(1, 1);
M_.params = NaN(18, 1);
M_.endo_trends = struct('deflator', cell(13, 1), 'log_deflator', cell(13, 1), 'growth_factor', cell(13, 1), 'log_growth_factor', cell(13, 1));
M_.NNZDerivatives = [49; 0; -1; ];
M_.static_tmp_nbr = [1; 0; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
warning off;
M_.params(1) = 0.33;
alpha = M_.params(1);
M_.params(2) = 0.99;
beta = M_.params(2);
M_.params(6) = 0.2;
gamma_g = M_.params(6);
M_.params(7) = 0.025;
delta = M_.params(7);
M_.params(8) = 1;
eta = M_.params(8);
M_.params(9) = 0.75;
theta = M_.params(9);
M_.params(11) = 1.2;
my_p = M_.params(11);
M_.params(18) = 0.2;
varphi = M_.params(18);
M_.params(16) = 1.5;
phi_pi = M_.params(16);
M_.params(3) = 1;
sigma = M_.params(3);
M_.params(14) = 0.33;
phi_b = M_.params(14);
M_.params(15) = 0.10;
phi_g = M_.params(15);
M_.params(13) = 0.9;
rho_g = M_.params(13);
M_.params(12) = M_.params(2)^(-1)-1;
rho = M_.params(12);
M_.params(4) = 1-M_.params(6)-M_.params(7)*M_.params(1)/((M_.params(7)+M_.params(12))*M_.params(11));
gamma_c = M_.params(4);
M_.params(5) = M_.params(6)+M_.params(4);
gamma_c_bar = M_.params(5);
M_.params(10) = (1-M_.params(2)*M_.params(9))*(1-M_.params(9))/M_.params(9);
lambda_p = M_.params(10);
M_.params(17) = M_.params(8)*(1-M_.params(2)*(1-M_.params(7)))*(1-M_.params(5));
omega = M_.params(17);
%
% INITVAL instructions
%
options_.initval_file = false;
oo_.steady_state(1) = 0;
oo_.steady_state(2) = 0;
oo_.steady_state(3) = 0;
oo_.steady_state(4) = 0;
oo_.steady_state(5) = 0;
oo_.steady_state(6) = 0;
oo_.steady_state(7) = 0;
oo_.steady_state(11) = 0;
if M_.exo_nbr > 0
	oo_.exo_simul = ones(M_.maximum_lag,1)*oo_.exo_steady_state';
end
if M_.exo_det_nbr > 0
	oo_.exo_det_simul = ones(M_.maximum_lag,1)*oo_.exo_det_steady_state';
end
steady;
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 1;
options_.irf = 30;
options_.nograph = true;
options_.noprint = true;
options_.order = 2;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'ST_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'ST_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'ST_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'ST_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'ST_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'ST_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'ST_results.mat'], 'oo_recursive_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
