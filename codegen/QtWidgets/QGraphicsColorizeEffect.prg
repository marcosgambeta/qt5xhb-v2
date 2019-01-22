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

$prototype=QColor color () const
$method=|QColor|color|

$prototype=qreal strength () const
$method=|qreal|strength|

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
