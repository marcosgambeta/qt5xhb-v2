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

$beginClassFrom=Qt3DRender::QGeometry

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QCuboidGeometry(QNode *parent = nullptr)
$prototype=QCuboidGeometry(QCuboidGeometryPrivate &dd, QNode *parent = nullptr) [protected]

$prototype=~QCuboidGeometry()
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
%% Q_PROPERTY(QSize xyMeshResolution READ xyMeshResolution WRITE setXYMeshResolution NOTIFY xyMeshResolutionChanged)
%%

$prototypeV2=QSize xyMeshResolution() const

$prototypeV2=void setXYMeshResolution( const QSize & resolution ) [slot]

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
%% Q_PROPERTY(Qt3DRender::QAttribute *positionAttribute READ positionAttribute CONSTANT)
%%

$prototypeV2=Qt3DRender::QAttribute * positionAttribute() const

%%
%% Q_PROPERTY(Qt3DRender::QAttribute *normalAttribute READ normalAttribute CONSTANT)
%%

$prototypeV2=Qt3DRender::QAttribute * normalAttribute() const

%%
%% Q_PROPERTY(Qt3DRender::QAttribute *texCoordAttribute READ texCoordAttribute CONSTANT)
%%

$prototypeV2=Qt3DRender::QAttribute * texCoordAttribute() const

%%
%% Q_PROPERTY(Qt3DRender::QAttribute *tangentAttribute READ tangentAttribute CONSTANT)
%%

$prototypeV2=Qt3DRender::QAttribute * tangentAttribute() const

%%
%% Q_PROPERTY(Qt3DRender::QAttribute *indexAttribute READ indexAttribute CONSTANT)
%%

$prototypeV2=Qt3DRender::QAttribute * indexAttribute() const

%%
%%
%%

$prototypeV2=void updateIndices()

$prototypeV2=void updateVertices()

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
