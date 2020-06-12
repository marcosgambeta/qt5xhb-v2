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

$prototype=explicit QRadioTunerControl(QObject *parent = nullptr) [protected]

$prototype=~QRadioTunerControl()
$deleteMethod

$prototypeV2=virtual QRadioTuner::State state() const = 0

$prototypeV2=virtual QRadioTuner::Band band() const = 0

$prototype=virtual void setBand(QRadioTuner::Band b) = 0
$virtualMethod=|void|setBand|QRadioTuner::Band

$prototype=virtual bool isBandSupported(QRadioTuner::Band b) const = 0
$virtualMethod=|bool|isBandSupported|QRadioTuner::Band

$prototypeV2=virtual int frequency() const = 0

$prototype=virtual int frequencyStep(QRadioTuner::Band b) const = 0
$virtualMethod=|int|frequencyStep|QRadioTuner::Band

$prototype=virtual void setFrequency(int frequency) = 0
$virtualMethod=|void|setFrequency|int

$prototypeV2=virtual bool isStereo() const = 0

$prototypeV2=virtual QRadioTuner::StereoMode stereoMode() const = 0

$prototype=virtual void setStereoMode(QRadioTuner::StereoMode mode) = 0
$virtualMethod=|void|setStereoMode|QRadioTuner::StereoMode

$prototypeV2=virtual int signalStrength() const = 0

$prototypeV2=virtual int volume() const = 0

$prototype=virtual void setVolume(int volume) = 0
$virtualMethod=|void|setVolume|int

$prototypeV2=virtual bool isMuted() const = 0

$prototype=virtual void setMuted(bool muted) = 0
$virtualMethod=|void|setMuted|bool

$prototypeV2=virtual bool isSearching() const = 0

$prototypeV2=virtual bool isAntennaConnected() const

$prototypeV2=virtual void searchForward() = 0

$prototypeV2=virtual void searchBackward() = 0

$prototype=virtual void searchAllStations(QRadioTuner::SearchMode searchMode = QRadioTuner::SearchFast) = 0
$virtualMethod=|void|searchAllStations|QRadioTuner::SearchMode=QRadioTuner::SearchFast

$prototypeV2=virtual void cancelSearch() = 0

$prototypeV2=virtual void start() = 0

$prototypeV2=virtual void stop() = 0

$prototypeV2=virtual QRadioTuner::Error error() const = 0

$prototypeV2=virtual QString errorString() const = 0

$prototype=virtual QPair<int,int> frequencyRange(QRadioTuner::Band b) const = 0
%% TODO: QPair<int,int>

%%
%% SIGNALS
%%

$prototype=void stateChanged( QRadioTuner::State state )
$signalMethod=|void|stateChanged|QRadioTuner::State

$prototype=void bandChanged( QRadioTuner::Band band )
$signalMethod=|void|bandChanged|QRadioTuner::Band

$prototype=void frequencyChanged( int frequency )
$signalMethod=|void|frequencyChanged|int

$prototype=void stereoStatusChanged( bool stereo )
$signalMethod=|void|stereoStatusChanged|bool

$prototype=void searchingChanged( bool searching )
$signalMethod=|void|searchingChanged|bool

$prototype=void signalStrengthChanged( int signalStrength )
$signalMethod=|void|signalStrengthChanged|int

$prototype=void volumeChanged( int volume )
$signalMethod=|void|volumeChanged|int

$prototype=void mutedChanged( bool muted )
$signalMethod=|void|mutedChanged|bool

$prototype=void error( QRadioTuner::Error err )
$signalMethod=|void|error,error,QOverload<QRadioTuner::Error>|QRadioTuner::Error

$prototype=void stationFound( int frequency, QString stationId )
$signalMethod=|void|stationFound|int,QString

$prototype=void antennaConnectedChanged( bool connectionStatus )
$signalMethod=|void|antennaConnectedChanged|bool

#pragma ENDDUMP
