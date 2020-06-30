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

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDoubleValidator ( QObject * parent = nullptr )
$internalConstructor=|new1|QObject *=nullptr

$prototype=QDoubleValidator ( double bottom, double top, int decimals, QObject * parent = nullptr )
$internalConstructor=|new2|double,double,int,QObject *=nullptr

/*
[1]QDoubleValidator ( QObject * parent = nullptr )
[2]QDoubleValidator ( double bottom, double top, int decimals, QObject * parent = nullptr )
*/

HB_FUNC_STATIC( QDOUBLEVALIDATOR_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QDoubleValidator_new1();
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISOPTQOBJECT(4) )
  {
    QDoubleValidator_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=double bottom() const

$prototypeV2=int decimals() const

$prototypeV2=QDoubleValidator::Notation notation() const

$prototypeV2=void setBottom( double )

$prototypeV2=void setDecimals( int )

$prototypeV2=void setNotation( QDoubleValidator::Notation )

$prototypeV2=virtual void setRange( double minimum, double maximum, int decimals = 0 )

$prototypeV2=void setTop( double )

$prototypeV2=double top() const

$prototypeV2=virtual QValidator::State validate( QString & input, int & pos ) const

#pragma ENDDUMP
