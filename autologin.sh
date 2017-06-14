#########################################################################
# File Name: autologin.sh
# Author: yuxiao
# mail: yuxiao2113@gmail.com
# Created Time: 2017年05月24日 星期三 14时39分24秒
#########################################################################
#!/bin/bash

filename="/home/xy/xyspurs/myflask"

if [ ! -f "$filename" ]; then
	echo "CANNOT login the ubuntu server"
	echo "because $filaname does NOT EXISTS"
	exit 2
fi

echo "Now LOGGING into 139.199.161.222"
ssh -i $filename ubuntu@139.199.161.222

