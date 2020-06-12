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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QPointF>

$prototype=explicit QCameraExposure(QCamera *parent = nullptr) [private]

$prototype=virtual ~QCameraExposure() [private]

%%
%% Q_PROPERTY(qreal aperture READ aperture NOTIFY apertureChanged)
%%

$prototypeV2=qreal aperture() const

%%
%% Q_PROPERTY(qreal shutterSpeed READ shutterSpeed NOTIFY shutterSpeedChanged)
%%

$prototypeV2=qreal shutterSpeed() const

%%
%% Q_PROPERTY(int isoSensitivity READ isoSensitivity NOTIFY isoSensitivityChanged)
%%

$prototypeV2=int isoSensitivity() const

%%
%% Q_PROPERTY(qreal exposureCompensation READ exposureCompensation WRITE setExposureCompensation NOTIFY exposureCompensationChanged)
%%

$prototypeV2=qreal exposureCompensation() const

$prototype=void setExposureCompensation(qreal ev)
$slotMethod=|void|setExposureCompensation|qreal

%%
%% Q_PROPERTY(bool flashReady READ isFlashReady NOTIFY flashReady)
%%

$prototypeV2=bool isFlashReady() const

%%
%% Q_PROPERTY(QCameraExposure::FlashModes flashMode READ flashMode WRITE setFlashMode)
%%

$prototypeV2=QCameraExposure::FlashModes flashMode() const

$prototype=void setFlashMode(FlashModes mode)
$slotMethod=|void|setFlashMode|QCameraExposure::FlashModes

%%
%% Q_PROPERTY(QCameraExposure::ExposureMode exposureMode READ exposureMode WRITE setExposureMode)
%%

$prototypeV2=QCameraExposure::ExposureMode exposureMode() const

$prototype=void setExposureMode(ExposureMode mode)
$slotMethod=|void|setExposureMode|QCameraExposure::ExposureMode

%%
%% Q_PROPERTY(QCameraExposure::MeteringMode meteringMode READ meteringMode WRITE setMeteringMode)
%%

$prototypeV2=QCameraExposure::MeteringMode meteringMode() const

$prototype=void setMeteringMode(MeteringMode mode)
$slotMethod=|void|setMeteringMode|QCameraExposure::MeteringMode

%%
%%
%%

$prototypeV2=bool isAvailable() const

$prototype=bool isExposureModeSupported(ExposureMode mode) const
$method=|bool|isExposureModeSupported|QCameraExposure::ExposureMode

$prototype=bool isFlashModeSupported(FlashModes mode) const
$method=|bool|isFlashModeSupported|QCameraExposure::FlashModes

$prototype=bool isMeteringModeSupported(MeteringMode mode) const
$method=|bool|isMeteringModeSupported|QCameraExposure::MeteringMode

$prototypeV2=qreal requestedAperture() const

$prototypeV2=int requestedIsoSensitivity() const

$prototypeV2=qreal requestedShutterSpeed() const

$prototype=void setSpotMeteringPoint(const QPointF & point)
$method=|void|setSpotMeteringPoint|const QPointF &

$prototypeV2=QPointF spotMeteringPoint() const

$prototype=QList<qreal> supportedApertures(bool * continuous = nullptr) const
$method=|QList<qreal>|supportedApertures|bool *=nullptr

$prototype=QList<int> supportedIsoSensitivities(bool * continuous = nullptr) const
$method=|QList<int>|supportedIsoSensitivities|bool *=nullptr

$prototype=QList<qreal> supportedShutterSpeeds(bool * continuous = nullptr) const
$method=|QList<qreal>|supportedShutterSpeeds|bool *=nullptr

$prototypeV2=void setAutoAperture()

$prototypeV2=void setAutoIsoSensitivity()

$prototypeV2=void setAutoShutterSpeed()

$prototype=void setManualAperture(qreal aperture)
$slotMethod=|void|setManualAperture|qreal

$prototype=void setManualIsoSensitivity(int iso)
$slotMethod=|void|setManualIsoSensitivity|int

$prototype=void setManualShutterSpeed(qreal seconds)
$slotMethod=|void|setManualShutterSpeed|qreal

%%
%% SIGNALS
%%

$prototype=void apertureChanged( qreal value )
$signalMethod=|void|apertureChanged|qreal

$prototype=void apertureRangeChanged()
$signalMethod=|void|apertureRangeChanged|

$prototype=void exposureCompensationChanged( qreal value )
$signalMethod=|void|exposureCompensationChanged|qreal

$prototype=void flashReady( bool ready )
$signalMethod=|void|flashReady|bool

$prototype=void isoSensitivityChanged( int value )
$signalMethod=|void|isoSensitivityChanged|int

$prototype=void shutterSpeedChanged( qreal speed )
$signalMethod=|void|shutterSpeedChanged|qreal

$prototype=void shutterSpeedRangeChanged()
$signalMethod=|void|shutterSpeedRangeChanged|

#pragma ENDDUMP
