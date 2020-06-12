%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQuick

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QSGNode

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSGOpacityNode()
$constructor=|new|

$deleteMethod

$prototypeV2=qreal opacity() const

$prototype=void setOpacity(qreal opacity)
$method=|void|setOpacity|qreal

#pragma ENDDUMP
