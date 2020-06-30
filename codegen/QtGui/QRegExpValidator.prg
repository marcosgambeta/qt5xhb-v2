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

$prototype=QRegExpValidator ( QObject * parent = nullptr )
$internalConstructor=|new1|QObject *=nullptr

$prototype=QRegExpValidator ( const QRegExp & rx, QObject * parent = nullptr )
$internalConstructor=|new2|const QRegExp &,QObject *=nullptr

/*
[1]QRegExpValidator ( QObject * parent = nullptr )
[2]QRegExpValidator ( const QRegExp & rx, QObject * parent = nullptr )
*/

HB_FUNC_STATIC( QREGEXPVALIDATOR_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QRegExpValidator_new1();
  }
  else if( ISBETWEEN(1,2) && ISQREGEXP(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QRegExpValidator_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=const QRegExp & regExp() const

$prototypeV2=void setRegExp( const QRegExp & rx )

$prototypeV2=virtual QValidator::State validate( QString & input, int & pos ) const

#pragma ENDDUMP
