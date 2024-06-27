clear
close all
set(0,'DefaultLineLineWidth',1.5)

nperiods=30;
maxiter=20;

% Baseline simulation
solution=1;

irfshock = char('eps_c','eps_g'); % Shocks we look at: preference and g-shock

% simulation 1 som baseline uden ændringer i c
baseline1=[ 0     0      0       0        0       0
  0.00  0.00   0.00    0.00     0.00    0.0 ]';

% positivt stød til g i periode 6
scenario1=[ 0     0      0       0        0       0
  0.00  0.00   0.00    0.00     0.00    0.01   ]';

% kald model for standardsituationen og ved rentens nedre grænse
modnam = 'dnk';
modnamstar = 'dnk_zlb';

% betingelse for hvornår renten binder
constraint = 'r<-(1/BETA-1)';
constraint_relax ='rnot>-(1/BETA-1)';

% simulerer med baseline1
[zdatabaseline_lin1 zdatabaseline_pie1 zdatass oobase_ Mbase_] = ...
  solve_one_constraint(modnam,modnamstar,...
  constraint, constraint_relax,...
  baseline1,irfshock,nperiods,maxiter);

% simulerer med baseline1 og scenario1
[zdatascenario_lin1 zdatascenario_pie1 zdatass oobase_ Mbase_ ] = ...
  solve_one_constraint(modnam,modnamstar,...
  constraint, constraint_relax,...
  baseline1+scenario1,irfshock,nperiods,maxiter);

% simulation ved rentens nedre grænse
simulation=2;

irfshock = char('eps_c','eps_g');

% negativt stød til c
baseline2=[   -0.04  -0.04   -0.04    -0.04      0   0
  0.00   0.00   0.00     0.00     0.0   0.0  ]';

% begge simulationer har samme stød til g i periode 6
scenario2=scenario1;


% simulerer med baseline2
[zdatabaseline_lin2 zdatabaseline_pie2 zdatass oobase_ Mbase_] = ...
  solve_one_constraint(modnam,modnamstar,...
  constraint, constraint_relax,...
  baseline2,irfshock,nperiods,maxiter);

% simulerer med baseline2 og scenario2
[zdatascenario_lin2 zdatascenario_pie2 zdatass oobase_ Mbase_ ] = ...
  solve_one_constraint(modnam,modnamstar,...
  constraint, constraint_relax,...
  baseline2+scenario2,irfshock,nperiods,maxiter);


% impuls respons funktioner bliver udregnet som afvigelse fra baseline
for i=1:Mbase_.endo_nbr
  eval([deblank(Mbase_.endo_names(i,:)),'1 = zdatascenario_pie1(:,i)-zdatabaseline_pie1(:,i);']);
  eval([deblank(Mbase_.endo_names(i,:)),'2 = zdatascenario_pie2(:,i)-zdatabaseline_pie2(:,i);']);
end


% IRF i standardsituationen og ved rentens nedre grænse

titlelist = char('BNP','Offentligt forbrug','Nominel rente','Privat forbrug','Investering','Arbejdstimer');

ylabels = char('', '', '', '', '','');

figtitle = '';
line1=100*[y1,a_g1,4*r1,c1,ik1,n1];
line2=100*[y2,a_g2,4*r2,c2,ik2,n2];

legendlist = cellstr(char('Standard','Rentens nedre grænse'));
figlabel = '';
makechart(titlelist,legendlist,figlabel,ylabels,line1,line2)


% Gali et al.
y3=[0;0;0;0;0;0.694198382376284;0.623688534533431;0.560248314440291;0.503170440462171;0.451818364581460;0.405619198942646;0.364057349744423;0.326668787744163;0.293035891713473;0.262782807549716;0.235571271477869;0.211096850933656;0.189085561359811;0.169290821324122;0.151490712127067;0.135485511450046;0.121095473640138;0.108158831967698;0.0965300006594936;0.0860779567298003;0.0766847836296436;0.0682443605323456;0.0606611826917291;0.0538492997656906;0.0477313603085856];
c3=[0;0;0;0;0;-0.456040250090146;-0.411844543078912;-0.372044319619827;-0.336200443331922;-0.303917684426130;-0.274840329166607;-0.248648228383866;-0.225053241134569;-0.203796033993343;-0.184643200413470;-0.167384668149570;-0.151831365936135;-0.137813123496345;-0.125176781548182;-0.113784490808126;-0.103512181092732;-0.0942481835083001;-0.0858919904198844;-0.0783531394217175;-0.0715502089089505;-0.0654099140905975;-0.0598662933995960;-0.0548599762602956;-0.0503375240776616;-0.0462508371260472];    
i3=[0;0;0;0;0;-0.154653621611652;-0.140409483739285;-0.127568872460059;-0.115991792358514;-0.105552241450625;-0.0961368119451566;-0.0876434309271046;-0.0799802269710294;-0.0730645100913346;-0.0668218536958180;-0.0611852683422006;-0.0560944581173622;-0.0514951513770421;-0.0473384984099855;-0.0435805293341188;-0.0401816662015765;-0.0371062838917211;-0.0343223149133834;-0.0318008937254248;-0.0295160366238151;-0.0274443536385995;-0.0255647892397879;-0.0238583889712999;-0.0223080894201815;-0.0208985291875907];
g3=[0;0;0;0;0;1.00000000000000;0.900000000000005;0.810000000000004;0.729000000000004;0.656100000000004;0.590490000000003;0.531441000000003;0.478296900000003;0.430467210000003;0.387420489000003;0.348678440100002;0.313810596090002;0.282429536481002;0.254186582832902;0.228767924549612;0.205891132094650;0.185302018885185;0.166771816996667;0.150094635297000;0.135085171767300;0.121576654590570;0.109418989131513;0.0984770902183619;0.0886293811965257;0.0797664430768732];
r3=[0;0;0;0;0;0.442422879173122;0.398460076692282;0.358888774283916;0.323269903698449;0.291208302112923;0.262348321612250;0.236369877721934;0.212984893087117;0.191934096783325;0.172984143695751;0.155925021960228;0.140567719659733;0.126742124850864;0.114295135587314;0.103088958940637;0.0929995801185913;0.0839153846712991;0.0757359184764556;0.0683707717256830;0.0617385745119227;0.0557660928577672;0.0503874151406422;0.0455432198751611;0.0411801167169382;0.0372500533657214];
n3=[0;0;0;0;0;1.03611698862132;0.932782726733921;0.839777145895491;0.756067459159571;0.680724156886255;0.612910679035277;0.551874120229382;0.496936864310960;0.447489055442626;0.402981822097356;0.362921178649230;0.326862536804726;0.294405765890525;0.265190747112168;0.238893372386498;0.215221943290511;0.193913930114974;0.174733055012354;0.157466666829617;0.141923378457427;0.127930940444103;0.115334327247869;0.103994014863568;0.0937844306864087;0.0845925583890302];

line3=[y3,g3,r3,c3,i3,n3];

% Figur til sammenligning af Gali et al. og Iacoviello

titlelist = char('BNP','Offentligt forbrug','Nominel rente','Privat forbrug','Investering','Arbejdstimer');

ylabels = char('', '', '', '', '','');

figtitle = '';

legendlist = cellstr(char('Gali et al.','Iacoviello'));
figlabel = '';
makechart(titlelist,legendlist,figlabel,ylabels,line3,line1)

