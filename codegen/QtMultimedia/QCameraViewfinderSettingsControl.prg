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

$prototype=explicit QCameraViewfinderSettingsControl(QObject *parent = nullptr) [protected]

$prototype=~QCameraViewfinderSettingsControl()
$deleteMethod

$prototypeV2=virtual bool isViewfinderParameterSupported( QCameraViewfinderSettingsControl::ViewfinderParameter parameter ) const = 0

$prototypeV2=virtual void setViewfinderParameter( QCameraViewfinderSettingsControl::ViewfinderParameter parameter, const QVariant & value ) = 0

$prototypeV2=virtual QVariant viewfinderParameter( QCameraViewfinderSettingsControl::ViewfinderParameter parameter ) const = 0

#pragma ENDDUMP
