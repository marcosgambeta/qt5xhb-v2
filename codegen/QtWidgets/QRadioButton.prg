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

$beginClassFrom=QAbstractButton

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QRadioButton ( QWidget * parent = nullptr )
$internalConstructor=|new1|QWidget *=nullptr

$prototype=explicit QRadioButton ( const QString & text, QWidget * parent = nullptr )
$internalConstructor=|new2|const QString &,QWidget *=nullptr

//[1]explicit QRadioButton ( QWidget * parent = nullptr )
//[2]explicit QRadioButton ( const QString & text, QWidget * parent = nullptr )

HB_FUNC_STATIC( QRADIOBUTTON_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QRadioButton_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQWIDGET(2) )
  {
    QRadioButton_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QSize sizeHint () const
$method=|QSize|sizeHint|

$prototype=QSize minimumSizeHint() const
$method=|QSize|minimumSizeHint|

#pragma ENDDUMP
