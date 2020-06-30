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

$beginClassFrom=QMediaRecorder

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAudioRecorder(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=~QAudioRecorder()
$deleteMethod

%%
%% Q_PROPERTY(QString audioInput READ audioInput WRITE setAudioInput NOTIFY audioInputChanged)
%%

$prototypeV2=QString audioInput() const

$prototypeV2=void setAudioInput( const QString & name )

%%
%%
%%

$prototypeV2=QString audioInputDescription( const QString & name ) const

$prototypeV2=QStringList audioInputs() const

$prototypeV2=QString defaultAudioInput() const

%%
%% SIGNALS
%%

$prototype=void audioInputChanged( const QString & name )
$signalMethod=|void|audioInputChanged|const QString &

$prototype=void availableAudioInputsChanged()
$signalMethod=|void|availableAudioInputsChanged|

#pragma ENDDUMP
