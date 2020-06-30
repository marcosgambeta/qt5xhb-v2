%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QEventLoop ( QObject * parent = nullptr )
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototypeV2=int exec( QEventLoop::ProcessEventsFlags flags = QEventLoop::AllEvents )

$prototypeV2=void exit( int returnCode = 0 )

$prototypeV2=bool isRunning() const

$prototype=bool processEvents ( ProcessEventsFlags flags = AllEvents )
$internalMethod=|bool|processEvents,processEvents1|QEventLoop::ProcessEventsFlags=QEventLoop::AllEvents

$prototype=void processEvents ( ProcessEventsFlags flags, int maxTime )
$internalMethod=|void|processEvents,processEvents2|QEventLoop::ProcessEventsFlags,int

/*
[1]bool processEvents ( ProcessEventsFlags flags = AllEvents )
[2]void processEvents ( ProcessEventsFlags flags, int maxTime )
*/

HB_FUNC_STATIC( QEVENTLOOP_PROCESSEVENTS )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QEventLoop_processEvents1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QEventLoop_processEvents2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=processEvents

$prototypeV2=void wakeUp()

$prototypeV2=void quit()

#pragma ENDDUMP
