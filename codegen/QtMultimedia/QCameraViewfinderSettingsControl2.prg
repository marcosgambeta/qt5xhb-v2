%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia
$added=5,5,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QMediaControl

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QCameraViewfinderSettingsControl2(QObject *parent = nullptr) [protected]

$prototype=virtual ~QCameraViewfinderSettingsControl2()
$deleteMethod

$prototype=virtual QList<QCameraViewfinderSettings> supportedViewfinderSettings() const = 0
$virtualMethod=|QList<QCameraViewfinderSettings>|supportedViewfinderSettings|

$prototype=virtual QCameraViewfinderSettings viewfinderSettings() const = 0
$virtualMethod=|QCameraViewfinderSettings|viewfinderSettings|

$prototype=virtual void setViewfinderSettings(const QCameraViewfinderSettings &settings) = 0
$virtualMethod=|void|setViewfinderSettings|const QCameraViewfinderSettings &

#pragma ENDDUMP
