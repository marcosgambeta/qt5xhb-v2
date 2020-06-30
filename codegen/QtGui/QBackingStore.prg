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

$prototype=QBackingStore(QWindow * window)
$constructor=|new|QWindow *

$deleteMethod

$prototypeV2=void beginPaint( const QRegion & region )

$prototypeV2=void endPaint()

$prototypeV2=void flush( const QRegion & region, QWindow * win = nullptr, const QPoint & offset = QPoint() )

$prototype=QPlatformBackingStore * handle() const
%% TODO: implementar ?
%% $method=|QPlatformBackingStore *|handle|

$prototypeV2=bool hasStaticContents() const

$prototypeV2=QPaintDevice * paintDevice()

$prototypeV2=void resize( const QSize & size )

$prototypeV2=bool scroll( const QRegion & area, int dx, int dy )

$prototypeV2=void setStaticContents( const QRegion & region )

$prototypeV2=QSize size() const

$prototypeV2=QRegion staticContents() const

$prototypeV2=QWindow * window() const

$extraMethods

#pragma ENDDUMP
