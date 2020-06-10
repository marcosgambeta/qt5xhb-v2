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

$prototype=virtual void fixup(QString & input) const
$virtualMethod=|void|fixup|QString &

$prototypeV2=QLocale locale() const

$prototype=void setBottom(int)
$method=|void|setBottom|int

$prototype=void setLocale(const QLocale & locale)
$method=|void|setLocale|const QLocale &

$prototype=virtual void setRange(int bottom, int top)
$virtualMethod=|void|setRange|int,int

$prototype=void setTop(int)
$method=|void|setTop|int

$prototypeV2=int top() const

$prototype=virtual State validate(QString & input, int & pos) const = 0
$virtualMethod=|QValidator::State|validate|QString &,int &

%%
%% SIGNALS
%%

$prototype=void changed()
$signalMethod=|void|changed|

#pragma ENDDUMP
