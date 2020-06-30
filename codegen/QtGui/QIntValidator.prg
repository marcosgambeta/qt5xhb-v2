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

$beginClassFrom=QValidator

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QIntValidator(QObject * parent = nullptr)
$internalConstructor=|new1|QObject *=nullptr

$prototype=QIntValidator(int minimum, int maximum, QObject * parent = nullptr)
$internalConstructor=|new2|int,int,QObject *=nullptr

/*
[1]QIntValidator(QObject * parent = nullptr)
[2]QIntValidator(int minimum, int maximum, QObject * parent = nullptr)
*/

HB_FUNC_STATIC( QINTVALIDATOR_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QIntValidator_new1();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && ISOPTQOBJECT(3) )
  {
    QIntValidator_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=int bottom() const

$prototypeV2=virtual void fixup( QString & input ) const

$prototypeV2=QLocale locale() const

$prototypeV2=void setBottom( int )

$prototypeV2=void setLocale( const QLocale & locale )

$prototypeV2=virtual void setRange( int bottom, int top )

$prototypeV2=void setTop( int )

$prototypeV2=int top() const

$prototypeV2=virtual QValidator::State validate( QString & input, int & pos ) const = 0

%%
%% SIGNALS
%%

$prototype=void changed()
$signalMethod=|void|changed|

#pragma ENDDUMP
