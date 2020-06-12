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

$beginClassFrom=QMediaObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtMultimedia/QRadioData>

$prototype=explicit QRadioTuner(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=~QRadioTuner()
$deleteMethod

%%
%% Q_PROPERTY(State state READ state NOTIFY stateChanged)
%%

$prototypeV2=QRadioTuner::State state() const

%%
%% Q_PROPERTY(Band band READ band WRITE setBand NOTIFY bandChanged)
%%

$prototypeV2=QRadioTuner::Band band() const

$prototype=void setBand(Band band)
$slotMethod=|void|setBand|QRadioTuner::Band

%%
%% Q_PROPERTY(int frequency READ frequency WRITE setFrequency NOTIFY frequencyChanged)
%%

$prototypeV2=int frequency() const

$prototype=void setFrequency(int frequency)
$slotMethod=|void|setFrequency|int

%%
%% Q_PROPERTY(bool stereo READ isStereo NOTIFY stereoStatusChanged)
%%

$prototypeV2=bool isStereo() const

%%
%% Q_PROPERTY(StereoMode stereoMode READ stereoMode WRITE setStereoMode)
%%

$prototypeV2=QRadioTuner::StereoMode stereoMode() const

$prototype=void setStereoMode(QRadioTuner::StereoMode mode)
$method=|void|setStereoMode|QRadioTuner::StereoMode

%%
%% Q_PROPERTY(int signalStrength READ signalStrength NOTIFY signalStrengthChanged)
%%

$prototypeV2=int signalStrength() const

%%
%% Q_PROPERTY(int volume READ volume WRITE setVolume NOTIFY volumeChanged)
%%

$prototypeV2=int volume() const

$prototype=void setVolume(int volume)
$slotMethod=|void|setVolume|int

%%
%% Q_PROPERTY(bool muted READ isMuted WRITE setMuted NOTIFY mutedChanged)
%%

$prototypeV2=bool isMuted() const

$prototype=void setMuted(bool muted)
$slotMethod=|void|setMuted|bool

%%
%% Q_PROPERTY(bool searching READ isSearching NOTIFY searchingChanged)
%%

$prototypeV2=bool isSearching() const

%%
%% Q_PROPERTY(bool antennaConnected READ isAntennaConnected NOTIFY antennaConnectedChanged)
%%

$prototypeV2=bool isAntennaConnected() const

%%
%% Q_PROPERTY(QRadioData *radioData READ radioData CONSTANT)
%%

$prototypeV2=QRadioData * radioData() const

%%
%%
%%

$prototypeV2=QMultimedia::AvailabilityStatus availability() const override

$prototype=bool isBandSupported(Band b) const
$method=|bool|isBandSupported|QRadioTuner::Band

$prototype=int frequencyStep(Band band) const
$method=|int|frequencyStep|QRadioTuner::Band

$prototypeV2=QRadioTuner::Error error() const

$prototypeV2=QString errorString() const

$prototypeV2=void searchForward()

$prototypeV2=void searchBackward()

$prototype=void searchAllStations(QRadioTuner::SearchMode searchMode = QRadioTuner::SearchFast)
$slotMethod=|void|searchAllStations|QRadioTuner::SearchMode=QRadioTuner::SearchFast

$prototypeV2=void cancelSearch()

$prototypeV2=void start()

$prototypeV2=void stop()

$prototype=QPair<int,int> frequencyRange(Band band) const
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

$prototype=void stationFound( int frequency, QString stationId )
$signalMethod=|void|stationFound|int,QString

$prototype=void antennaConnectedChanged( bool connectionStatus )
$signalMethod=|void|antennaConnectedChanged|bool

$prototype=void error( QRadioTuner::Error error )
$signalMethod=|void|error,error,QOverload<QRadioTuner::Error>|QRadioTuner::Error

#pragma ENDDUMP
