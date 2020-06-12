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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=void allocate(int vertexCount, int indexCount = 0)
$method=|void|allocate|int,int=0

$prototypeV2=int attributeCount() const

$prototypeV2=GLenum drawingMode() const

$prototypeV2=int indexCount() const

$prototypeV2=QSGGeometry::DataPattern indexDataPattern() const

$prototypeV2=int indexType() const

$prototypeV2=float lineWidth() const

$prototypeV2=void markIndexDataDirty()

$prototypeV2=void markVertexDataDirty()

$prototype=void setDrawingMode(GLenum mode)
$method=|void|setDrawingMode|GLenum

$prototype=void setIndexDataPattern(DataPattern p)
$method=|void|setIndexDataPattern|QSGGeometry::DataPattern

$prototype=void setLineWidth(float width)
$method=|void|setLineWidth|float

$prototype=void setVertexDataPattern(DataPattern p)
$method=|void|setVertexDataPattern|QSGGeometry::DataPattern

$prototypeV2=int sizeOfIndex() const

$prototypeV2=int sizeOfVertex() const

$prototypeV2=int vertexCount() const

$prototypeV2=QSGGeometry::DataPattern vertexDataPattern() const

$prototype=static void updateRectGeometry(QSGGeometry * g, const QRectF & rect)
$staticMethod=|void|updateRectGeometry|QSGGeometry *,const QRectF &

$prototype=static void updateTexturedRectGeometry(QSGGeometry * g, const QRectF & rect, const QRectF & textureRect)
$staticMethod=|void|updateTexturedRectGeometry|QSGGeometry *,const QRectF &,const QRectF &

$extraMethods

#pragma ENDDUMP
