%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtAndroidExtras
$added=5,10,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAndroidServiceConnection()
$internalConstructor=|new1|

$prototype=explicit QAndroidServiceConnection(const QAndroidJniObject &serviceConnection)
$internalConstructor=|new2|const QAndroidJniObject &

/*
[1]QAndroidServiceConnection()
[2]explicit QAndroidServiceConnection(const QAndroidJniObject &serviceConnection)
*/

HB_FUNC_STATIC( QANDROIDSERVICECONNECTION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QAndroidServiceConnection_new1();
  }
  else if( ISNUMPAR(1) && ISQANDROIDJNIOBJECT(1) )
  {
    QAndroidServiceConnection_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual ~QAndroidServiceConnection()
$deleteMethod

$prototype=virtual void onServiceConnected(const QString &name, const QAndroidBinder &serviceBinder) = 0
%% TODO: implementar

$prototype=virtual void onServiceDisconnected(const QString &name) = 0
%% TODO: implementar

$prototypeV2=QAndroidJniObject handle() const

$extraMethods

#pragma ENDDUMP
