#!/bin/sh
rootdirectory="$PWD"
dirs="bionic frameworks/av frameworks/native system/core system/sepolicy system/netd"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
    echo "Applying $dir patches..."
	git apply $rootdirectory/device/xiaomi/hennessy/patches/$dir/*.patch
done

echo "Done!"
cd $rootdirectory
