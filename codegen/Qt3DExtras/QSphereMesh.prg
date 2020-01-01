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

$prototype=explicit QSphereMesh(Qt3DCore::QNode *parent = nullptr)

$prototype=~QSphereMesh()
$deleteMethod

%%
%% Q_PROPERTY(int rings READ rings WRITE setRings NOTIFY ringsChanged)
%%

$prototype=int rings() const
$prototype=void setRings(int rings) [slot]

%%
%% Q_PROPERTY(int slices READ slices WRITE setSlices NOTIFY slicesChanged)
%%

$prototype=int slices() const
$prototype=void setSlices(int slices) [slot]

%%
%% Q_PROPERTY(float radius READ radius WRITE setRadius NOTIFY radiusChanged)
%%

$prototype=float radius() const
$prototype=void setRadius(float radius) [slot]

%%
%% Q_PROPERTY(bool generateTangents READ generateTangents WRITE setGenerateTangents NOTIFY generateTangentsChanged)
%%

$prototype=bool generateTangents() const
$prototype=void setGenerateTangents(bool gen) [slot]

%%
%%
%%

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

$prototype=void radiusChanged(float radius)
$prototype=void ringsChanged(int rings)
$prototype=void slicesChanged(int slices)
$prototype=void generateTangentsChanged(bool generateTangents)

#pragma ENDDUMP
