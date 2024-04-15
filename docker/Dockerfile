from husarion/rosbridge-server:humble

RUN apt update && apt install curl -y
RUN curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg

RUN apt install ros-humble-desktop -y
RUN apt install ros-humble-rmw-cyclonedds-cpp -y

#### start allison docker parts 
ENV DEBIAN_FRONTEND=noninteractive

# Install language
RUN apt-get install -y \
  locales \
  && locale-gen en_US.UTF-8 \
  && update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8 

ENV LANG en_US.UTF-8

# Install timezone
RUN ln -fs /usr/share/zoneinfo/UTC /etc/localtime \
  && export DEBIAN_FRONTEND=noninteractive \
  && apt-get install -y tzdata \
  && dpkg-reconfigure --frontend noninteractive tzdata


# Install common programs
RUN apt-get install -y --no-install-recommends \
    curl \
    gnupg2 \
    lsb-release \
    sudo \
    software-properties-common \
    wget \
    python3-argcomplete

RUN apt-get install -y --no-install-recommends \
  bash-completion \
  build-essential \
  cmake \
  gdb \
  git \
  openssh-client \
  python3-argcomplete \
  python3-pip \
  ros-dev-tools 


#### end allison docker parts 

#ENV RMW_IMPLEMENTATION="rmw_cyclonedds_cpp"
