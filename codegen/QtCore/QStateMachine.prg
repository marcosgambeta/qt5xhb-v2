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

$beginClassFrom=QState

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStateMachine(QObject *parent = nullptr)
$internalConstructor=|new1|QObject *=nullptr

$prototype=QStateMachine(QState::ChildMode childMode, QObject *parent = nullptr)
$internalConstructor=|new2|QState::ChildMode,QObject *=nullptr

/*
[1]QStateMachine(QObject *parent = nullptr)
[2]QStateMachine(QState::ChildMode childMode, QObject *parent = nullptr)
*/

HB_FUNC_STATIC( QSTATEMACHINE_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QStateMachine_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTQOBJECT(2) )
  {
    QStateMachine_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void addState(QAbstractState *state)
$method=|void|addState|QAbstractState *

$prototype=void removeState(QAbstractState *state)
$method=|void|removeState|QAbstractState *

$prototype=Error error() const
$method=|QStateMachine::Error|error|

$prototype=QString errorString() const
$method=|QString|errorString|

$prototype=void clearError()
$method=|void|clearError|

$prototype=bool isRunning() const
$method=|bool|isRunning|

$prototype=bool isAnimated() const
$method=|bool|isAnimated|

$prototype=void setAnimated(bool enabled)
$method=|void|setAnimated|bool

$prototype=void addDefaultAnimation(QAbstractAnimation *animation)
$method=|void|addDefaultAnimation|QAbstractAnimation *

$prototype=QList<QAbstractAnimation *> defaultAnimations() const
$method=|QList<QAbstractAnimation *>|defaultAnimations|

$prototype=void removeDefaultAnimation(QAbstractAnimation *animation)
$method=|void|removeDefaultAnimation|QAbstractAnimation *

$prototype=QState::RestorePolicy globalRestorePolicy() const
$method=|QState::RestorePolicy|globalRestorePolicy|

$prototype=void setGlobalRestorePolicy(QState::RestorePolicy restorePolicy)
$method=|void|setGlobalRestorePolicy|QState::RestorePolicy

$prototype=void postEvent(QEvent *event, EventPriority priority = NormalPriority)
$method=|void|postEvent|QEvent *,QStateMachine::EventPriority=QStateMachine::NormalPriority

$prototype=int postDelayedEvent(QEvent *event, int delay)
$method=|int|postDelayedEvent|QEvent *,int

$prototype=bool cancelDelayedEvent(int id)
$method=|bool|cancelDelayedEvent|int

$prototype=bool eventFilter(QObject *watched, QEvent *event)
$method=|bool|eventFilter|QObject *,QEvent *

$prototype=void start()
$method=|void|start|

$prototype=void stop()
$method=|void|stop|

%%
%% SIGNALS
%%

$prototype=void started()
$signalMethod=|void|started|

$prototype=void stopped()
$signalMethod=|void|stopped|

#pragma ENDDUMP
