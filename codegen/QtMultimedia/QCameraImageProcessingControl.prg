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

$prototype=explicit QCameraImageProcessingControl(QObject *parent = nullptr) [protected]

$prototype=~QCameraImageProcessingControl()
$deleteMethod

$prototypeV2=virtual bool isParameterSupported( QCameraImageProcessingControl::ProcessingParameter parameter ) const = 0

$prototypeV2=virtual bool isParameterValueSupported( QCameraImageProcessingControl::ProcessingParameter parameter, const QVariant & value ) const = 0

$prototypeV2=virtual QVariant parameter( QCameraImageProcessingControl::ProcessingParameter parameter ) const = 0

$prototypeV2=virtual void setParameter( QCameraImageProcessingControl::ProcessingParameter parameter, const QVariant & value ) = 0

#pragma ENDDUMP
