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

$beginClassFrom=QObject,QMediaBindableInterface

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QRadioData(QMediaObject *mediaObject, QObject *parent = nullptr)
$constructor=|new|QMediaObject *,QObject *=nullptr

$prototype=~QRadioData()
$deleteMethod

%%
%% Q_PROPERTY(QString stationId READ stationId NOTIFY stationIdChanged)
%%

$prototypeV2=QString stationId() const

%%
%% Q_PROPERTY(ProgramType programType READ programType NOTIFY programTypeChanged)
%%

$prototypeV2=QRadioData::ProgramType programType() const

%%
%% Q_PROPERTY(QString programTypeName READ programTypeName NOTIFY programTypeNameChanged)
%%

$prototypeV2=QString programTypeName() const

%%
%% Q_PROPERTY(QString stationName READ stationName NOTIFY stationNameChanged)
%%

$prototypeV2=QString stationName() const

%%
%% Q_PROPERTY(QString radioText READ radioText NOTIFY radioTextChanged)
%%

$prototypeV2=QString radioText() const

%%
%% Q_PROPERTY(bool alternativeFrequenciesEnabled READ isAlternativeFrequenciesEnabled WRITE setAlternativeFrequenciesEnabled NOTIFY alternativeFrequenciesEnabledChanged)
%%

$prototypeV2=bool isAlternativeFrequenciesEnabled() const

$prototype=void setAlternativeFrequenciesEnabled(bool enabled)
$slotMethod=|void|setAlternativeFrequenciesEnabled|bool

%%
%%
%%

$prototypeV2=QMultimedia::AvailabilityStatus availability() const

$prototypeV2=QMediaObject * mediaObject() const override

$prototypeV2=QRadioData::Error error() const

$prototypeV2=QString errorString() const

$prototype=bool setMediaObject(QMediaObject *) override [protected]

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

$prototype=void error( QRadioData::Error error )
$signalMethod=|void|error,error,QOverload<QRadioData::Error>|QRadioData::Error

#pragma ENDDUMP
