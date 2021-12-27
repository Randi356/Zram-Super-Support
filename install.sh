#################################
#
# Magisk Modules Installer Script
#
##################################
##################################
#
# Instructions:
#
# 1. Place your files into system folder (delete the placehoder file)
# 2. Fill in your module's info into module.prop
# 3. Configure and implemet callbacks in this file
# 4. If you need boot scripts, add them into common/post-fs-data.sh or common/service.sh
# 5. Add your additional or modified system properties into commo/system.prop
#
#####################################

#####################################
# Config Flags
#####################################
# Set to true you do *NOT* want Magisk to mount
# any files for you Most modules would NOT want
# to set this flag to true
SKIPMOUNT=false

# Set to true if you need to enable magic mount
# Most mods would like if to be enable
AUTOMOUNT=false

# Set to true if you need load system.prop
PROPFILE=false

# Set to true if you need post-fs-data scripts
POSTFSDATA=true

# Set to true if yoy need late_start service script
LATESTARTSERVICE=true

#######################
# Replace list
#######################

# list all directories you want to directly
# Check the documentations for more into why you would need this

# Construst your list in the following format 
# this in an example
REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"

# Construst your own list here
REPLACE="
" 

#################################
#
# Functions Callbacks
#
# the followimg functions will be called by the installation framework.
# you do not have the ability to modify update-binary, the only way you can customize
# installition is through implementing these fucntions. 
#
# whe running your callbacks, the installation framewrok will make surethe Magisk
# internal busybox path is *PREFENDED* to PATH, so all common commadns shall exist.
# Also, it will make sure /data, /system, and /vendor is properly mounted.
#
#####################
#####################
#
# The installation framework will export some variables and functions. 
# You should use these variables and functions fro installation. 
#
# ! DO NOT use any Magisk internal paths as those are NOT public API. 
# ! DO NOT use other functions in util_functions.sh as they are NOT public API. 
# !  Non public APIs are not guranteed to maintain compatibility between release.
#
# Available variables:
#
#
