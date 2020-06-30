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

$prototypeV2=void setPrimarySubViewport( const QRect & primarySubViewport )

%%
%% Q_PROPERTY(QRect secondarySubViewport READ secondarySubViewport WRITE setSecondarySubViewport NOTIFY secondarySubViewportChanged)
%%

$prototypeV2=QRect secondarySubViewport() const

$prototypeV2=void setSecondarySubViewport( const QRect & secondarySubViewport )

%%
%% Q_PROPERTY(QPoint selectionQueryPosition READ selectionQueryPosition WRITE setSelectionQueryPosition NOTIFY selectionQueryPositionChanged)
%%

$prototypeV2=QPoint selectionQueryPosition() const

$prototypeV2=void setSelectionQueryPosition( const QPoint & point )

%%
%% Q_PROPERTY(bool secondarySubviewOnTop READ isSecondarySubviewOnTop  WRITE setSecondarySubviewOnTop  NOTIFY secondarySubviewOnTopChanged)
%%

$prototypeV2=bool isSecondarySubviewOnTop() const

$prototypeV2=void setSecondarySubviewOnTop( bool isSecondaryOnTop )

%%
%% Q_PROPERTY(bool slicingActive READ isSlicingActive WRITE setSlicingActive NOTIFY slicingActiveChanged)
%%

$prototypeV2=bool isSlicingActive() const

$prototypeV2=void setSlicingActive( bool isSlicing )

%%
%% Q_PROPERTY(Q3DCamera* activeCamera READ activeCamera WRITE setActiveCamera NOTIFY activeCameraChanged)
%%

$prototypeV2=Q3DCamera * activeCamera() const

$prototypeV2=void setActiveCamera( Q3DCamera * camera )

%%
%% Q_PROPERTY(Q3DLight* activeLight READ activeLight WRITE setActiveLight NOTIFY activeLightChanged)
%%

$prototypeV2=Q3DLight * activeLight() const

$prototypeV2=void setActiveLight( Q3DLight * light )

%%
%% Q_PROPERTY(float devicePixelRatio READ devicePixelRatio WRITE setDevicePixelRatio NOTIFY devicePixelRatioChanged)
%%

$prototypeV2=float devicePixelRatio() const

$prototypeV2=void setDevicePixelRatio( float pixelRatio )

%%
%% Q_PROPERTY(QPoint graphPositionQuery READ graphPositionQuery WRITE setGraphPositionQuery NOTIFY graphPositionQueryChanged REVISION 1)
%%

$prototypeV2=QPoint graphPositionQuery() const

$prototypeV2=void setGraphPositionQuery( const QPoint & point )

%%
%%
%%

$prototypeV2=bool isPointInPrimarySubView( const QPoint & point )

$prototypeV2=bool isPointInSecondarySubView( const QPoint & point )

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
