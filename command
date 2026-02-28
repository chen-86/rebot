快速安装网址：https://azitide.github.io/post/ubuntu_ROS.html
1、新建第一个终端，命令执行后会出现 弹窗 一个蓝色屏幕的小海龟在中间
ros2 run turtlesim turtlesim_node
2、新建第二个终端，执行命令把鼠标放在终端，就可以通过按下键盘的方向 ↑ ↓ ← →键来对小海龟进行控制
ros2 run turtlesim  turtle_teleop_key

安装rqt-robot-steering：sudo apt install ros-humble-rqt-robot-steering

编译catkin项目用colcon build

source ~/catkin_ws/install/setup.bash

ros2 launch wpr_simulation2 wpb_simple.launch.py //start 3D simulation gui GAZEBO  

超级终端快捷方式：
	1、快速启动：ctrl+alt+t；
	2、左右分屏：ctrl+shift+e;
	3、上下分屏：ctrl+shift+o;
	4、转换焦点：alt+上下左右键；
	5. 删除当前窗口：ctrl+w；

创建pkg： 
	ros1: catkin_create_pkg ssr_pkg rospy roscpp std_msgs
	ros2: ros2 pkg create ssr_pkg --build-type ament_cmake --dependencies rclcpp rclpy std_msgs
查询pkg路径：ros2 pkg prefix <pkg_name>

编译ssr_pkg：
	cd ~/catkin_ws && colcon build --packages-select ssr_pkg

运行chao_node：
	source ~/catkin_ws/install/setup.bash
	ros2 run ssr_pkg chao_node
	
查看topic命令：
	ros2 topic list 查看回话列表
	ros2 topic echo <topic_name> 回显回话发布内容
	更多命令ros2 topic -h
