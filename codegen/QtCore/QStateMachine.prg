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

$prototypeV2=void addState( QAbstractState * state )

$prototypeV2=void removeState( QAbstractState * state )

$prototypeV2=QStateMachine::Error error() const

$prototypeV2=QString errorString() const

$prototypeV2=void clearError()

$prototypeV2=bool isRunning() const

$prototypeV2=bool isAnimated() const

$prototypeV2=void setAnimated( bool enabled )

$prototypeV2=void addDefaultAnimation( QAbstractAnimation * animation )

$prototypeV2=QList<QAbstractAnimation *> defaultAnimations() const

$prototypeV2=void removeDefaultAnimation( QAbstractAnimation * animation )

$prototypeV2=QState::RestorePolicy globalRestorePolicy() const

$prototypeV2=void setGlobalRestorePolicy( QState::RestorePolicy restorePolicy )

$prototypeV2=void postEvent( QEvent * event, QStateMachine::EventPriority priority = QStateMachine::NormalPriority )

$prototypeV2=int postDelayedEvent( QEvent * event, int delay )

$prototypeV2=bool cancelDelayedEvent( int id )

$prototypeV2=bool eventFilter( QObject * watched, QEvent * event )

$prototypeV2=void start()

$prototypeV2=void stop()

%%
%% SIGNALS
%%

$prototype=void started()
$signalMethod=|void|started|

$prototype=void stopped()
$signalMethod=|void|stopped|

#pragma ENDDUMP
