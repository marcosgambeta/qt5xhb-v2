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

$beginClassFrom=QWidgetItem

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QWidgetItemV2(QWidget *widget)
$constructor=|new|QWidget *

$deleteMethod

$prototypeV2=QSize sizeHint() const

$prototypeV2=QSize minimumSize() const

$prototypeV2=QSize maximumSize() const

$prototype=int heightForWidth(int width) const
$method=|int|heightForWidth|int

#pragma ENDDUMP
