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

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QCameraImageProcessing(QCamera *camera) [private]

$prototype=~QCameraImageProcessing() [private]

$prototypeV2=qreal contrast() const

$prototypeV2=qreal denoisingLevel() const

$prototypeV2=bool isAvailable() const

$prototypeV2=bool isWhiteBalanceModeSupported( QCameraImageProcessing::WhiteBalanceMode mode ) const

$prototypeV2=qreal manualWhiteBalance() const

$prototypeV2=qreal saturation() const

$prototypeV2=void setContrast( qreal value )

$prototypeV2=void setDenoisingLevel( qreal value )

$prototypeV2=void setManualWhiteBalance( qreal colorTemperature )

$prototypeV2=void setSaturation( qreal value )

$prototypeV2=void setSharpeningLevel( qreal level )

$prototypeV2=void setWhiteBalanceMode( QCameraImageProcessing::WhiteBalanceMode mode )

$prototypeV2=qreal sharpeningLevel() const

$prototypeV2=QCameraImageProcessing::WhiteBalanceMode whiteBalanceMode() const

$prototypeV2=5,7,0|qreal brightness() const
%% TODO: check version

$prototypeV2=5,7,0|void setBrightness( qreal value )
%% TODO: check version

$prototypeV2=5,5,0|QCameraImageProcessing::ColorFilter colorFilter() const

$prototypeV2=5,5,0|void setColorFilter( QCameraImageProcessing::ColorFilter filter )

$prototypeV2=5,5,0|bool isColorFilterSupported( QCameraImageProcessing::ColorFilter filter ) const

#pragma ENDDUMP
