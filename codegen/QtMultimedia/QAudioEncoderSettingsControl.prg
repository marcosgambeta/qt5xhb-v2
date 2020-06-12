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

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAudioEncoderSettingsControl(QObject *parent = nullptr) [protected]

$prototype=virtual ~QAudioEncoderSettingsControl()
$deleteMethod

$prototypeV2=virtual QAudioEncoderSettings audioSettings() const = 0

$prototype=virtual QString codecDescription(const QString & codecName) const = 0
$virtualMethod=|QString|codecDescription|const QString &

$prototype=virtual void setAudioSettings(const QAudioEncoderSettings & settings) = 0
$virtualMethod=|void|setAudioSettings|const QAudioEncoderSettings &

$prototypeV2=virtual QStringList supportedAudioCodecs() const = 0

$prototype=virtual QList<int> supportedSampleRates(const QAudioEncoderSettings & settings, bool * continuous = nullptr) const = 0
$virtualMethod=|QList<int>|supportedSampleRates|const QAudioEncoderSettings &,bool *=nullptr

#pragma ENDDUMP
