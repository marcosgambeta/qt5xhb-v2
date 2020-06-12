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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QVariant>

$prototype=QAbstractVideoBuffer(HandleType type) (abstract)
%% $constructor=|new|QAbstractVideoBuffer::HandleType

$prototype=virtual ~QAbstractVideoBuffer()
$deleteMethod

$prototypeV2=virtual QVariant handle() const

$prototypeV2=QAbstractVideoBuffer::HandleType handleType() const

$prototype=virtual uchar * map ( MapMode mode, int * numBytes, int * bytesPerLine ) = 0
%% TODO: implementar
%% $virtualMethod=|uchar *|map|QAbstractVideoBuffer::MapMode,int *,int *

$prototypeV2=virtual QAbstractVideoBuffer::MapMode mapMode() const = 0

$prototypeV2=virtual void unmap() = 0

$prototypeV2=virtual void release()

$prototype=int mapPlanes(MapMode mode, int *numBytes, int bytesPerLine[4], uchar *data[4])
%% TODO: implementar

$extraMethods

#pragma ENDDUMP
