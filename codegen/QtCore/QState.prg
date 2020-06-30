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

$beginClassFrom=QAbstractState

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QAbstractTransition>

$prototype=QState ( QState * parent = nullptr )
$internalConstructor=|new1|QState *=nullptr

$prototype=QState ( ChildMode childMode, QState * parent = nullptr )
$internalConstructor=|new2|QState::ChildMode,QState *=nullptr

/*
[1]QState ( QState * parent = nullptr )
[2]QState ( ChildMode childMode, QState * parent = nullptr )
*/

HB_FUNC_STATIC( QSTATE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    QState_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQSTATE(2)||ISNIL(2)) )
  {
    QState_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void addTransition ( QAbstractTransition * transition )
$internalMethod=|void|addTransition,addTransition1|QAbstractTransition *

$prototype=QSignalTransition * addTransition ( QObject * sender, const char * signal, QAbstractState * target )
$internalMethod=|QSignalTransition *|addTransition,addTransition2|QObject *,const char *,QAbstractState *

$prototype=QAbstractTransition * addTransition ( QAbstractState * target )
$internalMethod=|QAbstractTransition *|addTransition,addTransition3|QAbstractState *

/*
[1]void addTransition ( QAbstractTransition * transition )
[2]QSignalTransition * addTransition ( QObject * sender, const char * signal, QAbstractState * target )
[3]QAbstractTransition * addTransition ( QAbstractState * target )
*/

HB_FUNC_STATIC( QSTATE_ADDTRANSITION )
{
  if( ISNUMPAR(1) && ISQABSTRACTTRANSITION(1) )
  {
    QState_addTransition1();
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQABSTRACTSTATE(3) )
  {
    QState_addTransition2();
  }
  else if( ISNUMPAR(1) && ISQABSTRACTSTATE(1) )
  {
    QState_addTransition3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addTransition

$prototypeV2=void assignProperty( QObject * object, const char * name, const QVariant & value )

$prototypeV2=QState::ChildMode childMode() const

$prototypeV2=QAbstractState * errorState() const

$prototypeV2=QAbstractState * initialState() const

$prototypeV2=void removeTransition( QAbstractTransition * transition )

$prototypeV2=void setChildMode( QState::ChildMode mode )

$prototypeV2=void setErrorState( QAbstractState * state )

$prototypeV2=void setInitialState( QAbstractState * state )

$prototypeV2=QList<QAbstractTransition *> transitions() const

%%
%% SIGNALS
%%

$prototype=void finished()
$signalMethod=|void|finished|

$prototype=void propertiesAssigned()
$signalMethod=|void|propertiesAssigned|

#pragma ENDDUMP
