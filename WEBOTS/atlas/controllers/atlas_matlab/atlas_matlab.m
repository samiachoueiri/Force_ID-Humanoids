

TIME_STEP = 100;
motor1 = wb_robot_get_device('LArmElx');
pos_sensor1=wb_robot_get_device('LArmElx_PS');
wb_console_print(sprintf('motor %f\n', motor1), WB_STDOUT);
wb_console_print(sprintf('sensor %f\n', pos_sensor1), WB_STDOUT);
wb_position_sensor_enable(pos_sensor1,TIME_STEP);
k=1;

% do this once only
robot_node = wb_supervisor_node_get_from_def('BackLbz');
%x= wb_supervisor_node_get_type_name('pelvis');
%wb_console_print(sprintf('x %f\n', x), WB_STDOUT);

if robot_node == 0
  wb_console_print('No DEF MY_ROBOT node found in the current world file', WB_STDERR);
  quit(1);
end

while wb_robot_step(TIME_STEP) ~= -1
wb_position_sensor_get_value(pos_sensor1)
valueL(k)=wb_position_sensor_get_value(pos_sensor1);
k=k+1;
wb_supervisor_node_add_force(robot_node, 1000, true)
%wb_supervisor_world_reload()

end
%save('test2.mat','valueL')

