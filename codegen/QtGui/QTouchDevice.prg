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

$prototypeV2=void setName( const QString & name )

$prototypeV2=void setType( QTouchDevice::DeviceType devType )

$prototypeV2=void setCapabilities( QTouchDevice::Capabilities caps )

$prototype=static QList<const QTouchDevice *> devices()
%% TODO: $staticMethod=|QList<const QTouchDevice *>|devices|

$extraMethods

#pragma ENDDUMP
