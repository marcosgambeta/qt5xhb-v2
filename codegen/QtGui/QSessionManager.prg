%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototypeV2=QString sessionId() const

$prototypeV2=QString sessionKey() const

$prototypeV2=bool allowsInteraction()

$prototypeV2=bool allowsErrorInteraction()

$prototypeV2=void release()

$prototypeV2=void cancel()

$prototypeV2=void setRestartHint( QSessionManager::RestartHint )

$prototypeV2=QSessionManager::RestartHint restartHint() const

$prototypeV2=void setRestartCommand( const QStringList & )

$prototypeV2=QStringList restartCommand() const

$prototypeV2=void setDiscardCommand( const QStringList & )

$prototypeV2=QStringList discardCommand() const

$prototype=void setManagerProperty(const QString& name, const QString& value)
$internalMethod=|void|setManagerProperty,setManagerProperty1|const QString &,const QString &

$prototype=void setManagerProperty(const QString& name, const QStringList& value)
$internalMethod=|void|setManagerProperty,setManagerProperty2|const QString &,const QStringList &

/*
[1]void setManagerProperty(const QString& name, const QString& value)
[2]void setManagerProperty(const QString& name, const QStringList& value)
*/

HB_FUNC_STATIC( QSESSIONMANAGER_SETMANAGERPROPERTY )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QSessionManager_setManagerProperty1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QSessionManager_setManagerProperty2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setManagerProperty

$prototypeV2=bool isPhase2() const

$prototypeV2=void requestPhase2()

#pragma ENDDUMP
