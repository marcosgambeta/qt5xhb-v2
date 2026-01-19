rem
rem Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
rem
rem Copyright (c) 2026 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
rem
rem Batch for MSYS2/MinGW64
rem

rem This script open a command prompt to work with Harbour 3.4 and qt5xhb-v2 libraries.

rem This file is an example/model. Make a copy and adjust the paths.

rem Requisites:
rem MinGW64 toolchain
rem Qt Framework 5
rem Harbour 3.4
rem qt5xhb-v2

rem Instructions:
rem Copy this script to the same folder where you have the script "msys2_mingw64_hb34_build.bat".
rem Adjust the paths if necessary.
rem Execute this script and execute the commands below:
rem cd qt5xhb-v2 <ENTER>
rem cd examples <ENTER>
rem hbmk2 mainwindow ../qt5xhb_515_msys2.hbc -gc3 -gtgui <ENTER>
rem mainwindow <ENTER>

rem Set Qt Framework paths.
set QT_BIN_DIR=C:\msys64\mingw64\bin
set QT_INC_DIR=C:\msys64\mingw64\include
set QT_LIB_DIR=C:\msys64\mingw64\lib

rem Set Harbour paths.
set HB_BIN_DIR=%CD%\hb34\bin
rem set HB_INC_DIR=%CD%\hb34\include
set HB_COMPILER=mingw64

rem Set C/C++ Compiler paths.
set CPP_BIN_DIR=C:\msys64\mingw64\bin

rem Configure the PATH variable according to the variables defined above.
set PATH=%QT_BIN_DIR%;%HB_BIN_DIR%;%CPP_BIN_DIR%;%PATH%

%ComSpec%

rem Clears the variables.
set QT_BIN_DIR=
set QT_INC_DIR=
set QT_LIB_DIR=
set HB_BIN_DIR=
rem set HB_INC_DIR=
set CPP_BIN_DIR=
set HB_COMPILER=

pause
