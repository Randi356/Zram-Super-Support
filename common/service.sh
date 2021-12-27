#!/system/bin/sh
#Please dont't hardcode/magisk/modname/...;instead please use $MODDIR/...
#This will your scripts compatible even if Magisk change is mount point in the future
#########################################################################################
#########################################################################################
@MODDIR=${0%/*}

# This script will be executed in late_start service mode
# More info the main Magisk thread
