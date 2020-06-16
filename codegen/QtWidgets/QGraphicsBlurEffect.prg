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

$beginClassFrom=QGraphicsWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsBlurEffect ( QObject * parent = nullptr )
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototypeV2=QGraphicsBlurEffect::BlurHints blurHints() const

$prototypeV2=qreal blurRadius() const

$prototype=virtual QRectF boundingRectFor ( const QRectF & rect ) const
$virtualMethod=|QRectF|boundingRectFor|const QRectF &

$prototype=void setBlurHints ( BlurHints hints )
$method=|void|setBlurHints|QGraphicsBlurEffect::BlurHints

$prototype=void setBlurRadius ( qreal blurRadius )
$method=|void|setBlurRadius|qreal

%%
%% SIGNALS
%%

$prototype=void blurHintsChanged( QGraphicsBlurEffect::BlurHints hints )
$signalMethod=|void|blurHintsChanged|QGraphicsBlurEffect::BlurHints

$prototype=void blurRadiusChanged( qreal radius )
$signalMethod=|void|blurRadiusChanged|qreal

#pragma ENDDUMP
