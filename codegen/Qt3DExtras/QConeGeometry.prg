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

$prototype=explicit QConeGeometry(QNode *parent = nullptr)
$prototype=QConeGeometry(QConeGeometryPrivate &dd, QNode *parent = nullptr) [protected]

$prototype=~QConeGeometry()
$deleteMethod

%%
%% Q_PROPERTY( bool hasTopEndcap READ hasTopEndcap WRITE setHasTopEndcap NOTIFY hasTopEndcapChanged )
%%

$prototype=bool hasTopEndcap() const
$prototype=void setHasTopEndcap( bool hasTopEndcap ) [slot]

%%
%% Q_PROPERTY( bool hasBottomEndcap READ hasBottomEndcap WRITE setHasBottomEndcap NOTIFY hasBottomEndcapChanged )
%%

$prototype=bool hasBottomEndcap() const
$prototype=void setHasBottomEndcap( bool hasBottomEndcap ) [slot]

%%
%% Q_PROPERTY(int rings READ rings WRITE setRings NOTIFY ringsChanged)
%%

$prototype=int rings() const
$prototype=void setRings( int rings ) [slot]

%%
%% Q_PROPERTY(int slices READ slices WRITE setSlices NOTIFY slicesChanged)
%%

$prototype=int slices() const
$prototype=void setSlices( int slices ) [slot]

%%
%% Q_PROPERTY( float topRadius READ topRadius WRITE setTopRadius NOTIFY topRadiusChanged )
%%

$prototype=float topRadius() const
$prototype=void setTopRadius( float topRadius ) [slot]

%%
%% Q_PROPERTY( float bottomRadius READ bottomRadius WRITE setBottomRadius NOTIFY bottomRadiusChanged )
%%

$prototype=float bottomRadius() const
$prototype=void setBottomRadius( float bottomRadius ) [slot]

%%
%% Q_PROPERTY(float length READ length WRITE setLength NOTIFY lengthChanged)
%%

$prototype=float length() const
$prototype=void setLength( float length ) [slot]

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

$prototype=void hasTopEndcapChanged( bool hasTopEndcap )
$signalMethod=|void|hasTopEndcapChanged|bool

$prototype=void hasBottomEndcapChanged( bool hasBottomEndcap )
$signalMethod=|void|hasBottomEndcapChanged|bool

$prototype=void topRadiusChanged( float topRadius )
$signalMethod=|void|topRadiusChanged|float

$prototype=void bottomRadiusChanged( float bottomRadius )
$signalMethod=|void|bottomRadiusChanged|float

$prototype=void ringsChanged( int rings )
$signalMethod=|void|ringsChanged|int

$prototype=void slicesChanged( int slices )
$signalMethod=|void|slicesChanged|int

$prototype=void lengthChanged( float length )
$signalMethod=|void|lengthChanged|float

#pragma ENDDUMP
