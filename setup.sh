#!/usr/bin/env bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd $DIR
echo "current directory ${DIR}"

echo "--------------------------------------------------------------------------------"
echo " Install pre-requisites          "
echo "--------------------------------------------------------------------------------"
system=$(uname)
if [ "$system" == "Linux" ]; then
    #lsb_release may not be installed in RedHat/CentOS
    #distro=$(lsb_release -i)
    distro=$(cat /etc/os-release | grep '^NAME=' | sed -n 's/^NAME=\"\(.*\)\"$/\1/p')
    if [[ ${distro:0:3} == "Ubu" ]] || [[ $distro == "Deb" ]] ;then
        . ${DIR}/_ubuntu.sh
    elif [[ ${distro:0:3} == "Red" ]] || [[ $distro == "Cen" ]] ;then
        . ${DIR}/_redhat.sh
    else
        msg_exit "Your linux system was not test"
    fi
elif [ "$system" == "Darwin" ]; then
    echo "Mac has not been implemented yet. Abort"
    exit -1
fi

echo "--------------------------------------------------------------------------------"
echo " Create python venv "bashenv""
echo "--------------------------------------------------------------------------------"
python3 -m venv bashvenv

echo "Run 'source ${DIR}/bashenv/bin/activate'"
