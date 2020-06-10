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

using namespace QtDataVisualization;

$prototype=explicit Q3DScene(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=virtual ~Q3DScene()
$deleteMethod

%%
%% Q_PROPERTY(QRect viewport READ viewport NOTIFY viewportChanged)
%%

$prototypeV2=QRect viewport() const

%%
%% Q_PROPERTY(QRect primarySubViewport READ primarySubViewport WRITE setPrimarySubViewport NOTIFY primarySubViewportChanged)
%%

$prototypeV2=QRect primarySubViewport() const

$prototype=void setPrimarySubViewport(const QRect &primarySubViewport)
$method=|void|setPrimarySubViewport|const QRect &

%%
%% Q_PROPERTY(QRect secondarySubViewport READ secondarySubViewport WRITE setSecondarySubViewport NOTIFY secondarySubViewportChanged)
%%

$prototypeV2=QRect secondarySubViewport() const

$prototype=void setSecondarySubViewport(const QRect &secondarySubViewport)
$method=|void|setSecondarySubViewport|const QRect &

%%
%% Q_PROPERTY(QPoint selectionQueryPosition READ selectionQueryPosition WRITE setSelectionQueryPosition NOTIFY selectionQueryPositionChanged)
%%

$prototypeV2=QPoint selectionQueryPosition() const

$prototype=void setSelectionQueryPosition(const QPoint &point)
$method=|void|setSelectionQueryPosition|const QPoint &

%%
%% Q_PROPERTY(bool secondarySubviewOnTop READ isSecondarySubviewOnTop  WRITE setSecondarySubviewOnTop  NOTIFY secondarySubviewOnTopChanged)
%%

$prototypeV2=bool isSecondarySubviewOnTop() const

$prototype=void setSecondarySubviewOnTop(bool isSecondaryOnTop)
$method=|void|setSecondarySubviewOnTop|bool

%%
%% Q_PROPERTY(bool slicingActive READ isSlicingActive WRITE setSlicingActive NOTIFY slicingActiveChanged)
%%

$prototypeV2=bool isSlicingActive() const

$prototype=void setSlicingActive(bool isSlicing)
$method=|void|setSlicingActive|bool

%%
%% Q_PROPERTY(Q3DCamera* activeCamera READ activeCamera WRITE setActiveCamera NOTIFY activeCameraChanged)
%%

$prototypeV2=Q3DCamera * activeCamera() const

$prototype=void setActiveCamera(Q3DCamera *camera)
$method=|void|setActiveCamera|Q3DCamera *

%%
%% Q_PROPERTY(Q3DLight* activeLight READ activeLight WRITE setActiveLight NOTIFY activeLightChanged)
%%

$prototypeV2=Q3DLight * activeLight() const

$prototype=void setActiveLight(Q3DLight *light)
$method=|void|setActiveLight|Q3DLight *

%%
%% Q_PROPERTY(float devicePixelRatio READ devicePixelRatio WRITE setDevicePixelRatio NOTIFY devicePixelRatioChanged)
%%

$prototypeV2=float devicePixelRatio() const

$prototype=void setDevicePixelRatio(float pixelRatio)
$method=|void|setDevicePixelRatio|float

%%
%% Q_PROPERTY(QPoint graphPositionQuery READ graphPositionQuery WRITE setGraphPositionQuery NOTIFY graphPositionQueryChanged REVISION 1)
%%

$prototypeV2=QPoint graphPositionQuery() const

$prototype=void setGraphPositionQuery(const QPoint &point)
$method=|void|setGraphPositionQuery|const QPoint &

%%
%%
%%

$prototype=bool isPointInPrimarySubView(const QPoint &point)
$method=|bool|isPointInPrimarySubView|const QPoint &

$prototype=bool isPointInSecondarySubView(const QPoint &point)
$method=|bool|isPointInSecondarySubView|const QPoint &

$prototypeV2=static QPoint invalidSelectionPoint()

%%
%% SIGNALS
%%

$prototype=void activeCameraChanged( Q3DCamera * camera )
$signalMethod=|void|activeCameraChanged|Q3DCamera *

$prototype=void activeLightChanged( Q3DLight * light )
$signalMethod=|void|activeLightChanged|Q3DLight *

$prototype=void devicePixelRatioChanged( float pixelRatio )
$signalMethod=|void|devicePixelRatioChanged|float

$prototype=void graphPositionQueryChanged( const QPoint & position )
$signalMethod=|void|graphPositionQueryChanged|const QPoint &

$prototype=void primarySubViewportChanged( const QRect & subViewport )
$signalMethod=|void|primarySubViewportChanged|const QRect &

$prototype=void secondarySubviewOnTopChanged( bool isSecondaryOnTop )
$signalMethod=|void|secondarySubviewOnTopChanged|bool

$prototype=void secondarySubViewportChanged( const QRect & subViewport )
$signalMethod=|void|secondarySubViewportChanged|const QRect &

$prototype=void selectionQueryPositionChanged( const QPoint & position )
$signalMethod=|void|selectionQueryPositionChanged|const QPoint &

$prototype=void slicingActiveChanged( bool isSlicingActive )
$signalMethod=|void|slicingActiveChanged|bool

$prototype=void viewportChanged( const QRect & viewport )
$signalMethod=|void|viewportChanged|const QRect &

#pragma ENDDUMP
