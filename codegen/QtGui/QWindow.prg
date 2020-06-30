%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject,QSurface

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QScreen>

$prototype=QWindow(QScreen * screen = nullptr)
$internalConstructor=|new1|QScreen *=nullptr

$prototype=QWindow(QWindow * parent)
$internalConstructor=|new2|QWindow *

$prototype=QWindow(QWindowPrivate &dd, QWindow *parent) [protected]

/*
[1]explicit QWindow(QScreen *screen = nullptr)
[2]explicit QWindow(QWindow *parent)
*/

HB_FUNC_STATIC( QWINDOW_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSCREEN(1)||ISNIL(1)) )
  {
    QWindow_new1();
  }
  else if( ISNUMPAR(1) && ISQWINDOW(1) )
  {
    QWindow_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual ~QWindow()
$deleteMethod

%%
%% Q_PROPERTY(QString title READ title WRITE setTitle NOTIFY windowTitleChanged)
%%

$prototypeV2=QString title() const

$prototypeV2=void setTitle( const QString & ) [slot]

%%
%% Q_PROPERTY(Qt::WindowModality modality READ modality WRITE setModality NOTIFY modalityChanged)
%%

$prototypeV2=Qt::WindowModality modality() const

$prototypeV2=void setModality( Qt::WindowModality modality )

%%
%% Q_PROPERTY(Qt::WindowFlags flags READ flags WRITE setFlags)
%%

$prototypeV2=Qt::WindowFlags flags() const

$prototypeV2=void setFlags( Qt::WindowFlags flags )

%%
%% Q_PROPERTY(int x READ x WRITE setX NOTIFY xChanged)
%%

$prototypeV2=int x() const

$prototypeV2=void setX( int arg ) [slot]

%%
%% Q_PROPERTY(int y READ y WRITE setY NOTIFY yChanged)
%%

$prototypeV2=int y() const

$prototypeV2=void setY( int arg ) [slot]

%%
%% Q_PROPERTY(int width READ width WRITE setWidth NOTIFY widthChanged)
%%

$prototypeV2=int width() const

$prototypeV2=void setWidth( int arg ) [slot]

%%
%% Q_PROPERTY(int height READ height WRITE setHeight NOTIFY heightChanged)
%%

$prototypeV2=int height() const

$prototypeV2=void setHeight( int arg ) [slot]

%%
%% Q_PROPERTY(int minimumWidth READ minimumWidth WRITE setMinimumWidth NOTIFY minimumWidthChanged)
%%

$prototypeV2=int minimumWidth() const

$prototypeV2=void setMinimumWidth( int w ) [slot]

%%
%% Q_PROPERTY(int minimumHeight READ minimumHeight WRITE setMinimumHeight NOTIFY minimumHeightChanged)
%%

$prototypeV2=int minimumHeight() const

$prototypeV2=void setMinimumHeight( int h ) [slot]

%%
%% Q_PROPERTY(int maximumWidth READ maximumWidth WRITE setMaximumWidth NOTIFY maximumWidthChanged)
%%

$prototypeV2=int maximumWidth() const

$prototypeV2=void setMaximumWidth( int w ) [slot]

%%
%% Q_PROPERTY(int maximumHeight READ maximumHeight WRITE setMaximumHeight NOTIFY maximumHeightChanged)
%%

$prototypeV2=int maximumHeight() const

$prototypeV2=void setMaximumHeight( int h ) [slot]

%%
%% Q_PROPERTY(bool visible READ isVisible WRITE setVisible NOTIFY visibleChanged)
%%

$prototypeV2=bool isVisible() const

$prototypeV2=void setVisible( bool visible ) [slot]

%%
%% Q_PROPERTY(bool active READ isActive NOTIFY activeChanged REVISION 1)
%%

$prototypeV2=5,1,0|bool isActive() const

%%
%% Q_PROPERTY(Visibility visibility READ visibility WRITE setVisibility NOTIFY visibilityChanged REVISION 1)
%%

$prototypeV2=5,1,0|QWindow::Visibility visibility() const

$prototypeV2=5,1,0|void setVisibility( QWindow::Visibility v )

%%
%% Q_PROPERTY(Qt::ScreenOrientation contentOrientation READ contentOrientation WRITE reportContentOrientationChange NOTIFY contentOrientationChanged)
%%

$prototypeV2=Qt::ScreenOrientation contentOrientation() const

$prototypeV2=void reportContentOrientationChange( Qt::ScreenOrientation orientation )

%%
%% Q_PROPERTY(qreal opacity READ opacity WRITE setOpacity NOTIFY opacityChanged REVISION 1)
%%

$prototypeV2=5,1,0|qreal opacity() const

$prototypeV2=5,1,0|void setOpacity( qreal level )

%%
%%
%%

$prototypeV2=QSize baseSize() const

$prototypeV2=void create()

$prototype=QCursor cursor() const
$method=|QCursor|cursor||#ifndef QT_NO_CURSOR

$prototypeV2=void destroy()

$prototypeV2=virtual QObject * focusObject() const

$prototypeV2=QRect frameGeometry() const

$prototypeV2=QMargins frameMargins() const

$prototypeV2=QRect geometry() const

$prototypeV2=bool isAncestorOf( const QWindow * child, QWindow::AncestorMode mode = QWindow::IncludeTransients ) const

$prototypeV2=bool isExposed() const

$prototypeV2=bool isModal() const

$prototypeV2=bool isTopLevel() const

$prototypeV2=QPoint mapFromGlobal( const QPoint & pos ) const

$prototypeV2=QPoint mapToGlobal( const QPoint & pos ) const

$prototypeV2=QSize maximumSize() const

$prototypeV2=QSize minimumSize() const

$prototype=QWindow *parent(AncestorMode mode) const
$internalMethod=5,9,0|QWindow *|parent,parent1|QWindow::AncestorMode

$prototype=QWindow * parent() const
$internalMethod=|QWindow *|parent,parent2|

/*
[1]QWindow *parent(AncestorMode mode) const
[2]QWindow * parent() const
*/

HB_FUNC_STATIC( QWINDOW_PARENT )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QWindow_parent1();
  }
  else if( ISNUMPAR(0) )
  {
    QWindow_parent2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=resize

$prototypeV2=QSurfaceFormat requestedFormat() const

$prototype=void resize(const QSize & newSize)
$internalMethod=|void|resize,resize1|const QSize &

$prototype=void resize(int w, int h)
$internalMethod=|void|resize,resize2|int,int

/*
[1]void resize(const QSize & newSize)
[2]void resize(int w, int h)
*/

HB_FUNC_STATIC( QWINDOW_RESIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QWindow_resize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWindow_resize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=resize

$prototypeV2=QScreen * screen() const

$prototypeV2=void setBaseSize( const QSize & size )

$prototype=void setCursor(const QCursor &)
$method=|void|setCursor|const QCursor &|#ifndef QT_NO_CURSOR

$prototypeV2=void setFormat( const QSurfaceFormat & format )

$prototype=void setGeometry(int posx, int posy, int w, int h) [slot]
$internalMethod=|void|setGeometry,setGeometry1|int,int,int,int

$prototype=void setGeometry(const QRect & rect) [slot]
$internalMethod=|void|setGeometry,setGeometry2|const QRect &

/*
[1]void setGeometry(int posx, int posy, int w, int h)
[2]void setGeometry(const QRect & rect)
*/

HB_FUNC_STATIC( QWINDOW_SETGEOMETRY )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QWindow_setGeometry1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QWindow_setGeometry2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setGeometry

$prototypeV2=bool setKeyboardGrabEnabled( bool grab )

$prototypeV2=void setMaximumSize( const QSize & size )

$prototypeV2=void setMinimumSize( const QSize & size )

$prototypeV2=bool setMouseGrabEnabled( bool grab )

$prototypeV2=void setParent( QWindow * parent )

$prototypeV2=void setScreen( QScreen * newScreen )

$prototypeV2=void setSizeIncrement( const QSize & size )

$prototypeV2=void setSurfaceType( QSurface::SurfaceType surfaceType )

$prototypeV2=void setTransientParent( QWindow * parent )

$prototypeV2=QSize sizeIncrement() const

$prototypeV2=QWindow * transientParent() const

$prototype=void unsetCursor()
$method=|void|unsetCursor||#ifndef QT_NO_CURSOR

$prototypeV2=Qt::WindowState windowState() const

$prototypeV2=virtual QSurfaceFormat format() const override
%% TODO: is virtual ?

$prototypeV2=virtual QSize size() const override
%% TODO: is virtual ?

$prototypeV2=virtual QSurface::SurfaceType surfaceType() const override
%% TODO: is virtual ?

$prototypeV2=bool close() [slot]

$prototypeV2=void hide() [slot]

$prototypeV2=void lower() [slot]

$prototypeV2=void raise() [slot]

$prototypeV2=void show() [slot]

$prototypeV2=void showFullScreen() [slot]

$prototypeV2=void showMaximized() [slot]

$prototypeV2=void showMinimized() [slot]

$prototypeV2=void showNormal() [slot]

$prototypeV2=QPoint position() const

$prototype=void setPosition(const QPoint & pt)
$internalMethod=|void|setPosition,setPosition1|const QPoint &

$prototype=void setPosition(int posx, int posy)
$internalMethod=|void|setPosition,setPosition2|int,int

/*
[1]void setPosition(const QPoint & pt)
[2]void setPosition(int posx, int posy)
*/

HB_FUNC_STATIC( QWINDOW_SETPOSITION )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QWindow_setPosition1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWindow_setPosition2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setPosition

$prototype=Q_REVISION(3) void requestUpdate() [slot]
$slotMethod=5,5,0|void|requestUpdate|

$prototypeV2=WId winId() const

$prototypeV2=5,9,0|void setFlag( Qt::WindowType, bool on = true )

$prototypeV2=Qt::WindowType type() const

$prototypeV2=void setMask( const QRegion & region )

$prototypeV2=QRegion mask() const

$prototypeV2=qreal devicePixelRatio() const

$prototypeV2=5,10,0|Qt::WindowStates windowStates() const

$prototypeV2=void setWindowState( Qt::WindowState state )

$prototypeV2=5,10,0|void setWindowStates( Qt::WindowStates states )

$prototypeV2=QPoint framePosition() const

$prototypeV2=void setFramePosition( const QPoint & point )

$prototypeV2=void setFilePath( const QString & filePath )

$prototypeV2=QString filePath() const

$prototypeV2=void setIcon( const QIcon & icon )

$prototypeV2=QIcon icon() const

$prototype=QPlatformWindow *handle() const
%% TODO: $method=|QPlatformWindow *|handle|

$prototypeV2=virtual QAccessibleInterface * accessibleRoot() const

$prototypeV2=static QWindow * fromWinId( WId id )

$prototype=void setVulkanInstance(QVulkanInstance *instance)
%% TODO: $method=|void|setVulkanInstance|QVulkanInstance *|#if QT_CONFIG(vulkan) || defined(Q_CLANG_QDOC)

$prototype=QVulkanInstance *vulkanInstance() const
%% TODO: $method=|QVulkanInstance *|vulkanInstance||#if QT_CONFIG(vulkan) || defined(Q_CLANG_QDOC)

$prototype=Q_REVISION(1) void requestActivate() [slot]
$slotMethod=|void|requestActivate|

$prototype=Q_REVISION(1) void alert(int msec) [slot]
$slotMethod=5,1,0|void|alert|int

$prototype=virtual void exposeEvent(QExposeEvent *) [protected]

$prototype=virtual void resizeEvent(QResizeEvent *) [protected]

$prototype=virtual void moveEvent(QMoveEvent *) [protected]

$prototype=virtual void focusInEvent(QFocusEvent *) [protected]

$prototype=virtual void focusOutEvent(QFocusEvent *) [protected]

$prototype=virtual void showEvent(QShowEvent *) [protected]

$prototype=virtual void hideEvent(QHideEvent *) [protected]

$prototype=virtual bool event(QEvent *) override [protected]

$prototype=virtual void keyPressEvent(QKeyEvent *) [protected]

$prototype=virtual void keyReleaseEvent(QKeyEvent *) [protected]

$prototype=virtual void mousePressEvent(QMouseEvent *) [protected]

$prototype=virtual void mouseReleaseEvent(QMouseEvent *) [protected]

$prototype=virtual void mouseDoubleClickEvent(QMouseEvent *) [protected]

$prototype=virtual void mouseMoveEvent(QMouseEvent *) [protected]

%% #if QT_CONFIG(wheelevent)
$prototype=virtual void wheelEvent(QWheelEvent *) [protected]
%% #endif

$prototype=virtual void touchEvent(QTouchEvent *) [protected]

%% #if QT_CONFIG(tabletevent)
$prototype=virtual void tabletEvent(QTabletEvent *) [protected]
%% #endif

$prototype=virtual bool nativeEvent(const QByteArray &eventType, void *message, long *result) [protected]

$prototype=QPlatformSurface *surfaceHandle() const override [private]

%%
%% SIGNALS
%%

$prototype=void activeChanged()
$signalMethod=5,1,0|void|activeChanged|

$prototype=void contentOrientationChanged(Qt::ScreenOrientation orientation)
$signalMethod=|void|contentOrientationChanged|Qt::ScreenOrientation

$prototype=void focusObjectChanged(QObject *object)
$signalMethod=|void|focusObjectChanged|QObject *

$prototype=void heightChanged(int arg)
$signalMethod=|void|heightChanged|int

$prototype=void maximumHeightChanged(int arg)
$signalMethod=|void|maximumHeightChanged|int

$prototype=void maximumWidthChanged(int arg)
$signalMethod=|void|maximumWidthChanged|int

$prototype=void minimumHeightChanged(int arg)
$signalMethod=|void|minimumHeightChanged|int

$prototype=void minimumWidthChanged(int arg)
$signalMethod=|void|minimumWidthChanged|int

$prototype=void modalityChanged(Qt::WindowModality modality)
$signalMethod=|void|modalityChanged|Qt::WindowModality

$prototype=void opacityChanged(qreal opacity)
$signalMethod=5,1,0|void|opacityChanged|qreal

$prototype=void screenChanged(QScreen *screen)
$signalMethod=|void|screenChanged|QScreen *

$prototype=void visibilityChanged(QWindow::Visibility visibility)
$signalMethod=5,1,0|void|visibilityChanged|QWindow::Visibility

$prototype=void visibleChanged(bool arg)
$signalMethod=|void|visibleChanged|bool

$prototype=void widthChanged(int arg)
$signalMethod=|void|widthChanged|int

$prototype=void windowStateChanged(Qt::WindowState windowState)
$signalMethod=|void|windowStateChanged|Qt::WindowState

$prototype=void windowTitleChanged(const QString &title)
$signalMethod=|void|windowTitleChanged|const QString &

$prototype=void xChanged(int arg)
$signalMethod=|void|xChanged|int

$prototype=void yChanged(int arg)
$signalMethod=|void|yChanged|int

#pragma ENDDUMP
