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

$prototype=explicit QPlaneGeometry(QNode *parent = nullptr)
$prototype=QPlaneGeometry(QPlaneGeometryPrivate &dd, QNode *parent = nullptr) [protected]

$prototype=~QPlaneGeometry()
$deleteMethod

%%
%% Q_PROPERTY(float width READ width WRITE setWidth NOTIFY widthChanged)
%%

$prototype=float width() const
$prototype=void setWidth(float width) [slot]

%%
%% Q_PROPERTY(float height READ height WRITE setHeight NOTIFY heightChanged)
%%

$prototype=float height() const
$prototype=void setHeight(float height) [slot]

%%
%% Q_PROPERTY(QSize resolution READ resolution WRITE setResolution NOTIFY resolutionChanged)
%%

$prototype=QSize resolution() const
$prototype=void setResolution(const QSize &resolution) [slot]

%%
%% Q_PROPERTY(bool mirrored READ mirrored WRITE setMirrored NOTIFY mirroredChanged REVISION 9)
%%

$prototype=bool mirrored() const
$prototype=void setMirrored(bool mirrored) [slot]

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

$prototype=void updateVertices()
$prototype=void updateIndices()

%%
%% SIGNALS
%%

$prototype=void resolutionChanged(const QSize &resolution)
$prototype=void widthChanged(float width)
$prototype=void heightChanged(float height)
$prototype=void mirroredChanged(bool mirrored)

#pragma ENDDUMP
