%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQuick

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtQuick/QSGTexture>

$deleteMethod

$prototype=virtual QSGTexture * createTexture(QQuickWindow * window) const = 0
$virtualMethod=|QSGTexture *|createTexture|QQuickWindow *

$prototypeV2=virtual QImage image() const

$prototypeV2=virtual int textureByteCount() const = 0

$prototypeV2=virtual QSize textureSize() const = 0

#pragma ENDDUMP
