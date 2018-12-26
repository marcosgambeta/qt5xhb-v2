%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QMediaControl

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QVideoFrame>

$prototype=explicit QMediaVideoProbeControl(QObject *parent = Q_NULLPTR) [protected]

$prototype=virtual ~QMediaVideoProbeControl()
$deleteMethod

%%
%% SIGNALS
%%

$prototype=void flush()
$signalMethod=|void|flush|

$prototype=void videoFrameProbed( const QVideoFrame & frame )
$signalMethod=|void|videoFrameProbed|QVideoFrame

#pragma ENDDUMP
