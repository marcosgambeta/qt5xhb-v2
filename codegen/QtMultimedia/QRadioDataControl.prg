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

$prototype=explicit QRadioDataControl(QObject *parent = nullptr) [protected]

$prototype=~QRadioDataControl()
$deleteMethod

$prototypeV2=virtual QString stationId() const = 0

$prototypeV2=virtual QRadioData::ProgramType programType() const = 0

$prototypeV2=virtual QString programTypeName() const = 0

$prototypeV2=virtual QString stationName() const = 0

$prototypeV2=virtual QString radioText() const = 0

$prototype=virtual void setAlternativeFrequenciesEnabled(bool enabled) = 0
$virtualMethod=|void|setAlternativeFrequenciesEnabled|bool

$prototypeV2=virtual bool isAlternativeFrequenciesEnabled() const = 0

$prototypeV2=virtual QRadioData::Error error() const = 0

$prototypeV2=virtual QString errorString() const = 0

%%
%% SIGNALS
%%

$prototype=void stationIdChanged( QString stationId )
$signalMethod=|void|stationIdChanged|QString

$prototype=void programTypeChanged( QRadioData::ProgramType programType )
$signalMethod=|void|programTypeChanged|QRadioData::ProgramType

$prototype=void programTypeNameChanged( QString programTypeName )
$signalMethod=|void|programTypeNameChanged|QString

$prototype=void stationNameChanged( QString stationName )
$signalMethod=|void|stationNameChanged|QString

$prototype=void radioTextChanged( QString radioText )
$signalMethod=|void|radioTextChanged|QString

$prototype=void alternativeFrequenciesEnabledChanged( bool enabled )
$signalMethod=|void|alternativeFrequenciesEnabledChanged|bool

$prototype=void error( QRadioData::Error err )
$signalMethod=|void|error,error,QOverload<QRadioData::Error>|QRadioData::Error

#pragma ENDDUMP
