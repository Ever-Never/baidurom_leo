#!/bin/bash
apkBaseName=$1
smaliDir=$2

if [ "$apkBaseName" = "BaiduGallery3D" ];then
	echo ">>>custom_app in BaiduGallery3D"
#	cp -rf /home/ever-never/PatchRom/BaiduOS/devices/leo_patched/BaiduGallery3D/AndroidManifest.xml $smaliDir
	cp -rf other/BaiduGallery3D/res/values/styles.xml $smaliDir/res/values
	cp -rf other/BaiduGallery3D/AndroidManifest.xml $smaliDir
fi

if [ "$apkBaseName" = "Camera" ];then
	echo ">>>custom_app in Camera"
	cp -rf /home/ever-never/PatchRom/BaiduRe/baidu/frameworks/overlay/packages/apps/Camera/res/* $smaliDir/res/
fi

if [ "$apkBaseName" = "HomePro" ];then
	echo ">>>custom_app in HomePro"
	sed -i '/com.baidu.camera.Camera/d' $smaliDir/res/xml/default_workspace.xml
fi

