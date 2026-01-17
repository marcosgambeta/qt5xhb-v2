# Qt5xHb v2

Bindings libraries for Harbour++/Harbour/xHarbour and Qt Framework 5.

### Requisites

Qt Framework 5.7 or upper  
C++11 or upper  

### Basic steps

1. Install the Qt Framework 5 of your choice.

2. Download and compile the [x]Harbour of your choice: Harbour 3.2.0dev, Harbour 3.4.0dev (fork of Viktor Szakats), xHarbour or Harbour++.

https://github.com/harbour/core  
https://github.com/vszakats/hb  
https://github.com/xHarbour-org/xharbour  
https://github.com/marcosgambeta/harbourpp-v1  

3. Download and compile the Qt5xHb v2. 

Open a issue if you have problems with the compilation:

https://github.com/marcosgambeta/qt5xhb-v2/issues  

### Using Qt 5.15.2 (MS-Windows and MinGW)

#### Installing the Qt Framework 5.15

Get the installer in the link below:

https://www.qt.io/development/download-open-source

The installer require login and password. Register here if necessary:

https://login.qt.io/register

Follow the installer instructions to install the Qt Framework (MinGW version) 32-bit and/or 64-bit.

#### Compiling the Harbour 3.2.0dev

(work in progress)

#### Compiling the Harbour 3.4.0dev

Get the Harbour source code. Open a command prompt and follow the instructions below:

Add the C++ compiler to the path:  
```Batch
set PATH=C:\Qt\Tools\mingw810_32\bin;%PATH%
```
or  
```Batch
set PATH=C:\Qt\Tools\mingw810_64\bin;%PATH%
```

Define the folder where the binaries will be installed:  
```Batch
set HB_INSTALL_PREFIX=C:\Harbour
```

Compile the Harbour source code, executing the command below:   
```Batch
mingw32-make -j %NUMBER_OF_PROCESSORS% install
```

#### Compiling the xHarbour source code

(work in progress)

#### Compiling the Harbour++ source code

(work in progress)

#### Compiling the Qt5xHb source code

Get the Qt5xHb source code. Open a command prompt and follow the instructions below:

Add the bin folders of the C++ compiler, Qt Framework and Harbour to PATH:  
```Batch
set PATH=C:\Qt\Tools\mingw810_32\bin;%PATH%
set PATH=C:\Qt\5.15.2\mingw81_32\bin;%PATH%
set PATH=C:\Harbour\bin;%PATH%
```
or  
```Batch
set PATH=C:\Qt\Tools\mingw810_64\bin;%PATH%
set PATH=C:\Qt\5.15.2\mingw81_64\bin;%PATH%
set PATH=C:\Harbour\bin;%PATH%
```

Define the variables QT_INC_DIR and QT_LIB_DIR:  
```Batch
set QT_INC_DIR=C:\Qt\5.15.2\mingw81_32\include
set QT_LIB_DIR=C:\Qt\5.15.2\mingw81_32\lib
```
or  
```Batch
set QT_INC_DIR=C:\Qt\5.15.2\mingw81_64\include
set QT_LIB_DIR=C:\Qt\5.15.2\mingw81_64\lib
```

Compile the libraries using the hbmk2 tool:  
```Batch
hbmk2 qt5xhb.hbp -jobs=%NUMBER_OF_PROCESSORS%
```

Test the libraries:
```Batch
cd examples
hbmk2 mainwindow ../qt5xhb_515.hbc -gc3 -gtgui <ENTER>
mainwindow <ENTER>
```

Test the windeployqt tool:  
```Batch
windeployqt mainwindow.exe <ENTER>
```

Execute the mainwindow.exe with a double click.
