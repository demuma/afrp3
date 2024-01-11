sudo apt-get update
sudo apt-get install ros-noetic-dwa-local-planner ros-noetic-global-planner ros-noetic-teb-local-planner ros-noetic-base-local-planner ros-noetic-pointcloud-to-laserscan ros-noetic-amcl ros-noetic-carla-msgs -y &&
cd ~/carla_ws/src/
git clone https://github.com/carla-simulator/ros-bridge
cd ros-bridge
./install_dependencies.sh
source ../afrp3/.bashrc
cd ~/carla_ws
catkin_make
