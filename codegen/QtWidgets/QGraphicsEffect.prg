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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=QRectF boundingRect() const

$prototype=virtual QRectF boundingRectFor ( const QRectF & rect ) const
$virtualMethod=|QRectF|boundingRectFor|const QRectF &

$prototypeV2=bool isEnabled() const

$prototype=void setEnabled ( bool enable )
$method=|void|setEnabled|bool

$prototypeV2=void update()

%%
%% SIGNALS
%%

$prototype=void enabledChanged( bool enabled )
$signalMethod=|void|enabledChanged|bool

#pragma ENDDUMP
