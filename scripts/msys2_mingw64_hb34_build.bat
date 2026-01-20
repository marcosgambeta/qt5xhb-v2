rem
rem Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
rem
rem Copyright (c) 2026 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
rem
rem Batch for MSYS2/MinGW64
rem

rem This script build Harbour 3.4 and qt5xhb-v2 using msys2/mingw64.

rem Requisites:
rem git
rem MinGW64 toolchain
rem Qt Framework 5

rem To install MinGW64 toolchain using MSYS2:
rem pacman -S mingw-w64-x86_64-toolchain

rem To install Qt Framework 5 using MSYS2:
rem pacman -S mingw-w64-x86_64-qt5

rem Instructions: 
rem This file is an example/model. Make a copy and adjust the paths.
rem Make a folder and copy this script to the folder.
rem Adjust the paths if necessary.
rem Execute the script and wait.
rem Check if the all libraries was created (40 files):
rem qt5xhb-v2\lib\win\mingw64\libhbqaxcontainer5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqaxserver5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtbluetooth5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtcharts5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtcore5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtdatavisualization5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtdbus5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtdesigner5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtgamepad5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtgui5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqthelp5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtlocation5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtmultimedia5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtmultimediawidgets5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtnetwork5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtnetworkauth5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtopengl5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtpositioning5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtprintsupport5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtpurchasing5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtqml5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtquick5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtquickwidgets5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtscript5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtscripttools5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtsensors5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtserialbus5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtserialport5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtsql5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtsvg5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqttexttospeech5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtuitools5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtvirtualkeyboard5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtwebchannel5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtwebsockets5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtwebview5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtwidgets5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtwinextras5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtxml5.a
rem qt5xhb-v2\lib\win\mingw64\libhbqtxmlpatterns5.a

rem Add bin folder of MSYS2/MinGW64 to path:
set PATH=C:\msys64\mingw64\bin;%PATH%

rem Clone Harbour 3.4
git clone --depth 1 https://github.com/vszakats/hb.git

rem Clone qt5xhb-v2
git clone --depth 1 https://github.com/marcosgambeta/qt5xhb-v2.git

rem Build Harbour 3.4
set HB_COMPILER=mingw64
set HB_INSTALL_PREFIX=%CD%\hb34
cd hb
mingw32-make -j %NUMBER_OF_PROCESSORS% install 1>log1.log 2>log2.log
cd ..

rem Build qt5xhb-v2
rem Set Qt Framework paths.
set QT_BIN_DIR=C:\msys64\mingw64\bin
set QT_INC_DIR=C:\msys64\mingw64\include
set QT_LIB_DIR=C:\msys64\mingw64\lib
rem Set Harbour paths.
set HB_BIN_DIR=%CD%\hb34\bin
set HB_INC_DIR=%CD%\hb34\include
rem Set the platform (win).
set QTPLATFORM=win
rem Set the C/C++ compiler (mingw or mingw64).
set QTCOMP=mingw64
rem Set the Harbour project (harbour or xharbour).
set HBCOMP=harbour
rem 
cd qt5xhb-v2
rem Creates folders for libraries, if they don't already exist.
if not exist lib mkdir lib
if not exist lib\%QTPLATFORM% mkdir lib\%QTPLATFORM%
if not exist lib\%QTPLATFORM%\%QTCOMP% mkdir lib\%QTPLATFORM%\%QTCOMP%
rem Creates folders for objects, if they don't already exist.
if not exist obj mkdir obj
if not exist obj\%QTPLATFORM% mkdir obj\%QTPLATFORM%
if not exist obj\%QTPLATFORM%\%QTCOMP% mkdir obj\%QTPLATFORM%\%QTCOMP%
rem Compile the libraries.
mingw32-make -f makefile_mingw -j %NUMBER_OF_PROCESSORS% 1>%QTPLATFORM%_%QTCOMP%-1.log 2>%QTPLATFORM%_%QTCOMP%-2.log

rem Clears the variables.
set HB_COMPILER=
set HB_INSTALL_PREFIX=
set QT_BIN_DIR=
set QT_INC_DIR=
set QT_LIB_DIR=
set HB_BIN_DIR=
set HB_INC_DIR=
set QTPLATFORM=
set QTCOMP=
set HBCOMP=

pause
