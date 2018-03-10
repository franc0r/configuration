#!/bin/bash



if [ $# -lt 1 ]; then
    echo "no arguments given... try $0 <path/to/src/>"
    exit 1
fi


currdir=`pwd`

absolute=0
[[ "$1" =~ ^/ ]] && let absolute=1 || let absolute=0

# test=`echo $currdir"/"$1`
# echo $test

# exit 1



if [ $absolute != 1 ]
  then
    currdir=`echo $currdir"/"$1`
  else
    currdir=$1
fi

cd $currdir

#build and install scraw
cd scraw
mkdir build
cd build
cmake ..
make $2
sudo make install


#install scrawpp
cd ../../scrawpp
mkdir build
cd build
cmake ..
make
sudo make install


#build and install scd
cd ../../scd
mkdir build
cd build
cmake ..
make $2 
sudo make install




echo "rdy..."


exit 1


