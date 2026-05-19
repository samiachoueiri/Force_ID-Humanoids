
TIME_STEP = 100;

id0 = wb_supervisor_node_get_from_def('RLleg_S')

%%%%%%%%%%RLegLhy 
%get motor
motor_RLegLhy = wb_robot_get_device('RLegLhy');
%get pos sensor
pos_sensor_RLegLhy=wb_robot_get_device('RLegLhy_PS');
%enable pos sensor
wb_position_sensor_enable(pos_sensor_RLegLhy,TIME_STEP);

%id = wb_supervisor_node_get_from_def('RArmEly')


k=1;
while wb_robot_step(TIME_STEP) ~= -1

if k<=75
  wb_supervisor_node_add_force(id0,[2000 0 0],1);
end
RLegLhy(k)=wb_position_sensor_get_value(pos_sensor_RLegLhy);
k=k+1;
save('test3.mat','RLegLhy')
plot(RLegLhy);

  drawnow;

end


