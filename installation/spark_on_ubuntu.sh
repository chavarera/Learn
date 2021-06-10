#!/bin/sh

# Source folder 
cd /opt
sudo chown $USER .

# Verify java and install it if not exists
if type -p java; then
    echo "-------java version available on system-------"
    java --version
else
    echo "------Java Not Found Installing latest Java-----"
    sudo apt install default-jdk -y
fi


# Download latest spark with hadoop change following if you want to install specific version
mkdir downloads
wget https://downloads.apache.org/spark/spark-3.1.2/spark-3.1.2-bin-hadoop3.2.tgz

# extract spark
tar xvf spark-3.1.2-bin-hadoop3.2.tgz
mv spark-3.1.2-bin-hadoop3.2.tgz downloads/

ln -s spark-3.1.2-bin-hadoop3.2 spark


#.profile is for things that are not specifically related to Bash, 
# like environment variables PATH it should also be available anytime. 
#.bash_profile is specifically for login shells or shells executed at login.
#https://unix.stackexchange.com/a/45685

# add paths to  .bash_profile for ubuntu
echo "
export SPARK_HOME=/opt/spark
export PATH=\$PATH:\$SPARK_HOME/bin
export PATH=\$PATH:\$SPARK_HOME/sbin
" >> ~/.bash_profile

# reload  ~/.bash_profile
source  ~/.bash_profile


#To start a master server instance on the current machine, run the command we used earlier in the guide:
#start-master.sh

#To stop the master instance started by executing the script above, run:
#stop-master.sh

#To stop a running worker process, enter this command:
#stop-slave.sh
