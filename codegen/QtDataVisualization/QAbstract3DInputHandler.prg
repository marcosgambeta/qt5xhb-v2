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

$prototype=explicit QAbstract3DInputHandler(QObject *parent = nullptr) [protected]

$prototype=virtual ~QAbstract3DInputHandler()
$deleteMethod

%%
%% Q_PROPERTY(InputView inputView READ inputView WRITE setInputView NOTIFY inputViewChanged)
%%

$prototypeV2=QAbstract3DInputHandler::InputView inputView() const

$prototypeV2=void setInputView( QAbstract3DInputHandler::InputView inputView )

%%
%% Q_PROPERTY(QPoint inputPosition READ inputPosition WRITE setInputPosition NOTIFY positionChanged)
%%

$prototypeV2=QPoint inputPosition() const

$prototypeV2=void setInputPosition( const QPoint & position )

%%
%% Q_PROPERTY(Q3DScene *scene READ scene WRITE setScene NOTIFY sceneChanged)
%%

$prototypeV2=Q3DScene * scene() const

$prototypeV2=void setScene( Q3DScene * scene )

%%
%%
%%

$prototype=virtual void mouseDoubleClickEvent(QMouseEvent *event)

$prototype=virtual void touchEvent(QTouchEvent *event)

$prototype=virtual void mousePressEvent(QMouseEvent *event, const QPoint &mousePos)

$prototype=virtual void mouseReleaseEvent(QMouseEvent *event, const QPoint &mousePos)

$prototype=virtual void mouseMoveEvent(QMouseEvent *event, const QPoint &mousePos)

%% #if QT_CONFIG(wheelevent)
$prototype=virtual void wheelEvent(QWheelEvent *event)
%% #endif

$prototype=void setPrevDistance(int distance) [protected]

$prototype=int prevDistance() const [protected]

$prototype=void setPreviousInputPos(const QPoint &position) [protected]

$prototype=QPoint previousInputPos() const [protected]

%%
%% SIGNALS
%%

$prototype=void inputViewChanged( QAbstract3DInputHandler::InputView view )
$signalMethod=|void|inputViewChanged|QAbstract3DInputHandler::InputView

$prototype=void positionChanged( const QPoint & position )
$signalMethod=|void|positionChanged|const QPoint &

$prototype=void sceneChanged( Q3DScene * scene )
$signalMethod=|void|sceneChanged|Q3DScene *

#pragma ENDDUMP
