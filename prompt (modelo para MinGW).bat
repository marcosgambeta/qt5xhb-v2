rem
rem Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
rem
rem Copyright (c) 2026 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
rem
rem Command Prompt for MinGW
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
rem set HB_INC_DIR=C:\Harbour\include

rem Set C/C++ Compiler paths.
set CPP_BIN_DIR=C:\Qt\Tools\mingw810_64\bin

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

pause
