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

$prototype=QRegularExpressionValidator(QObject *parent = nullptr)
$internalConstructor=|new1|QObject *=nullptr

$prototype=QRegularExpressionValidator(const QRegularExpression &re, QObject *parent = nullptr)
$internalConstructor=|new2|const QRegularExpression &,QObject *=nullptr

//[1]QRegularExpressionValidator(QObject *parent = nullptr)
//[2]QRegularExpressionValidator(const QRegularExpression &re, QObject *parent = nullptr)

HB_FUNC_STATIC( QREGULAREXPRESSIONVALIDATOR_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QRegularExpressionValidator_new1();
  }
  else if( ISBETWEEN(1,2) && ISQREGULAREXPRESSION(1) && ISOPTQOBJECT(2) )
  {
    QRegularExpressionValidator_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QRegularExpression regularExpression() const
$method=|QRegularExpression|regularExpression|

$prototype=void setRegularExpression(const QRegularExpression &re)
$method=|void|setRegularExpression|const QRegularExpression &

%%
%% SIGNALS
%%

$prototype=void regularExpressionChanged( const QRegularExpression & re )
$signalMethod=|void|regularExpressionChanged|const QRegularExpression &

#pragma ENDDUMP
