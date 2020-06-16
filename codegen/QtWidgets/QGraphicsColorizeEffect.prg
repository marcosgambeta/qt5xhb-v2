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

$prototype=QGraphicsColorizeEffect ( QObject * parent = nullptr )
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototypeV2=QColor color() const

$prototypeV2=qreal strength() const

$prototype=void setColor ( const QColor & c )
$method=|void|setColor|const QColor &

$prototype=void setStrength ( qreal strength )
$method=|void|setStrength|qreal

%%
%% SIGNALS
%%

$prototype=void colorChanged( const QColor & color )
$signalMethod=|void|colorChanged|const QColor &

$prototype=void strengthChanged( qreal strength )
$signalMethod=|void|strengthChanged|qreal

#pragma ENDDUMP
