%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTouchDevice()
$constructor=|new|

$deleteMethod

$prototypeV2=QString name() const

$prototypeV2=QTouchDevice::DeviceType type() const

$prototypeV2=QTouchDevice::Capabilities capabilities() const

$prototype=void setName(const QString &name)
$method=|void|setName|const QString &

$prototype=void setType(DeviceType devType)
$method=|void|setType|QTouchDevice::DeviceType

$prototype=void setCapabilities(Capabilities caps)
$method=|void|setCapabilities|QTouchDevice::Capabilities

$prototype=static QList<const QTouchDevice *> devices()
%% TODO: $staticMethod=|QList<const QTouchDevice *>|devices|

$extraMethods

#pragma ENDDUMP
