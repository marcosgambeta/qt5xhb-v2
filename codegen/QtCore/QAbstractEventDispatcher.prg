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

$prototype=bool filterNativeEvent(const QByteArray & eventType, void * message, long * result)
$method=|bool|filterNativeEvent|const QByteArray &,void *,long *

$prototypeV2=virtual void flush() = 0

$prototypeV2=virtual bool hasPendingEvents() = 0

$prototype=void installNativeEventFilter(QAbstractNativeEventFilter * filterObj)
$method=|void|installNativeEventFilter|QAbstractNativeEventFilter *

$prototypeV2=virtual void interrupt() = 0

$prototype=virtual bool processEvents ( QEventLoop::ProcessEventsFlags flags ) = 0
$virtualMethod=|bool|processEvents|QEventLoop::ProcessEventsFlags

$prototype=virtual bool registerEventNotifier(QWinEventNotifier * notifier) = 0
$virtualMethod=|bool|registerEventNotifier|QWinEventNotifier *|#ifdef Q_OS_WIN

$prototype=virtual void registerSocketNotifier ( QSocketNotifier * notifier ) = 0
$virtualMethod=|void|registerSocketNotifier|QSocketNotifier *

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

$prototype=virtual int remainingTime(int timerId) = 0
$virtualMethod=|int|remainingTime|int

$prototype=void removeNativeEventFilter(QAbstractNativeEventFilter * filter)
$method=|void|removeNativeEventFilter|QAbstractNativeEventFilter *

$prototype=virtual void unregisterEventNotifier(QWinEventNotifier * notifier) = 0
$virtualMethod=|void|unregisterEventNotifier|QWinEventNotifier *|#ifdef Q_OS_WIN

$prototype=virtual void unregisterSocketNotifier ( QSocketNotifier * notifier ) = 0
$virtualMethod=|void|unregisterSocketNotifier|QSocketNotifier *

$prototype=virtual bool unregisterTimer ( int timerId ) = 0
$virtualMethod=|bool|unregisterTimer|int

$prototype=virtual bool unregisterTimers ( QObject * object ) = 0
$virtualMethod=|bool|unregisterTimers|QObject *

$prototypeV2=virtual void wakeUp() = 0

$prototype=static QAbstractEventDispatcher * instance ( QThread * thread = nullptr )
$staticMethod=|QAbstractEventDispatcher *|instance|QThread *=nullptr

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
