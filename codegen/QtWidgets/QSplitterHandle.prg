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

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSplitterHandle ( Qt::Orientation orientation, QSplitter * parent )
$constructor=|new|Qt::Orientation,QSplitter *

$deleteMethod

$prototypeV2=bool opaqueResize() const

$prototypeV2=Qt::Orientation orientation() const

$prototype=void setOrientation ( Qt::Orientation orientation )
$method=|void|setOrientation|Qt::Orientation

$prototypeV2=QSplitter * splitter() const

$prototypeV2=virtual QSize sizeHint() const

#pragma ENDDUMP
