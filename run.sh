#!/bin/bash
export LOCAL_DIR=~/local
export PATH=$LOCAL_DIR/bin:$PATH
export LD_LIBRARY_PATH=$LOCAL_DIR/lib:$LD_LIBRARY_PATH
export KDEDIR=$LOCAL_DIR
export KDEDIRS=$KDEDIR
export XDG_DATA_DIRS=$XDG_DATA_DIRS:$LOCAL_DIR/share
# update KDE's system configuration cache
# kbuildsycoca4
# start app
$@
