rosservice call /spawn 2.0 3.54445 1.57 "turtle2"
rosservice call /turtle2/set_pen 255 0 0 3 0
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[2.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -2.62]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[2.5, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 2.62]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[2.5, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rosservice call /turtle2/set_pen 0 255 0 3 0
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -1.046]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[2.5, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 2.09]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[1.25, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -2.09]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[1.25, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 2.09]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[2.5, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
