%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
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

$prototype=float xExtent() const
$prototype=void setXExtent(float xExtent) [slot]

%%
%% Q_PROPERTY(float yExtent READ yExtent WRITE setYExtent NOTIFY yExtentChanged)
%%

$prototype=float yExtent() const
$prototype=void setYExtent(float yExtent) [slot]

%%
%% Q_PROPERTY(float zExtent READ zExtent WRITE setZExtent NOTIFY zExtentChanged)
%%

$prototype=float zExtent() const
$prototype=void setZExtent(float zExtent) [slot]

%%
%% Q_PROPERTY(QSize yzMeshResolution READ yzMeshResolution WRITE setYZMeshResolution NOTIFY yzMeshResolutionChanged)
%%

$prototype=QSize yzMeshResolution() const
$prototype=void setYZMeshResolution(const QSize &resolution) [slot]

%%
%% Q_PROPERTY(QSize xzMeshResolution READ xzMeshResolution WRITE setXZMeshResolution NOTIFY xzMeshResolutionChanged)
%%

$prototype=QSize xzMeshResolution() const
$prototype=void setXZMeshResolution(const QSize &resolution) [slot]

%%
%% Q_PROPERTY(QSize xyMeshResolution READ xyMeshResolution WRITE setXYMeshResolution NOTIFY xyMeshResolutionChanged)
%%

$prototype=QSize xyMeshResolution() const
$prototype=void setXYMeshResolution(const QSize &resolution) [slot]

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
