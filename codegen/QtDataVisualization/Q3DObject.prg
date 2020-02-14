%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization
$added=5,7,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtDataVisualization/Q3DScene>

using namespace QtDataVisualization;

$prototype=explicit Q3DObject(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=virtual ~Q3DObject()
$deleteMethod

%%
%% Q_PROPERTY(Q3DScene* parentScene READ parentScene)
%%

$prototype=Q3DScene *parentScene()
$method=|Q3DScene *|parentScene|

%%
%% Q_PROPERTY(QVector3D position READ position WRITE setPosition NOTIFY positionChanged)
%%

$prototype=QVector3D position() const
$method=|QVector3D|position|

$prototype=void setPosition(const QVector3D &position)
$method=|void|setPosition|const QVector3D &

%%
%%
%%

$prototype=virtual void copyValuesFrom(const Q3DObject &source)
$virtualMethod=|void|copyValuesFrom|const Q3DObject &

$prototype=void setDirty(bool dirty) [protected]

$prototype=bool isDirty() const [protected]

%%
%% SIGNALS
%%

%% using namespace QtDataVisualization;

$prototype=void positionChanged( const QVector3D & position )
$signalMethod=|void|positionChanged|const QVector3D &

#pragma ENDDUMP
