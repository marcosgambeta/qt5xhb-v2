%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia
$added=5,3,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QMediaControl

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QCameraInfoControl(QObject *parent = nullptr) [protected]

$prototype=virtual ~QCameraInfoControl()
$deleteMethod

$prototype=virtual QCamera::Position cameraPosition(const QString &deviceName) const = 0
$virtualMethod=|QCamera::Position|cameraPosition|const QString &

$prototype=virtual int cameraOrientation(const QString &deviceName) const = 0
$virtualMethod=|int|cameraOrientation|const QString &

#pragma ENDDUMP
