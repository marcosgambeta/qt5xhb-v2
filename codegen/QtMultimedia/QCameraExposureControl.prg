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

$prototype=explicit QCameraExposureControl(QObject *parent = nullptr) [protected]

$prototype=~QCameraExposureControl()
$deleteMethod

$prototypeV2=virtual QVariant actualValue( QCameraExposureControl::ExposureParameter parameter ) const = 0

$prototypeV2=virtual bool isParameterSupported( QCameraExposureControl::ExposureParameter parameter ) const = 0

$prototypeV2=virtual QVariant requestedValue( QCameraExposureControl::ExposureParameter parameter ) const = 0

$prototypeV2=virtual bool setValue( QCameraExposureControl::ExposureParameter parameter, const QVariant & value ) = 0

$prototypeV2=virtual QVariantList supportedParameterRange( QCameraExposureControl::ExposureParameter parameter, bool * continuous ) const = 0

%%
%% SIGNALS
%%

$prototype=void actualValueChanged( int parameter )
$signalMethod=|void|actualValueChanged|int

$prototype=void parameterRangeChanged( int parameter )
$signalMethod=|void|parameterRangeChanged|int

$prototype=void requestedValueChanged( int parameter )
$signalMethod=|void|requestedValueChanged|int

#pragma ENDDUMP
