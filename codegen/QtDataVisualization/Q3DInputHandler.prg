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

$beginClassFrom=QAbstract3DInputHandler

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit Q3DInputHandler(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=virtual ~Q3DInputHandler()
$deleteMethod

%%
%% Q_PROPERTY(bool rotationEnabled READ isRotationEnabled WRITE setRotationEnabled NOTIFY rotationEnabledChanged)
%%

$prototypeV2=bool isRotationEnabled() const

$prototype=void setRotationEnabled(bool enable)
$method=|void|setRotationEnabled|bool

%%
%% Q_PROPERTY(bool zoomEnabled READ isZoomEnabled WRITE setZoomEnabled NOTIFY zoomEnabledChanged)
%%

$prototypeV2=bool isZoomEnabled() const

$prototype=void setZoomEnabled(bool enable)
$method=|void|setZoomEnabled|bool

%%
%% Q_PROPERTY(bool selectionEnabled READ isSelectionEnabled WRITE setSelectionEnabled NOTIFY selectionEnabledChanged)
%%

$prototypeV2=bool isSelectionEnabled() const

$prototype=void setSelectionEnabled(bool enable)
$method=|void|setSelectionEnabled|bool

%%
%% Q_PROPERTY(bool zoomAtTargetEnabled READ isZoomAtTargetEnabled WRITE setZoomAtTargetEnabled NOTIFY zoomAtTargetEnabledChanged)
%%

$prototypeV2=bool isZoomAtTargetEnabled() const

$prototype=void setZoomAtTargetEnabled(bool enable)
$method=|void|setZoomAtTargetEnabled|bool

%%
%%
%%

%% TODO: revise methods below

$prototype=virtual void mousePressEvent(QMouseEvent *event, const QPoint &mousePos)
%% $virtualMethod=|void|mousePressEvent|QMouseEvent *,const QPoint &

$prototype=virtual void mouseReleaseEvent(QMouseEvent *event, const QPoint &mousePos)
%% $virtualMethod=|void|mouseReleaseEvent|QMouseEvent *,const QPoint &

$prototype=virtual void mouseMoveEvent(QMouseEvent *event, const QPoint &mousePos)
%% $virtualMethod=|void|mouseMoveEvent|QMouseEvent *,const QPoint &

%% #if QT_CONFIG(wheelevent)
$prototype=virtual void wheelEvent(QWheelEvent *event)
%% $virtualMethod=|void|wheelEvent|QWheelEvent *
%% #endif

%%
%% SIGNALS
%%

$prototype=void rotationEnabledChanged( bool enable )
$signalMethod=|void|rotationEnabledChanged|bool

$prototype=void selectionEnabledChanged( bool enable )
$signalMethod=|void|selectionEnabledChanged|bool

$prototype=void zoomAtTargetEnabledChanged( bool enable )
$signalMethod=|void|zoomAtTargetEnabledChanged|bool

$prototype=void zoomEnabledChanged( bool enable )
$signalMethod=|void|zoomEnabledChanged|bool

#pragma ENDDUMP
