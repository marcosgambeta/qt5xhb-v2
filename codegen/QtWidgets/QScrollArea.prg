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

$beginClassFrom=QAbstractScrollArea

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QScrollArea ( QWidget * parent = nullptr )
$constructor=|new|QWidget *=nullptr

$deleteMethod

$prototypeV2=Qt::Alignment alignment() const

$prototype=void ensureVisible ( int x, int y, int xmargin = 50, int ymargin = 50 )
$method=|void|ensureVisible|int,int,int=50,int=50

$prototype=void ensureWidgetVisible ( QWidget * childWidget, int xmargin = 50, int ymargin = 50 )
$method=|void|ensureWidgetVisible|QWidget *,int=50,int=50

$prototype=void setAlignment ( Qt::Alignment )
$method=|void|setAlignment|Qt::Alignment

$prototype=void setWidget ( QWidget * widget )
$method=|void|setWidget|QWidget *

$prototype=void setWidgetResizable ( bool resizable )
$method=|void|setWidgetResizable|bool

$prototypeV2=QWidget * takeWidget()

$prototypeV2=QWidget * widget() const

$prototypeV2=bool widgetResizable() const

$prototype=virtual bool focusNextPrevChild ( bool next )
$virtualMethod=|bool|focusNextPrevChild|bool

$prototypeV2=virtual QSize sizeHint() const

#pragma ENDDUMP
