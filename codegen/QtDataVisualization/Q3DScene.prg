%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=QRect viewport() const
$method=|QRect|viewport|

%%
%% Q_PROPERTY(QRect primarySubViewport READ primarySubViewport WRITE setPrimarySubViewport NOTIFY primarySubViewportChanged)
%%

$prototype=QRect primarySubViewport() const
$method=|QRect|primarySubViewport|

$prototype=void setPrimarySubViewport(const QRect &primarySubViewport)
$method=|void|setPrimarySubViewport|const QRect &

%%
%% Q_PROPERTY(QRect secondarySubViewport READ secondarySubViewport WRITE setSecondarySubViewport NOTIFY secondarySubViewportChanged)
%%

$prototype=QRect secondarySubViewport() const
$method=|QRect|secondarySubViewport|

$prototype=void setSecondarySubViewport(const QRect &secondarySubViewport)
$method=|void|setSecondarySubViewport|const QRect &

%%
%% Q_PROPERTY(QPoint selectionQueryPosition READ selectionQueryPosition WRITE setSelectionQueryPosition NOTIFY selectionQueryPositionChanged)
%%

$prototype=QPoint selectionQueryPosition() const
$method=|QPoint|selectionQueryPosition|

$prototype=void setSelectionQueryPosition(const QPoint &point)
$method=|void|setSelectionQueryPosition|const QPoint &

%%
%% Q_PROPERTY(bool secondarySubviewOnTop READ isSecondarySubviewOnTop  WRITE setSecondarySubviewOnTop  NOTIFY secondarySubviewOnTopChanged)
%%

$prototype=bool isSecondarySubviewOnTop() const
$method=|bool|isSecondarySubviewOnTop|

$prototype=void setSecondarySubviewOnTop(bool isSecondaryOnTop)
$method=|void|setSecondarySubviewOnTop|bool

%%
%% Q_PROPERTY(bool slicingActive READ isSlicingActive WRITE setSlicingActive NOTIFY slicingActiveChanged)
%%

$prototype=bool isSlicingActive() const
$method=|bool|isSlicingActive|

$prototype=void setSlicingActive(bool isSlicing)
$method=|void|setSlicingActive|bool

%%
%% Q_PROPERTY(Q3DCamera* activeCamera READ activeCamera WRITE setActiveCamera NOTIFY activeCameraChanged)
%%

$prototype=Q3DCamera *activeCamera() const
$method=|Q3DCamera *|activeCamera|

$prototype=void setActiveCamera(Q3DCamera *camera)
$method=|void|setActiveCamera|Q3DCamera *

%%
%% Q_PROPERTY(Q3DLight* activeLight READ activeLight WRITE setActiveLight NOTIFY activeLightChanged)
%%

$prototype=Q3DLight *activeLight() const
$method=|Q3DLight *|activeLight|

$prototype=void setActiveLight(Q3DLight *light)
$method=|void|setActiveLight|Q3DLight *

%%
%% Q_PROPERTY(float devicePixelRatio READ devicePixelRatio WRITE setDevicePixelRatio NOTIFY devicePixelRatioChanged)
%%

$prototype=float devicePixelRatio() const
$method=|float|devicePixelRatio|

$prototype=void setDevicePixelRatio(float pixelRatio)
$method=|void|setDevicePixelRatio|float

%%
%% Q_PROPERTY(QPoint graphPositionQuery READ graphPositionQuery WRITE setGraphPositionQuery NOTIFY graphPositionQueryChanged REVISION 1)
%%

$prototype=QPoint graphPositionQuery() const
$method=|QPoint|graphPositionQuery|

$prototype=void setGraphPositionQuery(const QPoint &point)
$method=|void|setGraphPositionQuery|const QPoint &

%%
%%
%%

$prototype=bool isPointInPrimarySubView(const QPoint &point)
$method=|bool|isPointInPrimarySubView|const QPoint &

$prototype=bool isPointInSecondarySubView(const QPoint &point)
$method=|bool|isPointInSecondarySubView|const QPoint &

$prototype=static QPoint invalidSelectionPoint()
$staticMethod=|QPoint|invalidSelectionPoint|

%%
%% SIGNALS
%%

%% using namespace QtDataVisualization;

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
