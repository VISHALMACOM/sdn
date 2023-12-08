#/bin/bash

#MININET OTHER TERMINAL EXECUTION
sudo mn -c
#sleep 4
mininet="sudo mn --controller=remote,ip=127.0.0.1 --mac --switch=ovsk,protocols=OpenFlow13 --topo=linear,4"
echo $mininet
gnome-terminal -- $mininet


sudo ryu-manager ryu.app.simple_switch_13 ryu.app.ofctl_rest
