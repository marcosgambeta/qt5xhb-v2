%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=explicit QSphereGeometry(QNode *parent = nullptr)
$prototype=QSphereGeometry(QSphereGeometryPrivate &dd, QNode *parent = nullptr) [protected]

$prototype=~QSphereGeometry()
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
%% Q_PROPERTY(Qt3DRender::QAttribute *positionAttribute READ positionAttribute CONSTANT)
%%

$prototype=Qt3DRender::QAttribute *positionAttribute() const

%%
%% Q_PROPERTY(Qt3DRender::QAttribute *normalAttribute READ normalAttribute CONSTANT)
%%

$prototype=Qt3DRender::QAttribute *normalAttribute() const

%%
%% Q_PROPERTY(Qt3DRender::QAttribute *texCoordAttribute READ texCoordAttribute CONSTANT)
%%

$prototype=Qt3DRender::QAttribute *texCoordAttribute() const

%%
%% Q_PROPERTY(Qt3DRender::QAttribute *tangentAttribute READ tangentAttribute CONSTANT)
%%

$prototype=Qt3DRender::QAttribute *tangentAttribute() const

%%
%% Q_PROPERTY(Qt3DRender::QAttribute *indexAttribute READ indexAttribute CONSTANT)
%%

$prototype=Qt3DRender::QAttribute *indexAttribute() const

%%
%%
%%

$prototype=void updateVertices()
$prototype=void updateIndices()

%%
%% SIGNALS
%%

$prototype=void radiusChanged(float radius)
$prototype=void ringsChanged(int rings)
$prototype=void slicesChanged(int slices)
$prototype=void generateTangentsChanged(bool generateTangents)

#pragma ENDDUMP
