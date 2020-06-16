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

$beginClassFrom=QFrame

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSplitter ( QWidget * parent = nullptr )
$internalConstructor=|new1|QWidget *=nullptr

$prototype=QSplitter ( Qt::Orientation orientation, QWidget * parent = nullptr )
$internalConstructor=|new2|Qt::Orientation,QWidget *=nullptr

/*
[1]QSplitter ( QWidget * parent = nullptr )
[2]QSplitter ( Qt::Orientation orientation, QWidget * parent = nullptr )
*/

HB_FUNC_STATIC( QSPLITTER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QSplitter_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTQWIDGET(2) )
  {
    QSplitter_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void addWidget ( QWidget * widget )
$method=|void|addWidget|QWidget *

$prototypeV2=bool childrenCollapsible() const

$prototypeV2=int count() const

$prototype=void getRange ( int index, int * min, int * max ) const
$method=|void|getRange|int,int *,int *

$prototype=QSplitterHandle * handle ( int index ) const
$method=|QSplitterHandle *|handle|int

$prototypeV2=int handleWidth() const

$prototype=int indexOf ( QWidget * widget ) const
$method=|int|indexOf|QWidget *

$prototype=void insertWidget ( int index, QWidget * widget )
$method=|void|insertWidget|int,QWidget *

$prototype=bool isCollapsible ( int index ) const
$method=|bool|isCollapsible|int

$prototypeV2=bool opaqueResize() const

$prototypeV2=Qt::Orientation orientation() const

$prototypeV2=void refresh()

$prototype=bool restoreState ( const QByteArray & state )
$method=|bool|restoreState|const QByteArray &

$prototypeV2=QByteArray saveState() const

$prototype=void setChildrenCollapsible ( bool )
$method=|void|setChildrenCollapsible|bool

$prototype=void setCollapsible ( int index, bool collapse )
$method=|void|setCollapsible|int,bool

$prototype=void setHandleWidth ( int )
$method=|void|setHandleWidth|int

$prototype=void setOpaqueResize ( bool opaque = true )
$method=|void|setOpaqueResize|bool=true

$prototype=void setOrientation ( Qt::Orientation )
$method=|void|setOrientation|Qt::Orientation

$prototype=void setStretchFactor ( int index, int stretch )
$method=|void|setStretchFactor|int,int

$prototype=QWidget * widget ( int index ) const
$method=|QWidget *|widget|int

$prototypeV2=virtual QSize minimumSizeHint() const

$prototypeV2=virtual QSize sizeHint() const

%%
%% SIGNALS
%%

$prototype=void splitterMoved( int pos, int index )
$signalMethod=|void|splitterMoved|int,int

#pragma ENDDUMP
