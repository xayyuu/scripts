#########################################################################
# File Name: autoshutdown.sh
# Author: yuxiao
# mail: yuxiao2113@gmail.com
# Created Time: 2017年06月13日 星期二 02时58分17秒
#########################################################################
#!/bin/bash


if [ "$#" -eq "1" -a "$1" == "-r" ]
then
	echo $XYPWD | sudo -S reboot
else
	echo $XYPWD | sudo -S shutdown -h now
fi

