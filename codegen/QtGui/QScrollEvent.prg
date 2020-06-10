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

$beginClassFrom=QEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QScrollEvent(const QPointF &contentPos, const QPointF &overshoot, ScrollState scrollState)
$constructor=|new|const QPointF &,const QPointF &,QScrollEvent::ScrollState

$deleteMethod

$prototypeV2=QPointF contentPos() const

$prototypeV2=QPointF overshootDistance() const

$prototypeV2=QScrollEvent::ScrollState scrollState() const

#pragma ENDDUMP
