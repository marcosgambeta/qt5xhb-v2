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

$beginClassFrom=QGraphicsEffect

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsOpacityEffect ( QObject * parent = nullptr )
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototypeV2=qreal opacity() const

$prototypeV2=QBrush opacityMask() const

$prototype=void setOpacity ( qreal opacity )
$method=|void|setOpacity|qreal

$prototype=void setOpacityMask ( const QBrush & mask )
$method=|void|setOpacityMask|const QBrush &

%%
%% SIGNALS
%%

$prototype=void opacityChanged( qreal opacity )
$signalMethod=|void|opacityChanged|qreal

$prototype=void opacityMaskChanged( const QBrush & mask )
$signalMethod=|void|opacityMaskChanged|const QBrush &

#pragma ENDDUMP
