%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGroupBox ( QWidget * parent = nullptr )
$internalConstructor=|new1|QWidget *=nullptr

$prototype=QGroupBox ( const QString & title, QWidget * parent = nullptr )
$internalConstructor=|new2|const QString &,QWidget *=nullptr

/*
[1]QGroupBox ( QWidget * parent = nullptr )
[2]QGroupBox ( const QString & title, QWidget * parent = nullptr )
*/

HB_FUNC_STATIC( QGROUPBOX_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QGroupBox_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQWIDGET(2) )
  {
    QGroupBox_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=Qt::Alignment alignment() const

$prototypeV2=bool isCheckable() const

$prototypeV2=bool isChecked() const

$prototypeV2=bool isFlat() const

$prototype=void setAlignment ( int alignment )
$method=|void|setAlignment|int

$prototype=void setCheckable ( bool checkable )
$method=|void|setCheckable|bool

$prototype=void setFlat ( bool flat )
$method=|void|setFlat|bool

$prototype=void setTitle ( const QString & title )
$method=|void|setTitle|const QString &

$prototypeV2=QString title() const

$prototypeV2=virtual QSize minimumSizeHint() const

$prototype=void setChecked ( bool checked )
$method=|void|setChecked|bool

%%
%% SIGNALS
%%

$prototype=void clicked( bool checked = false )
$signalMethod=|void|clicked|bool

$prototype=void toggled( bool on )
$signalMethod=|void|toggled|bool

#pragma ENDDUMP
