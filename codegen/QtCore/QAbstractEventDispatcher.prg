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

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=bool filterNativeEvent( const QByteArray & eventType, void * message, long * result )

$prototypeV2=virtual void flush() = 0

$prototypeV2=virtual bool hasPendingEvents() = 0

$prototypeV2=void installNativeEventFilter( QAbstractNativeEventFilter * filterObj )

$prototypeV2=virtual void interrupt() = 0

$prototypeV2=virtual bool processEvents( QEventLoop::ProcessEventsFlags flags ) = 0

$prototype=virtual bool registerEventNotifier(QWinEventNotifier * notifier) = 0
$virtualMethod=|bool|registerEventNotifier|QWinEventNotifier *|#ifdef Q_OS_WIN

$prototypeV2=virtual void registerSocketNotifier( QSocketNotifier * notifier ) = 0

$prototype=int registerTimer(int interval, Qt::TimerType timerType, QObject * object)
$internalMethod=|int|registerTimer,registerTimer1|int,Qt::TimerType,QObject *

$prototype=virtual void registerTimer(int timerId, int interval, Qt::TimerType timerType, QObject * object) = 0
$internalVirtualMethod=|void|registerTimer,registerTimer2|int,int,Qt::TimerType,QObject *

/*
[1]int registerTimer(int interval, Qt::TimerType timerType, QObject * object)
[2]virtual void registerTimer(int timerId, int interval, Qt::TimerType timerType, QObject * object) = 0
*/

HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_REGISTERTIMER )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQOBJECT(3) )
  {
    QAbstractEventDispatcher_registerTimer1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISQOBJECT(4) )
  {
    QAbstractEventDispatcher_registerTimer2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=registerTimer

$prototypeV2=virtual int remainingTime( int timerId ) = 0

$prototypeV2=void removeNativeEventFilter( QAbstractNativeEventFilter * filter )

$prototype=virtual void unregisterEventNotifier(QWinEventNotifier * notifier) = 0
$virtualMethod=|void|unregisterEventNotifier|QWinEventNotifier *|#ifdef Q_OS_WIN

$prototypeV2=virtual void unregisterSocketNotifier( QSocketNotifier * notifier ) = 0

$prototypeV2=virtual bool unregisterTimer( int timerId ) = 0

$prototypeV2=virtual bool unregisterTimers( QObject * object ) = 0

$prototypeV2=virtual void wakeUp() = 0

$prototypeV2=static QAbstractEventDispatcher * instance( QThread * thread = nullptr )

$prototypeV2=virtual void startingUp()

$prototypeV2=virtual void closingDown()

%%
%% SIGNALS
%%

$prototype=void aboutToBlock()
$signalMethod=|void|aboutToBlock|

$prototype=void awake()
$signalMethod=|void|awake|

#pragma ENDDUMP
