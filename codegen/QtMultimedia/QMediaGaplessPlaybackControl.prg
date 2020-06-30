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

$prototype=explicit QMediaGaplessPlaybackControl(QObject *parent = nullptr) [protected]

$prototype=virtual ~QMediaGaplessPlaybackControl()
$deleteMethod

$prototypeV2=virtual qreal crossfadeTime() const = 0

$prototypeV2=virtual bool isCrossfadeSupported() const = 0

$prototypeV2=virtual QMediaContent nextMedia() const = 0

$prototypeV2=virtual void setCrossfadeTime( qreal crossfadeTime ) = 0

$prototypeV2=virtual void setNextMedia( const QMediaContent & media ) = 0

%%
%% SIGNALS
%%

$prototype=void advancedToNextMedia()
$signalMethod=|void|advancedToNextMedia|

$prototype=void crossfadeTimeChanged( qreal crossfadeTime )
$signalMethod=|void|crossfadeTimeChanged|qreal

$prototype=void nextMediaChanged( const QMediaContent & media )
$signalMethod=|void|nextMediaChanged|const QMediaContent &

#pragma ENDDUMP
