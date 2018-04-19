%% Initialize ROS
rosinit;

%% Create a bag file object with the file name
[filename, pathname] = uigetfile({'*.csv'},'Pick a File');
bag = rosbag(strcat(pathname,filename));

%% Plot the X and Y location of your turtle
% Get just the topic we are interested in
bagselect = select(bag,'Topic','turtle1/pose');
 
% Create a time series object based on the fields of the turtlesim/Pose
% message we are interested in
ts = timeseries(bagselect,'X','Y','Theta','LinearVelocity','AngularVelocity');

% Create plot
plot(ts.Data(:,1),ts.Data(:,2))
xlabel('X-Position')
ylabel('Y-Position')
title('Turtle Position')

%% Plot of the heading angle (Theta) of your turtle as a function of time
% Create plot
plot(ts.Time,ts.Data(:,3))
xlabel('Time [s]')
ylabel('Heading [rad]')
title('Turtle Heading')

%% Quiver Plot
% x is the x position of the turtle
% y is the y position of the turtle
% vel is the LinearVelocity of the turtle
% th is the heading angle of the turtle in radians
x = ts.Data(:,1);
y = ts.Data(:,2);
vel = ts.Data(:,4);
th = ts.Data(:,3);
u = vel.*cos(th);
v = vel.*sin(th);
ii = 1:10:length(x);  % Decimate the data so that it plot only every Nth point.
quiver(x(ii),y(ii),u(ii),v(ii))
xlabel('X-Position')
ylabel('Y-Position')
title('Turtle Quiver Plot')
