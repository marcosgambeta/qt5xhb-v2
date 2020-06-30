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

$prototypeV2=void setExposureCompensation( qreal ev )

%%
%% Q_PROPERTY(bool flashReady READ isFlashReady NOTIFY flashReady)
%%

$prototypeV2=bool isFlashReady() const

%%
%% Q_PROPERTY(QCameraExposure::FlashModes flashMode READ flashMode WRITE setFlashMode)
%%

$prototypeV2=QCameraExposure::FlashModes flashMode() const

$prototypeV2=void setFlashMode( QCameraExposure::FlashModes mode )

%%
%% Q_PROPERTY(QCameraExposure::ExposureMode exposureMode READ exposureMode WRITE setExposureMode)
%%

$prototypeV2=QCameraExposure::ExposureMode exposureMode() const

$prototypeV2=void setExposureMode( QCameraExposure::ExposureMode mode )

%%
%% Q_PROPERTY(QCameraExposure::MeteringMode meteringMode READ meteringMode WRITE setMeteringMode)
%%

$prototypeV2=QCameraExposure::MeteringMode meteringMode() const

$prototypeV2=void setMeteringMode( QCameraExposure::MeteringMode mode )

%%
%%
%%

$prototypeV2=bool isAvailable() const

$prototypeV2=bool isExposureModeSupported( QCameraExposure::ExposureMode mode ) const

$prototypeV2=bool isFlashModeSupported( QCameraExposure::FlashModes mode ) const

$prototypeV2=bool isMeteringModeSupported( QCameraExposure::MeteringMode mode ) const

$prototypeV2=qreal requestedAperture() const

$prototypeV2=int requestedIsoSensitivity() const

$prototypeV2=qreal requestedShutterSpeed() const

$prototypeV2=void setSpotMeteringPoint( const QPointF & point )

$prototypeV2=QPointF spotMeteringPoint() const

$prototypeV2=QList<qreal> supportedApertures( bool * continuous = nullptr ) const

$prototypeV2=QList<int> supportedIsoSensitivities( bool * continuous = nullptr ) const

$prototypeV2=QList<qreal> supportedShutterSpeeds( bool * continuous = nullptr ) const

$prototypeV2=void setAutoAperture()

$prototypeV2=void setAutoIsoSensitivity()

$prototypeV2=void setAutoShutterSpeed()

$prototypeV2=void setManualAperture( qreal aperture )

$prototypeV2=void setManualIsoSensitivity( int iso )

$prototypeV2=void setManualShutterSpeed( qreal seconds )

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
