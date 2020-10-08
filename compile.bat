@echo off

cd\
cd C:\QuakeDev\quake-leveldesign-starterkit-master


echo Copying Files...
copy C:\QuakeDev\quake-leveldesign-starterkit-master\id1\maps\zombiemap.map C:\QuakeDev\quake-leveldesign-starterkit-master


echo Converting map...


echo --------------QBSP--------------
C:\QuakeDev\quake-leveldesign-starterkit-master\tools\ericw-tools\bin\qbsp.exe zombiemap

echo --------------VIS---------------
C:\QuakeDev\quake-leveldesign-starterkit-master\tools\ericw-tools\bin\vis.exe zombiemap

echo -------------LIGHT--------------
C:\QuakeDev\quake-leveldesign-starterkit-master\tools\ericw-tools\bin\light.exe zombiemap

copy zombiemap.bsp C:\QuakeDev\quake-leveldesign-starterkit-master\id1\maps
copy zombiemap.pts C:\QuakeDev\quake-leveldesign-starterkit-master\id1\maps
copy zombiemap.lit C:\QuakeDev\quake-leveldesign-starterkit-master\id1\maps
pause
cd\
cd C:\QuakeDev\quake-leveldesign-starterkit-master
quakespasm  +map zombiemap
