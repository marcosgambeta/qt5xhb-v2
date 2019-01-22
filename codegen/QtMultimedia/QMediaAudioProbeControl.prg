%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

#include <QAudioBuffer>

$prototype=explicit QMediaAudioProbeControl(QObject *parent = nullptr) [protected]

$prototype=virtual ~QMediaAudioProbeControl()
$deleteMethod

%%
%% SIGNALS
%%

$prototype=void audioBufferProbed( const QAudioBuffer & buffer )
$signalMethod=|void|audioBufferProbed|const QAudioBuffer &

$prototype=void flush()
$signalMethod=|void|flush|

#pragma ENDDUMP
