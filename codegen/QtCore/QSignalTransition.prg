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

$beginClassFrom=QAbstractTransition

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSignalTransition(QState *sourceState = nullptr)
$internalConstructor=|new1|QState *=nullptr

$prototype=QSignalTransition(const QObject *sender, const char *signal,QState *sourceState = nullptr)
$internalConstructor=|new2|const QObject *,const char *,QState *=nullptr

/*
[1]QSignalTransition(QState *sourceState = nullptr)
[2]QSignalTransition(const QObject *sender, const char *signal,QState *sourceState = nullptr)
*/

HB_FUNC_STATIC( QSIGNALTRANSITION_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    QSignalTransition_new1();
  }
  else if( ISBETWEEN(2,3) && ISQOBJECT(1) && ISCHAR(2) && (ISQSTATE(3)||ISNIL(3)) )
  {
    QSignalTransition_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QObject * senderObject() const

$prototypeV2=void setSenderObject( const QObject * sender )

$prototypeV2=QByteArray signal() const

$prototypeV2=void setSignal( const QByteArray & signal )

#pragma ENDDUMP
