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

$prototype=QStackedWidget ( QWidget * parent = nullptr )
$constructor=|new|QWidget *=nullptr

$deleteMethod

$prototype=int addWidget ( QWidget * widget )
$method=|int|addWidget|QWidget *

$prototypeV2=int count() const

$prototypeV2=int currentIndex() const

$prototypeV2=QWidget * currentWidget() const

$prototype=int indexOf ( QWidget * widget ) const
$method=|int|indexOf|QWidget *

$prototype=int insertWidget ( int index, QWidget * widget )
$method=|int|insertWidget|int,QWidget *

$prototype=void removeWidget ( QWidget * widget )
$method=|void|removeWidget|QWidget *

$prototype=QWidget * widget ( int index ) const
$method=|QWidget *|widget|int

$prototype=void setCurrentIndex ( int index )
$method=|void|setCurrentIndex|int

$prototype=void setCurrentWidget ( QWidget * widget )
$method=|void|setCurrentWidget|QWidget *

%%
%% SIGNALS
%%

$prototype=void currentChanged( int index )
$signalMethod=|void|currentChanged|int

$prototype=void widgetRemoved( int index )
$signalMethod=|void|widgetRemoved|int

#pragma ENDDUMP
