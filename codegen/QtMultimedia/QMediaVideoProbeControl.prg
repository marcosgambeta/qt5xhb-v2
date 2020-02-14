%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

#include <QtMultimedia/QVideoFrame>

$prototype=explicit QMediaVideoProbeControl(QObject *parent = nullptr) [protected]

$prototype=virtual ~QMediaVideoProbeControl()
$deleteMethod

%%
%% SIGNALS
%%

$prototype=void flush()
$signalMethod=|void|flush|

$prototype=void videoFrameProbed( const QVideoFrame & frame )
$signalMethod=|void|videoFrameProbed|const QVideoFrame &

#pragma ENDDUMP
