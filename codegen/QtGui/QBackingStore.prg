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

$prototype=void beginPaint(const QRegion & region)
$method=|void|beginPaint|const QRegion &

$prototypeV2=void endPaint()

$prototype=void flush(const QRegion & region, QWindow * win = nullptr, const QPoint & offset = QPoint())
$method=|void|flush|const QRegion &,QWindow *=nullptr,const QPoint &=QPoint()

$prototype=QPlatformBackingStore * handle() const
%% TODO: implementar ?
%% $method=|QPlatformBackingStore *|handle|

$prototypeV2=bool hasStaticContents() const

$prototypeV2=QPaintDevice * paintDevice()

$prototype=void resize(const QSize & size)
$method=|void|resize|const QSize &

$prototype=bool scroll(const QRegion & area, int dx, int dy)
$method=|bool|scroll|const QRegion &,int,int

$prototype=void setStaticContents(const QRegion & region)
$method=|void|setStaticContents|const QRegion &

$prototypeV2=QSize size() const

$prototypeV2=QRegion staticContents() const

$prototypeV2=QWindow * window() const

$extraMethods

#pragma ENDDUMP
