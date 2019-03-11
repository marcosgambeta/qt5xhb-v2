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

$prototype=explicit QTorusGeometry(QNode *parent = nullptr)
$prototype=QTorusGeometry(QTorusGeometryPrivate &dd, QNode *parent = nullptr) [protected]

$prototype=~QTorusGeometry()
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
%% Q_PROPERTY(float minorRadius READ minorRadius WRITE setMinorRadius NOTIFY minorRadiusChanged)
%%

$prototype=float minorRadius() const
$prototype=void setMinorRadius(float minorRadius) [slot]

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
$prototype=void minorRadiusChanged(float minorRadius)

#pragma ENDDUMP
