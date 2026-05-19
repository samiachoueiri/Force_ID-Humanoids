
TIME_STEP = 100;
SAMPLE=1;
k=1;
wait=0;

%initial force
FX=2000;
FY=0;
FZ=0;
%apply force for FD sec. (1 SEC --- 10)
FD = 20;
%save S data samples (array pf S elements)(1 SEC --- 10 Samples)
S= 70;
%buffer for BUF sec. (10 SEC --- 100)
BUF = 50;

%get node ID
%id = wb_supervisor_node_get_from_def('RLleg_S')
id = wb_supervisor_node_get_from_def('LLleg_S')
%id = wb_supervisor_node_get_from_def('Pelvis_S')
%id = wb_supervisor_node_get_from_def('Utorso_S')
%id = wb_supervisor_node_get_from_def('RScap_S')
%id = wb_supervisor_node_get_from_def('LScap_S')
%%%%%%%%%% BackLbz
%get motor
motor_BackLbz = wb_robot_get_device('BackLbz');
%get pos sensor
pos_sensor_BackLbz=wb_robot_get_device('BackLbz_PS');
%enable pos sensor
wb_position_sensor_enable(pos_sensor_BackLbz,TIME_STEP);
%%%%%%%%%% BackMby
%get motor
motor_BackMby = wb_robot_get_device('BackMby');
%get pos sensor
pos_sensor_BackMby=wb_robot_get_device('BackMby_PS');
%enable pos sensor
wb_position_sensor_enable(pos_sensor_BackMby,TIME_STEP);
%%%%%%%%%% BackUbx
%get motor
motor_BackUbx = wb_robot_get_device('BackUbx');
%get pos sensor
pos_sensor_BackUbx=wb_robot_get_device('BackUbx_PS');
%enable pos sensor
wb_position_sensor_enable(pos_sensor_BackUbx,TIME_STEP);
%%%%%%%%%% LArmElx
%get motor
motor_LArmElx = wb_robot_get_device('LArmElx');
%get pos sensor
pos_sensor_LArmElx=wb_robot_get_device('LArmElx_PS');
%enable pos sensor
wb_position_sensor_enable(pos_sensor_LArmElx,TIME_STEP);
%%%%%%%%%%LArmMwx 
%get motor
motor_LArmMwx = wb_robot_get_device('LArmMwx');
%get pos sensor
pos_sensor_LArmMwx=wb_robot_get_device('LArmMwx_PS');
%enable pos sensor
wb_position_sensor_enable(pos_sensor_LArmMwx,TIME_STEP);
%%%%%%%%%%LArmUwy 
%get motor
motor_LArmUwy = wb_robot_get_device('LArmUwy');
%get pos sensor
pos_sensor_LArmUwy=wb_robot_get_device('LArmUwy_PS');
%enable pos sensor
wb_position_sensor_enable(pos_sensor_LArmUwy,TIME_STEP);
%%%%%%%%%%LLegKny 
%get motor
motor_LLegKny = wb_robot_get_device('LLegKny');
%get pos sensor
pos_sensor_LLegKny=wb_robot_get_device('LLegKny_PS');
%enable pos sensor
wb_position_sensor_enable(pos_sensor_LLegKny,TIME_STEP);
%%%%%%%%%%LLegLhy 
%get motor
motor_LLegLhy = wb_robot_get_device('LLegLhy');
%get pos sensor
pos_sensor_LLegLhy=wb_robot_get_device('LLegLhy_PS');
%enable pos sensor
wb_position_sensor_enable(pos_sensor_LLegLhy,TIME_STEP);
%%%%%%%%%%LLegMhx 
%get motor
motor_LLegMhx = wb_robot_get_device('LLegMhx');
%get pos sensor
pos_sensor_LLegMhx=wb_robot_get_device('LLegMhx_PS');
%enable pos sensor
wb_position_sensor_enable(pos_sensor_LLegMhx,TIME_STEP);
%%%%%%%%%%LLegUay 
%get motor
motor_LLegUay = wb_robot_get_device('LLegUay');
%get pos sensor
pos_sensor_LLegUay=wb_robot_get_device('LLegUay_PS');
%enable pos sensor
wb_position_sensor_enable(pos_sensor_LLegUay,TIME_STEP);
%%%%%%%%%%NeckAy 
%get motor
motor_NeckAy = wb_robot_get_device('NeckAy');
%get pos sensor
pos_sensor_NeckAy=wb_robot_get_device('NeckAy_PS');
%enable pos sensor
wb_position_sensor_enable(pos_sensor_NeckAy,TIME_STEP);
%%%%%%%%%%RArmElx 
%get motor
motor_RArmElx = wb_robot_get_device('RArmElx');
%get pos sensor
pos_sensor_RArmElx=wb_robot_get_device('RArmElx_PS');
%enable pos sensor
wb_position_sensor_enable(pos_sensor_RArmElx,TIME_STEP);
%%%%%%%%%%RArmMwx 
%get motor
motor_RArmMwx = wb_robot_get_device('RArmMwx');
%get pos sensor
pos_sensor_RArmMwx=wb_robot_get_device('RArmMwx_PS');
%enable pos sensor
wb_position_sensor_enable(pos_sensor_RArmMwx,TIME_STEP);
%%%%%%%%%%RArmUwy 
%get motor
motor_RArmUwy = wb_robot_get_device('RArmUwy');
%get pos sensor
pos_sensor_RArmUwy=wb_robot_get_device('RArmUwy_PS');
%enable pos sensor
wb_position_sensor_enable(pos_sensor_RArmUwy,TIME_STEP);
%%%%%%%%%%RLegKny 
%get motor
motor_RLegKny = wb_robot_get_device('RLegKny');
%get pos sensor
pos_sensor_RLegKny=wb_robot_get_device('RLegKny_PS');
%enable pos sensor
wb_position_sensor_enable(pos_sensor_RLegKny,TIME_STEP);
%%%%%%%%%%RLegLhy 
%get motor
motor_RLegLhy = wb_robot_get_device('RLegLhy');
%get pos sensor
pos_sensor_RLegLhy=wb_robot_get_device('RLegLhy_PS');
%enable pos sensor
wb_position_sensor_enable(pos_sensor_RLegLhy,TIME_STEP);
%%%%%%%%%%RLegMhx
%get motor
motor_RLegMhx = wb_robot_get_device('RLegMhx');
%get pos sensor
pos_sensor_RLegMhx=wb_robot_get_device('RLegMhx_PS');
%enable pos sensor
wb_position_sensor_enable(pos_sensor_RLegMhx,TIME_STEP);
%%%%%%%%%%RLegUay 
%get motor
motor_RLegUay = wb_robot_get_device('RLegUay');
%get pos sensor
pos_sensor_RLegUay=wb_robot_get_device('RLegUay_PS');
%enable pos sensor
wb_position_sensor_enable(pos_sensor_RLegUay,TIME_STEP);


while wb_robot_step(TIME_STEP) ~= -1
if wait>=BUF
if k<=FD
  wb_supervisor_node_add_force(id,[FX FY FZ],1);
end

BackLbz(SAMPLE,k)=wb_position_sensor_get_value(pos_sensor_BackLbz);
BackMby(SAMPLE,k)=wb_position_sensor_get_value(pos_sensor_BackMby);
BackUbx(SAMPLE,k)=wb_position_sensor_get_value(pos_sensor_BackUbx);
LArmElx(SAMPLE,k)=wb_position_sensor_get_value(pos_sensor_LArmElx);
LArmMwx(SAMPLE,k)=wb_position_sensor_get_value(pos_sensor_LArmMwx);
LArmUwy(SAMPLE,k)=wb_position_sensor_get_value(pos_sensor_LArmUwy);
LLegKny(SAMPLE,k)=wb_position_sensor_get_value(pos_sensor_LLegKny);
LLegLhy(SAMPLE,k)=wb_position_sensor_get_value(pos_sensor_LLegLhy);
LLegMhx(SAMPLE,k)=wb_position_sensor_get_value(pos_sensor_LLegMhx);
LLegUay(SAMPLE,k)=wb_position_sensor_get_value(pos_sensor_LLegUay);
NeckAy(SAMPLE,k)=wb_position_sensor_get_value(pos_sensor_NeckAy);
RArmElx(SAMPLE,k)=wb_position_sensor_get_value(pos_sensor_RArmElx);
RArmMwx(SAMPLE,k)=wb_position_sensor_get_value(pos_sensor_RArmMwx);
RArmUwy(SAMPLE,k)=wb_position_sensor_get_value(pos_sensor_RArmUwy);
RLegKny(SAMPLE,k)=wb_position_sensor_get_value(pos_sensor_RLegKny);
RLegLhy(SAMPLE,k)=wb_position_sensor_get_value(pos_sensor_RLegLhy);
RLegMhx(SAMPLE,k)=wb_position_sensor_get_value(pos_sensor_RLegMhx);
RLegUay(SAMPLE,k)=wb_position_sensor_get_value(pos_sensor_RLegUay);

  wb_console_print(sprintf('k %f\n', k), WB_STDOUT);
  wb_console_print(sprintf('SAMPLE %f\n', SAMPLE), WB_STDOUT);
  
if k==S
save('100X2S_LSCAP.mat','BackLbz','BackMby','BackUbx','LArmElx','LArmMwx','LArmUwy','LLegKny','LLegLhy','LLegMhx','LLegUay','NeckAy','RArmElx','RArmMwx','RArmUwy','RLegKny','RLegLhy','RLegMhx','RLegUay')
  wb_console_print(sprintf('----------------------DATA SENT %f\n'), WB_STDOUT);

end

k=k+1;

  wb_console_print(sprintf('k %f\n', k), WB_STDOUT);
  wb_console_print(sprintf('SAMPLE %f\n', SAMPLE), WB_STDOUT);
  wb_console_print(sprintf('FORCE %f\n', FX), WB_STDOUT);
end
wait = wait+1;
  wb_console_print(sprintf('wait %f\n', wait), WB_STDOUT); 
end


