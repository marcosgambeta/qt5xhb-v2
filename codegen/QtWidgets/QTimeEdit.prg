%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QDateTimeEdit

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTimeEdit ( QWidget * parent = nullptr )
$internalConstructor=|new1|QWidget *=nullptr

$prototype=QTimeEdit ( const QTime & time, QWidget * parent = nullptr )
$internalConstructor=|new2|const QTime &,QWidget *=nullptr

//[1]QTimeEdit ( QWidget * parent = nullptr )
//[2]QTimeEdit ( const QTime & time, QWidget * parent = nullptr )

HB_FUNC_STATIC( QTIMEEDIT_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QTimeEdit_new1();
  }
  else if( ISBETWEEN(1,2) && ISQTIME(1) && ISOPTQWIDGET(2) )
  {
    QTimeEdit_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

#pragma ENDDUMP
