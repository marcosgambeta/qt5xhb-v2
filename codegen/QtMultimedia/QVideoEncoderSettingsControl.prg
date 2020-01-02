%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
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

$prototype=explicit QVideoEncoderSettingsControl(QObject *parent = nullptr) [protected]

$prototype=virtual ~QVideoEncoderSettingsControl()
$deleteMethod

$prototype=virtual void setVideoSettings(const QVideoEncoderSettings & settings) = 0
$virtualMethod=|void|setVideoSettings|const QVideoEncoderSettings &

$prototype=virtual QList<qreal> supportedFrameRates(const QVideoEncoderSettings & settings, bool * continuous = nullptr) const = 0
$virtualMethod=|QList<qreal>|supportedFrameRates|const QVideoEncoderSettings &,bool *=nullptr

$prototype=virtual QList<QSize> supportedResolutions(const QVideoEncoderSettings & settings, bool * continuous = nullptr) const = 0
$virtualMethod=|QList<QSize>|supportedResolutions|const QVideoEncoderSettings &,bool *=nullptr

$prototype=virtual QStringList supportedVideoCodecs() const = 0
$virtualMethod=|QStringList|supportedVideoCodecs|

$prototype=virtual QString videoCodecDescription(const QString & codecName) const = 0
$virtualMethod=|QString|videoCodecDescription|const QString &

$prototype=virtual QVideoEncoderSettings videoSettings() const = 0
$virtualMethod=|QVideoEncoderSettings|videoSettings|

#pragma ENDDUMP
