TIME_STEP = 100;


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
%%%%%%%%%% LArmEly
%get motor
motor_LArmEly = wb_robot_get_device('LArmEly');
%get pos sensor
pos_sensor_LArmEly=wb_robot_get_device('LArmEly_PS');
%enable pos sensor
wb_position_sensor_enable(pos_sensor_LArmEly,TIME_STEP);
%%%%%%%%%%LArmMwx 
%get motor
motor_LArmMwx = wb_robot_get_device('LArmMwx');
%get pos sensor
pos_sensor_LArmMwx=wb_robot_get_device('LArmMwx_PS');
%enable pos sensor
wb_position_sensor_enable(pos_sensor_LArmMwx,TIME_STEP);
%%%%%%%%%%LArmShx 
%get motor
motor_LArmShx = wb_robot_get_device('LArmShx');
%get pos sensor
pos_sensor_LArmShx=wb_robot_get_device('LArmShx_PS');
%enable pos sensor
wb_position_sensor_enable(pos_sensor_LArmShx,TIME_STEP);
%%%%%%%%%%LArmUsy 
%get motor
motor_LArmUsy = wb_robot_get_device('LArmUsy');
%get pos sensor
pos_sensor_LArmUsy=wb_robot_get_device('LArmUsy_PS');
%enable pos sensor
wb_position_sensor_enable(pos_sensor_LArmUsy,TIME_STEP);
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
%%%%%%%%%%LLegLax 
%get motor
motor_LLegLax = wb_robot_get_device('LLegLax');
%get pos sensor
pos_sensor_LLegLax=wb_robot_get_device('LLegLax_PS');
%enable pos sensor
wb_position_sensor_enable(pos_sensor_LLegLax,TIME_STEP);
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
%%%%%%%%%%LLegUhz
%get motor
motor_LLegUhz = wb_robot_get_device('LLegUhz');
%get pos sensor
pos_sensor_LLegUhz=wb_robot_get_device('LLegUhz_PS');
%enable pos sensor
wb_position_sensor_enable(pos_sensor_LLegUhz,TIME_STEP);
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
%%%%%%%%%%RArmEly 
%get motor
motor_RArmEly = wb_robot_get_device('RArmEly');
%get pos sensor
pos_sensor_RArmEly=wb_robot_get_device('RArmEly_PS');
%enable pos sensor
wb_position_sensor_enable(pos_sensor_RArmEly,TIME_STEP);
%%%%%%%%%%RArmMwx 
%get motor
motor_RArmMwx = wb_robot_get_device('RArmMwx');
%get pos sensor
pos_sensor_RArmMwx=wb_robot_get_device('RArmMwx_PS');
%enable pos sensor
wb_position_sensor_enable(pos_sensor_RArmMwx,TIME_STEP);
%%%%%%%%%%RArmShx 
%get motor
motor_RArmShx = wb_robot_get_device('RArmShx');
%get pos sensor
pos_sensor_RArmShx=wb_robot_get_device('RArmShx_PS');
%enable pos sensor
wb_position_sensor_enable(pos_sensor_RArmShx,TIME_STEP);
%%%%%%%%%%RArmUsy 
%get motor
motor_RArmUsy = wb_robot_get_device('RArmUsy');
%get pos sensor
pos_sensor_RArmUsy=wb_robot_get_device('RArmUsy_PS');
%enable pos sensor
wb_position_sensor_enable(pos_sensor_RArmUsy,TIME_STEP);
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
%%%%%%%%%%RLegLax 
%get motor
motor_RLegLax = wb_robot_get_device('RLegLax');
%get pos sensor
pos_sensor_RLegLax=wb_robot_get_device('RLegLax_PS');
%enable pos sensor
wb_position_sensor_enable(pos_sensor_RLegLax,TIME_STEP);
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
%%%%%%%%%%RLegUhz 
%get motor
motor_RLegUhz = wb_robot_get_device('RLegUhz');
%get pos sensor
pos_sensor_RLegUhz=wb_robot_get_device('RLegUhz_PS');
%enable pos sensor
wb_position_sensor_enable(pos_sensor_RLegUhz,TIME_STEP);

%k index to fill array starting at 1
k=1;
%id0 = wb_supervisor_node_get_id('hhhh')
%save('id0.mat','id0');

id = wb_supervisor_node_get_from_def('RArmEly')
%robot_node = wb_supervisor_node_get_from_id(id)
%wb_console_print(sprintf('id %f\n', id), WB_STDOUT);


%if robot_node == 0
 % wb_console_print('No DEF MY_ROBOT node found in the current world file', WB_STDERR);
  %quit(1);
%end
%save('node.mat','id');

%infinit loop
while wb_robot_step(TIME_STEP) ~=-1

%wb_supervisor_node_add_force(id, [2 3 5], 'true')
%fill array
BackLbz(k)=wb_position_sensor_get_value(pos_sensor_BackLbz);
BackMby(k)=wb_position_sensor_get_value(pos_sensor_BackMby);
BackUbx(k)=wb_position_sensor_get_value(pos_sensor_BackUbx);
LArmElx(k)=wb_position_sensor_get_value(pos_sensor_LArmElx);
LArmEly(k)=wb_position_sensor_get_value(pos_sensor_LArmEly);
LArmMwx(k)=wb_position_sensor_get_value(pos_sensor_LArmMwx);
LArmShx(k)=wb_position_sensor_get_value(pos_sensor_LArmShx);
LArmUsy(k)=wb_position_sensor_get_value(pos_sensor_LArmUsy);
LArmUwy(k)=wb_position_sensor_get_value(pos_sensor_LArmUwy);
LLegKny(k)=wb_position_sensor_get_value(pos_sensor_LLegKny);
LLegLax(k)=wb_position_sensor_get_value(pos_sensor_LLegLax);
LLegLhy(k)=wb_position_sensor_get_value(pos_sensor_LLegLhy);
LLegMhx(k)=wb_position_sensor_get_value(pos_sensor_LLegMhx);
LLegUay(k)=wb_position_sensor_get_value(pos_sensor_LLegUay);
LLegUhz(k)=wb_position_sensor_get_value(pos_sensor_LLegUhz);
NeckAy(k)=wb_position_sensor_get_value(pos_sensor_NeckAy);
RArmElx(k)=wb_position_sensor_get_value(pos_sensor_RArmElx);
RArmEly(k)=wb_position_sensor_get_value(pos_sensor_RArmEly);
RArmMwx(k)=wb_position_sensor_get_value(pos_sensor_RArmMwx);
RArmShx(k)=wb_position_sensor_get_value(pos_sensor_RArmShx);
RArmUsy(k)=wb_position_sensor_get_value(pos_sensor_RArmUsy);
RArmUwy(k)=wb_position_sensor_get_value(pos_sensor_RArmUwy);
RLegKny(k)=wb_position_sensor_get_value(pos_sensor_RLegKny);
RLegLax(k)=wb_position_sensor_get_value(pos_sensor_RLegLax);
RLegLhy(k)=wb_position_sensor_get_value(pos_sensor_RLegLhy);
RLegMhx(k)=wb_position_sensor_get_value(pos_sensor_RLegMhx);
RLegUay(k)=wb_position_sensor_get_value(pos_sensor_RLegUay);
RLegUhz(k)=wb_position_sensor_get_value(pos_sensor_RLegUhz);
%increment index
k=k+1;
%%%% to add a sample after k iteration add a row j (so each row is the response of a new sample)
if k==70
save('5KNknee.mat','BackLbz','BackMby','BackUbx','LArmElx','LArmEly','LArmMwx','LArmShx','LArmUsy','LArmUwy','LLegKny','LLegLax','LLegLhy','LLegMhx','LLegUay','LLegUhz','NeckAy','RArmElx','RArmEly','RArmMwx','RArmShx','RArmUsy','RArmUwy','RLegKny','RLegLax','RLegLhy','RLegMhx','RLegUay','RLegUhz')
%saveExperimentData();
  quit(0);
end
end

%save arrays
%save('6_5KNknee.mat','BackLbz','BackMby','BackUbx','LArmElx','LArmEly','LArmMwx','LArmShx','LArmUsy','LArmUwy','LLegKny','LLegLax','LLegLhy','LLegMhx','LLegUay','LLegUhz','NeckAy','RArmElx','RArmEly','RArmMwx','RArmShx','RArmUsy','RArmUwy','RLegKny','RLegLax','RLegLhy','RLegMhx','RLegUay','RLegUhz')