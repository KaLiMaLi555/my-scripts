## Updating system
sudo apt-get update
sudo apt-get upgrade

## Setting some variables
echo "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3" >> ~/.bashrc
echo "alias python='python3'" >> ~/.bashrc

## Set proxy in git
git config --global http.proxy http://172.16.2.30:8080
git config --global https.proxy https://172.16.2.30:8080

## Installing Compiz
sudo apt-get install compizconfig-settings-manager -y

## Install vim
sudo apt-get install vim -y 

## Install curl

## Installing chrome
sudo touch /etc/apt/sources.list.d/google-chrome.list
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list
wget https://dl.google.com/linux/linux_signing_key.pub
sudo apt-key add linux_signing_key.pub
sudo apt-get update
sudo apt-get install google-chrome-stable -y

## installing 7-zip
sudo apt-get update
sudo apt-get install p7zip-full -y

## Installing and open sublime text 3
sudo apt-get update
wget https://download.sublimetext.com/sublime_text_3_build_3211_x64.tar.bz2
7z x sublime_text_3_build_3211_x64.tar.bz2
rm sublime_text_3_build_3211_x64.tar.bz2
7z x sublime_text_3_build_3211_x64.tar
rm sublime_text_3_build_3211_x64.tar
chmod +x sublime_text_3/sublime_text
./sublime_text_3/sublime_text
sudo cp -r sublime_text /opt/.
sudo cp sublime_text_3/sublime_text.desktop /usr/share/applications/.

## Installing apt-fast wrapper
sudo add-apt-repository ppa:apt-fast/stable
sudo apt-get update
sudo apt-get -y install apt-fast -y

## Installing vscode
wget https://az764295.vo.msecnd.net/stable/c47d83b293181d9be64f27ff093689e8e7aed054/code_1.42.1-1581432938_amd64.deb
sudo apt-get install code_1.42.1-1581432938_amd64.deb
rm code_1.42.1-1581432938_amd64.deb  data.tar

## Installing opencv from source
sudo apt-get update
sudo apt-get upgrade
sudo apt-get remove x264 libx264-dev -y
sudo apt-get install build-essential checkinstall cmake pkg-config yasm -y
sudo apt-get install git gfortran -y
sudo apt-get install libjpeg8-dev -y
sudo apt-get install libtiff5-dev -y
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libdc1394-22-dev -y
sudo apt-get install libxine2-dev libv4l-dev -y
sudo apt-get install qt5-default libgtk2.0-dev libtbb-dev -y
sudo apt-get install libatlas-base-dev -y
sudo apt-get install libfaac-dev libmp3lame-dev libtheora-dev -y
sudo apt-get install libvorbis-dev libxvidcore-dev -y 
sudo apt-get install libopencore-amrnb-dev libopencore-amrwb-dev -y
sudo apt-get install x264 v4l-utils -y 
sudo apt-get install libprotobuf-dev protobuf-compiler -y 
sudo apt-get install libgoogle-glog-dev libgflags-dev -y 
sudo apt-get install libgphoto2-dev libeigen3-dev libhdf5-dev doxygen -y --fix-missing
sudo apt-get install python-dev python-pip python3-dev python3-pip -y 
sudo -H pip3 install -U pip numpy
sudo pip3 install virtualenv virtualenvwrapper
echo "# Virtual Environment Wrapper"  >> ~/.bashrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc
source ~/.bashrc
mkvirtualenv cv-py3 -p python3
workon cv-py3
sudo -H pip3 install numpy scipy matplotlib scikit-image scikit-learn ipython
deactivate
git clone https://github.com/opencv/opencv.git
cd opencv
git checkout 3.4.1
cd ..
git clone https://github.com/opencv/opencv_contrib.git
cd opencv_contrib
git checkout 3.4.1
cd ..
cd opencv
mkdir build 
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE \
      -D CMAKE_INSTALL_PREFIX=/usr/local \
      -D INSTALL_C_EXAMPLES=ON \
      -D INSTALL_PYTHON_EXAMPLES=ON \
      -D WITH_TBB=ON \
      -D WITH_V4L=ON \
      -D WITH_QT=ON \
      -D WITH_OPENGL=ON \
      -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules \
      -D BUILD_EXAMPLES=ON \
      -D BUILD_opencv_xfeatures2d=OFF \
      -D WITH_CUDA=OFF ..
make -j$(nproc)
sudo make install
sudo sh -c 'echo "/usr/local/lib" >> /etc/ld.so.conf.d/opencv.conf'
sudo ldconfig
ln -s $(find /usr/local/lib/ -type f -name "cv2*.so") ~/.virtualenvs/facecourse-py3/lib/python3.6/site-packages/cv2.so

## Installing zsh from oh-my-zsh
sudo apt-get install zsh -y
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## Installing proxymaster
wget https://github.com/thealphadollar/set_proxy/archive/master.zip
unzip master.zip
rm master.zip

## Installing latest version of ros
# sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
# curl -sSL 'http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xC1CF6E31E6BADE8868B172B4F42ED6FBAB17C654' | sudo apt-key add -
# sudo apt-get update
# sudo apt-get install ros-melodic-desktop-full -y
# sudo rosdep init
# rosdep update
# echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
# source ~/.bashrc
# echo "source /opt/ros/melodic/setup.zsh" >> ~/.zshrc
# source ~/.zshrc
# sudo apt-get install python-rosinstall python-rosinstall-generator python-wstool build-essential
