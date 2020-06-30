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

$beginClassFrom=QWindow
%% CLASS QAbstract3DGraph INHERIT QWindow // protected QOpenGLFunction

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

#include <QtDataVisualization/QAbstract3DAxis>
#include <QtDataVisualization/QCustom3DItem>

$prototype=explicit QAbstract3DGraph(QAbstract3DGraphPrivate *d, const QSurfaceFormat *format, QWindow *parent = nullptr) [protected]

$prototype=virtual ~QAbstract3DGraph()
$deleteMethod

%%
%% Q_PROPERTY(QAbstract3DInputHandler* activeInputHandler READ activeInputHandler WRITE setActiveInputHandler NOTIFY activeInputHandlerChanged)
%%

$prototypeV2=QAbstract3DInputHandler * activeInputHandler() const

$prototypeV2=void setActiveInputHandler( QAbstract3DInputHandler * inputHandler )

%%
%% Q_PROPERTY(Q3DTheme* activeTheme READ activeTheme WRITE setActiveTheme NOTIFY activeThemeChanged)
%%

$prototypeV2=Q3DTheme * activeTheme() const

$prototypeV2=void setActiveTheme( Q3DTheme * theme )

%%
%% Q_PROPERTY(SelectionFlags selectionMode READ selectionMode WRITE setSelectionMode NOTIFY selectionModeChanged)
%%

$prototypeV2=QAbstract3DGraph::SelectionFlags selectionMode() const

$prototypeV2=void setSelectionMode( QAbstract3DGraph::SelectionFlags mode )

%%
%% Q_PROPERTY(ShadowQuality shadowQuality READ shadowQuality WRITE setShadowQuality NOTIFY shadowQualityChanged)
%%

$prototypeV2=QAbstract3DGraph::ShadowQuality shadowQuality() const

$prototypeV2=void setShadowQuality( QAbstract3DGraph::ShadowQuality quality )

%%
%% Q_PROPERTY(Q3DScene* scene READ scene)
%%

$prototypeV2=Q3DScene * scene() const

%%
%% Q_PROPERTY(bool measureFps READ measureFps WRITE setMeasureFps NOTIFY measureFpsChanged)
%%

$prototypeV2=bool measureFps() const

$prototypeV2=void setMeasureFps( bool enable )

%%
%% Q_PROPERTY(qreal currentFps READ currentFps NOTIFY currentFpsChanged)
%%

$prototypeV2=qreal currentFps() const

%%
%% Q_PROPERTY(bool orthoProjection READ isOrthoProjection WRITE setOrthoProjection NOTIFY orthoProjectionChanged)
%%

$prototypeV2=bool isOrthoProjection() const

$prototypeV2=void setOrthoProjection( bool enable )

%%
%% Q_PROPERTY(ElementType selectedElement READ selectedElement NOTIFY selectedElementChanged)
%%

$prototypeV2=QAbstract3DGraph::ElementType selectedElement() const

%%
%% Q_PROPERTY(qreal aspectRatio READ aspectRatio WRITE setAspectRatio NOTIFY aspectRatioChanged)
%%

$prototypeV2=qreal aspectRatio() const

$prototypeV2=void setAspectRatio( qreal ratio )

%%
%% Q_PROPERTY(OptimizationHints optimizationHints READ optimizationHints WRITE setOptimizationHints NOTIFY optimizationHintsChanged)
%%

$prototypeV2=QAbstract3DGraph::OptimizationHints optimizationHints() const

$prototypeV2=void setOptimizationHints( QAbstract3DGraph::OptimizationHints hints )

%%
%% Q_PROPERTY(bool polar READ isPolar WRITE setPolar NOTIFY polarChanged)
%%

$prototypeV2=bool isPolar() const

$prototypeV2=void setPolar( bool enable )

%%
%% Q_PROPERTY(float radialLabelOffset READ radialLabelOffset WRITE setRadialLabelOffset NOTIFY radialLabelOffsetChanged)
%%

$prototypeV2=float radialLabelOffset() const

$prototypeV2=void setRadialLabelOffset( float offset )

%%
%% Q_PROPERTY(qreal horizontalAspectRatio READ horizontalAspectRatio WRITE setHorizontalAspectRatio NOTIFY horizontalAspectRatioChanged)
%%

$prototypeV2=qreal horizontalAspectRatio() const

$prototypeV2=void setHorizontalAspectRatio( qreal ratio )

%%
%% Q_PROPERTY(bool reflection READ isReflection WRITE setReflection NOTIFY reflectionChanged)
%%

$prototypeV2=bool isReflection() const

$prototypeV2=void setReflection( bool enable )

%%
%% Q_PROPERTY(qreal reflectivity READ reflectivity WRITE setReflectivity NOTIFY reflectivityChanged)
%%

$prototypeV2=qreal reflectivity() const

$prototypeV2=void setReflectivity( qreal reflectivity )

%%
%% Q_PROPERTY(QLocale locale READ locale WRITE setLocale NOTIFY localeChanged)
%%

$prototypeV2=QLocale locale() const

$prototypeV2=void setLocale( const QLocale & locale )

%%
%% Q_PROPERTY(QVector3D queriedGraphPosition READ queriedGraphPosition NOTIFY queriedGraphPositionChanged)
%%

$prototypeV2=QVector3D queriedGraphPosition() const

%%
%% Q_PROPERTY(qreal margin READ margin WRITE setMargin NOTIFY marginChanged)
%%

$prototypeV2=qreal margin() const

$prototypeV2=void setMargin( qreal margin )

%%
%%
%%

$prototypeV2=void addInputHandler( QAbstract3DInputHandler * inputHandler )

$prototypeV2=void releaseInputHandler( QAbstract3DInputHandler * inputHandler )

$prototypeV2=QList<QAbstract3DInputHandler *> inputHandlers() const

$prototypeV2=void addTheme( Q3DTheme * theme )

$prototypeV2=void releaseTheme( Q3DTheme * theme )

$prototypeV2=QList<Q3DTheme *> themes() const

$prototypeV2=virtual bool shadowsSupported() const

$prototypeV2=void clearSelection()

$prototypeV2=int addCustomItem( QCustom3DItem * item )

$prototypeV2=void removeCustomItems()

$prototypeV2=void removeCustomItem( QCustom3DItem * item )

$prototypeV2=void removeCustomItemAt( const QVector3D & position )

$prototypeV2=void releaseCustomItem( QCustom3DItem * item )

$prototypeV2=QList<QCustom3DItem *> customItems() const

$prototypeV2=QAbstract3DAxis * selectedAxis() const

$prototypeV2=int selectedLabelIndex() const

$prototypeV2=int selectedCustomItemIndex() const

$prototypeV2=QCustom3DItem * selectedCustomItem() const

$prototypeV2=QImage renderToImage( int msaaSamples = 0, const QSize & imageSize = QSize() )

$prototypeV2=bool hasContext() const

$prototype=bool event(QEvent *event) [protected]

$prototype=void resizeEvent(QResizeEvent *event) [protected]

$prototype=void exposeEvent(QExposeEvent *event) [protected]

$prototype=void mouseDoubleClickEvent(QMouseEvent *event) [protected]

$prototype=void touchEvent(QTouchEvent *event) [protected]

$prototype=void mousePressEvent(QMouseEvent *event) [protected]

$prototype=void mouseReleaseEvent(QMouseEvent *event) [protected]

$prototype=void mouseMoveEvent(QMouseEvent *event) [protected]

%% #if QT_CONFIG(wheelevent)
$prototype=void wheelEvent(QWheelEvent *event) [protected]
%% #endif

%%
%% SIGNALS
%%

$prototype=void activeInputHandlerChanged( QAbstract3DInputHandler * inputHandler )
$signalMethod=|void|activeInputHandlerChanged|QAbstract3DInputHandler *

$prototype=void activeThemeChanged( Q3DTheme * theme )
$signalMethod=|void|activeThemeChanged|Q3DTheme *

$prototype=void aspectRatioChanged( qreal ratio )
$signalMethod=|void|aspectRatioChanged|qreal

$prototype=void currentFpsChanged( qreal fps )
$signalMethod=|void|currentFpsChanged|qreal

$prototype=void horizontalAspectRatioChanged( qreal ratio )
$signalMethod=|void|horizontalAspectRatioChanged|qreal

$prototype=void localeChanged( const QLocale & locale )
$signalMethod=|void|localeChanged|const QLocale &

$prototype=void marginChanged( qreal margin )
$signalMethod=|void|marginChanged|qreal

$prototype=void measureFpsChanged( bool enabled )
$signalMethod=|void|measureFpsChanged|bool

$prototype=void optimizationHintsChanged( QAbstract3DGraph::OptimizationHints hints )
$signalMethod=|void|optimizationHintsChanged|QAbstract3DGraph::OptimizationHints

$prototype=void orthoProjectionChanged( bool enabled )
$signalMethod=|void|orthoProjectionChanged|bool

$prototype=void polarChanged( bool enabled )
$signalMethod=|void|polarChanged|bool

$prototype=void queriedGraphPositionChanged( const QVector3D & data )
$signalMethod=|void|queriedGraphPositionChanged|const QVector3D &

$prototype=void radialLabelOffsetChanged( float offset )
$signalMethod=|void|radialLabelOffsetChanged|float

$prototype=void reflectionChanged( bool enabled )
$signalMethod=|void|reflectionChanged|bool

$prototype=void reflectivityChanged( qreal reflectivity )
$signalMethod=|void|reflectivityChanged|qreal

$prototype=void selectedElementChanged( QAbstract3DGraph::ElementType type )
$signalMethod=|void|selectedElementChanged|QAbstract3DGraph::ElementType

$prototype=void selectionModeChanged( QAbstract3DGraph::SelectionFlags mode )
$signalMethod=|void|selectionModeChanged|QAbstract3DGraph::SelectionFlags

$prototype=void shadowQualityChanged( QAbstract3DGraph::ShadowQuality quality )
$signalMethod=|void|shadowQualityChanged|QAbstract3DGraph::ShadowQuality

#pragma ENDDUMP
