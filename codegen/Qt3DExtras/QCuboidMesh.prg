%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DExtras
$namespace=Qt3DExtras

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=Qt3DRender::QGeometryRenderer

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QCuboidMesh(Qt3DCore::QNode *parent = nullptr)

$prototype=~QCuboidMesh()
$deleteMethod

%%
%% Q_PROPERTY(float xExtent READ xExtent WRITE setXExtent NOTIFY xExtentChanged)
%%

$prototypeV2=float xExtent() const

$prototypeV2=void setXExtent( float xExtent ) [slot]

%%
%% Q_PROPERTY(float yExtent READ yExtent WRITE setYExtent NOTIFY yExtentChanged)
%%

$prototypeV2=float yExtent() const

$prototypeV2=void setYExtent( float yExtent ) [slot]

%%
%% Q_PROPERTY(float zExtent READ zExtent WRITE setZExtent NOTIFY zExtentChanged)
%%

$prototypeV2=float zExtent() const

$prototypeV2=void setZExtent( float zExtent ) [slot]

%%
%% Q_PROPERTY(QSize yzMeshResolution READ yzMeshResolution WRITE setYZMeshResolution NOTIFY yzMeshResolutionChanged)
%%

$prototypeV2=QSize yzMeshResolution() const

$prototypeV2=void setYZMeshResolution( const QSize & resolution ) [slot]

%%
%% Q_PROPERTY(QSize xzMeshResolution READ xzMeshResolution WRITE setXZMeshResolution NOTIFY xzMeshResolutionChanged)
%%

$prototypeV2=QSize xzMeshResolution() const

$prototypeV2=void setXZMeshResolution( const QSize & resolution ) [slot]

%%
%% Q_PROPERTY(QSize xyMeshResolution READ xyMeshResolution WRITE setXYMeshResolution NOTIFY xyMeshResolutionChanged)
%%

$prototypeV2=QSize xyMeshResolution() const

$prototypeV2=void setXYMeshResolution( const QSize & resolution ) [slot]

%%
%%
%%

$prototype=void setInstanceCount(int instanceCount) [private]

$prototype=void setVertexCount(int vertexCount) [private]

$prototype=void setIndexOffset(int indexOffset) [private]

$prototype=void setFirstInstance(int firstInstance) [private]

$prototype=void setRestartIndexValue(int index) [private]

$prototype=void setPrimitiveRestartEnabled(bool enabled) [private]

$prototype=void setGeometry(Qt3DRender::QGeometry *geometry) [private]

$prototype=void setPrimitiveType(PrimitiveType primitiveType) [private]

%%
%% SIGNALS
%%

$prototype=void xExtentChanged( float xExtent )
$signalMethod=|void|xExtentChanged|float

$prototype=void yExtentChanged( float yExtent )
$signalMethod=|void|yExtentChanged|float

$prototype=void zExtentChanged( float zExtent )
$signalMethod=|void|zExtentChanged|float

$prototype=void yzMeshResolutionChanged( const QSize & yzMeshResolution )
$signalMethod=|void|yzMeshResolutionChanged|const QSize &

$prototype=void xzMeshResolutionChanged( const QSize & xzMeshResolution )
$signalMethod=|void|xzMeshResolutionChanged|const QSize &

$prototype=void xyMeshResolutionChanged( const QSize & xyMeshResolution )
$signalMethod=|void|xyMeshResolutionChanged|const QSize &

#pragma ENDDUMP
