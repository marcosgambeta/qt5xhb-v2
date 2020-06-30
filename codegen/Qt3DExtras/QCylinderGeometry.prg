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

$prototype=explicit QCylinderGeometry(QNode *parent = nullptr)
$prototype=QCylinderGeometry(QCylinderGeometryPrivate &dd, QNode *parent = nullptr) [protected]

$prototype=~QCylinderGeometry()
$deleteMethod

%%
%% Q_PROPERTY(int rings READ rings WRITE setRings NOTIFY ringsChanged)
%%

$prototypeV2=int rings() const

$prototypeV2=void setRings( int rings ) [slot]

%%
%% Q_PROPERTY(int slices READ slices WRITE setSlices NOTIFY slicesChanged)
%%

$prototypeV2=int slices() const

$prototypeV2=void setSlices( int slices ) [slot]

%%
%% Q_PROPERTY(float radius READ radius WRITE setRadius NOTIFY radiusChanged)
%%

$prototypeV2=float radius() const

$prototypeV2=void setRadius( float radius ) [slot]

%%
%% Q_PROPERTY(float length READ length WRITE setLength NOTIFY lengthChanged)
%%

$prototypeV2=float length() const

$prototypeV2=void setLength( float length ) [slot]

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
%% Q_PROPERTY(Qt3DRender::QAttribute *indexAttribute READ indexAttribute CONSTANT)
%%

$prototypeV2=Qt3DRender::QAttribute * indexAttribute() const

%%
%%
%%

$prototypeV2=void updateVertices()

$prototypeV2=void updateIndices()

%%
%% SIGNALS
%%

$prototype=void radiusChanged(float radius)
$signalMethod=|void|radiusChanged|float

$prototype=void ringsChanged(int rings)
$signalMethod=|void|ringsChanged|int

$prototype=void slicesChanged(int slices)
$signalMethod=|void|slicesChanged|int

$prototype=void lengthChanged(float length)
$signalMethod=|void|lengthChanged|float

#pragma ENDDUMP
