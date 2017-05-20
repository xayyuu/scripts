#!/bin/bash
# @author: Yu Xiao
# @contact: yuxiao2113@gmail.com
# 
# 遗留问题： 
#    * 文件路径问题
#

# 检查参数
check_args_num() {

    if [ $1 != 2 ]; then
        echo "ERROR COMMAND, NEED TWO ARGUMENTS, NOW $# ARGMENSTS"
        echo "SUCH AS: ./rename *[DELETE_WORD]*.[postfix] [DELETE_WORD]  "
        exit 1
    fi

}

rename() {

    filenames=`ls $1 2>/dev/null`
    #filenames=`ls *Lec*.py 2>/dev/null `
    if [ $? -ne 0 ];then
        echo 'no such file, pls check '
        exit -1
    fi

    #echo $filenames

    for i in ${filenames}
    do
        if [ -a $i ]; then
            #newname=${i#*Lec}
            newname=${i#*${2}}
            echo "rename ${i} to ${newname} "
                mv ${i} ${newname}
        else
                    echo "$i does NOT exist "
        fi

    done

}

# 测试
test_rename(){

    touch $1
    ls
    rename $1 $2
    ls
}

check_args_num $#
test_rename $1 $2
