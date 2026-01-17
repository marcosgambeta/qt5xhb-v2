rem
rem Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
rem
rem Copyright (c) 2026 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
rem
rem Batch for MinGW
rem

rem This file is an example/model. Make a copy and adjust the paths.

rem Creates a reduced PATH. Although optional, it avoids conflicts with other
rem programming tools installed in the development environment.
set PATH=%SYSTEMROOT%;%SYSTEMROOT%\system32

rem Set Qt Framework paths.
set QT_BIN_DIR=C:\Qt\5.15.2\mingw81_64\bin
set QT_INC_DIR=C:\Qt\5.15.2\mingw81_64\include
set QT_LIB_DIR=C:\Qt\5.15.2\mingw81_64\lib

rem Set Harbour paths.
set HB_BIN_DIR=C:\Harbour\bin
set HB_INC_DIR=C:\Harbour\include

rem Set C/C++ Compiler paths.
set CPP_BIN_DIR=C:\Qt\Tools\mingw810_64\bin

rem Configure the PATH variable according to the variables defined above.
set PATH=%QT_BIN_DIR%;%HB_BIN_DIR%;%CPP_BIN_DIR%;%PATH%

rem Set the platform (win).
set QTPLATFORM=win

rem Set the C/C++ compiler (mingw or mingw64).
set QTCOMP=mingw64

rem Set the Harbour project (harbour or xharbour).
set HBCOMP=harbour

rem Activate the line below to set the flag QT5XHB_DONT_CHECK_PARAMETERS.
rem set QT5XHB_USER_CFLAGS=-DQT5XHB_DONT_CHECK_PARAMETERS

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
set QT_BIN_DIR=
set QT_INC_DIR=
set QT_LIB_DIR=
set HB_BIN_DIR=
set HB_INC_DIR=
set CPP_BIN_DIR=
set QTPLATFORM=
set QTCOMP=
set HBCOMP=

pause
