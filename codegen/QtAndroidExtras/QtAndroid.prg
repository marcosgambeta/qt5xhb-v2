%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtAndroidExtras
$added=5,3,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototypeV2=static QAndroidJniObject androidActivity()

$prototypeV2=static int androidSdkVersion()

$prototypeV2=static void startIntentSender( const QAndroidJniObject & intentSender, int receiverRequestCode, QAndroidActivityResultReceiver * resultReceiver = nullptr )

$prototypeV2=static void startActivity( const QAndroidJniObject & intent, int receiverRequestCode, QAndroidActivityResultReceiver * resultReceiver = nullptr )

$prototypeV2=5,7,0|static QAndroidJniObject androidService()

$prototypeV2=5,8,0|static QAndroidJniObject androidContext()

$prototypeV2=5,10,0|static bool bindService( const QAndroidIntent & serviceIntent, const QAndroidServiceConnection & serviceConnection, QtAndroid::BindFlags flags = QtAndroid::BindFlag::None )

%% typedef std::function<void()> Runnable

$prototype=static void runOnAndroidThread(const Runnable &runnable)

$prototype=static void runOnAndroidThreadSync(const Runnable &runnable, int timeoutMs = INT_MAX)

$prototype=static void hideSplashScreen()
$internalStaticMethod=5,7,0|void|hideSplashScreen,hideSplashScreen1|

$prototype=static void hideSplashScreen(int duration)
$internalStaticMethod=5,10,0|void|hideSplashScreen,hideSplashScreen2|int

/*
[1]static void hideSplashScreen()
[2]static void hideSplashScreen(int duration)
*/

HB_FUNC_STATIC( QTANDROID_HIDESPLASHSCREEN )
{
  if( ISNUMPAR(0) )
  {
    QtAndroid_hideSplashScreen1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QtAndroid_hideSplashScreen2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

%% typedef QHash<QString, PermissionResult> PermissionResultMap

%% typedef std::function<void(const PermissionResultMap &)> PermissionResultCallback

$prototype=static void requestPermissions(const QStringList &permissions, const PermissionResultCallback &callbackFunc)

$prototype=static PermissionResultMap requestPermissionsSync(const QStringList &permissions, int timeoutMs = INT_MAX)

$prototypeV2=5,10,0|static QtAndroid::PermissionResult checkPermission( const QString & permission )

$prototypeV2=5,10,0|static bool shouldShowRequestPermissionRationale( const QString & permission )

$extraMethods

#pragma ENDDUMP
