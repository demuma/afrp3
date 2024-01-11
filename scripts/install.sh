sudo apt-get update
sudo apt-get install ros-noetic-dwa-local-planner ros-noetic-global-planner ros-noetic-base-local-planner ros-noetic-pointcloud-to-laserscan ros-noetic-amcl -y
cd ­~/carla_ws/src
git clone https://github.com/demuma/afrp3
git clone https://github.com/carla-simulator/ros-bridge
rosdep update
rosdep install --from-paths src --ignore-src --rosdistro noetic
cd ros-bridge
python -m pip install -r requirements.txt
source ../afrp3/.bashrc
cd ..
catkin_make
