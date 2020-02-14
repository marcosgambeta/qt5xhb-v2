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

//[1]explicit QWindow(QScreen *screen = nullptr)
//[2]explicit QWindow(QWindow *parent)

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
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual ~QWindow()
$deleteMethod

%%
%% Q_PROPERTY(QString title READ title WRITE setTitle NOTIFY windowTitleChanged)
%%

$prototype=QString title() const
$method=|QString|title|

$prototype=void setTitle(const QString &) [slot]
$method=|void|setTitle|const QString &

%%
%% Q_PROPERTY(Qt::WindowModality modality READ modality WRITE setModality NOTIFY modalityChanged)
%%

$prototype=Qt::WindowModality modality() const
$method=|Qt::WindowModality|modality|

$prototype=void setModality(Qt::WindowModality modality)
$method=|void|setModality|Qt::WindowModality

%%
%% Q_PROPERTY(Qt::WindowFlags flags READ flags WRITE setFlags)
%%

$prototype=Qt::WindowFlags flags() const
$method=|Qt::WindowFlags|flags|

$prototype=void setFlags(Qt::WindowFlags flags)
$method=|void|setFlags|Qt::WindowFlags

%%
%% Q_PROPERTY(int x READ x WRITE setX NOTIFY xChanged)
%%

$prototype=int x() const
$method=|int|x|

$prototype=void setX(int arg) [slot]
$method=|void|setX|int

%%
%% Q_PROPERTY(int y READ y WRITE setY NOTIFY yChanged)
%%

$prototype=int y() const
$method=|int|y|

$prototype=void setY(int arg) [slot]
$method=|void|setY|int

%%
%% Q_PROPERTY(int width READ width WRITE setWidth NOTIFY widthChanged)
%%

$prototype=int width() const
$method=|int|width|

$prototype=void setWidth(int arg) [slot]
$method=|void|setWidth|int

%%
%% Q_PROPERTY(int height READ height WRITE setHeight NOTIFY heightChanged)
%%

$prototype=int height() const
$method=|int|height|

$prototype=void setHeight(int arg) [slot]
$method=|void|setHeight|int

%%
%% Q_PROPERTY(int minimumWidth READ minimumWidth WRITE setMinimumWidth NOTIFY minimumWidthChanged)
%%

$prototype=int minimumWidth() const
$method=|int|minimumWidth|

$prototype=void setMinimumWidth(int w) [slot]
$method=|void|setMinimumWidth|int

%%
%% Q_PROPERTY(int minimumHeight READ minimumHeight WRITE setMinimumHeight NOTIFY minimumHeightChanged)
%%

$prototype=int minimumHeight() const
$method=|int|minimumHeight|

$prototype=void setMinimumHeight(int h) [slot]
$method=|void|setMinimumHeight|int

%%
%% Q_PROPERTY(int maximumWidth READ maximumWidth WRITE setMaximumWidth NOTIFY maximumWidthChanged)
%%

$prototype=int maximumWidth() const
$method=|int|maximumWidth|

$prototype=void setMaximumWidth(int w) [slot]
$method=|void|setMaximumWidth|int

%%
%% Q_PROPERTY(int maximumHeight READ maximumHeight WRITE setMaximumHeight NOTIFY maximumHeightChanged)
%%

$prototype=int maximumHeight() const
$method=|int|maximumHeight|

$prototype=void setMaximumHeight(int h) [slot]
$method=|void|setMaximumHeight|int

%%
%% Q_PROPERTY(bool visible READ isVisible WRITE setVisible NOTIFY visibleChanged)
%%

$prototype=bool isVisible() const
$method=|bool|isVisible|

$prototype=void setVisible(bool visible) [slot]
$method=|void|setVisible|bool

%%
%% Q_PROPERTY(bool active READ isActive NOTIFY activeChanged REVISION 1)
%%

$prototype=bool isActive() const
$method=5,1,0|bool|isActive|

%%
%% Q_PROPERTY(Visibility visibility READ visibility WRITE setVisibility NOTIFY visibilityChanged REVISION 1)
%%

$prototype=Visibility visibility() const
$method=5,1,0|QWindow::Visibility|visibility|

$prototype=void setVisibility(Visibility v)
$method=5,1,0|void|setVisibility|QWindow::Visibility

%%
%% Q_PROPERTY(Qt::ScreenOrientation contentOrientation READ contentOrientation WRITE reportContentOrientationChange NOTIFY contentOrientationChanged)
%%

$prototype=Qt::ScreenOrientation contentOrientation() const
$method=|Qt::ScreenOrientation|contentOrientation|

$prototype=void reportContentOrientationChange(Qt::ScreenOrientation orientation)
$method=|void|reportContentOrientationChange|Qt::ScreenOrientation

%%
%% Q_PROPERTY(qreal opacity READ opacity WRITE setOpacity NOTIFY opacityChanged REVISION 1)
%%

$prototype=qreal opacity() const
$method=5,1,0|qreal|opacity|

$prototype=void setOpacity(qreal level)
$method=5,1,0|void|setOpacity|qreal

%%
%%
%%

$prototype=QSize baseSize() const
$method=|QSize|baseSize|

$prototype=void create()
$method=|void|create|

$prototype=QCursor cursor() const
$method=|QCursor|cursor||#ifndef QT_NO_CURSOR

$prototype=void destroy()
$method=|void|destroy|

$prototype=virtual QObject * focusObject() const
$virtualMethod=|QObject *|focusObject|

$prototype=QRect frameGeometry() const
$method=|QRect|frameGeometry|

$prototype=QMargins frameMargins() const
$method=|QMargins|frameMargins|

$prototype=QRect geometry() const
$method=|QRect|geometry|

$prototype=bool isAncestorOf(const QWindow * child, AncestorMode mode = IncludeTransients) const
$method=|bool|isAncestorOf|const QWindow *,QWindow::AncestorMode=QWindow::IncludeTransients

$prototype=bool isExposed() const
$method=|bool|isExposed|

$prototype=bool isModal() const
$method=|bool|isModal|

$prototype=bool isTopLevel() const
$method=|bool|isTopLevel|

$prototype=QPoint mapFromGlobal(const QPoint & pos) const
$method=|QPoint|mapFromGlobal|const QPoint &

$prototype=QPoint mapToGlobal(const QPoint & pos) const
$method=|QPoint|mapToGlobal|const QPoint &

$prototype=QSize maximumSize() const
$method=|QSize|maximumSize|

$prototype=QSize minimumSize() const
$method=|QSize|minimumSize|

$prototype=QWindow *parent(AncestorMode mode) const
$internalMethod=5,9,0|QWindow *|parent,parent1|QWindow::AncestorMode

$prototype=QWindow * parent() const
$internalMethod=|QWindow *|parent,parent2|

//[1]QWindow *parent(AncestorMode mode) const
//[2]QWindow * parent() const

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
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=resize

$prototype=QSurfaceFormat requestedFormat() const
$method=|QSurfaceFormat|requestedFormat|

$prototype=void resize(const QSize & newSize)
$internalMethod=|void|resize,resize1|const QSize &

$prototype=void resize(int w, int h)
$internalMethod=|void|resize,resize2|int,int

//[1]void resize(const QSize & newSize)
//[2]void resize(int w, int h)

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
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=resize

$prototype=QScreen * screen() const
$method=|QScreen *|screen|

$prototype=void setBaseSize(const QSize & size)
$method=|void|setBaseSize|const QSize &

$prototype=void setCursor(const QCursor &)
$method=|void|setCursor|const QCursor &|#ifndef QT_NO_CURSOR

$prototype=void setFormat(const QSurfaceFormat & format)
$method=|void|setFormat|const QSurfaceFormat &

$prototype=void setGeometry(int posx, int posy, int w, int h) [slot]
$internalMethod=|void|setGeometry,setGeometry1|int,int,int,int

$prototype=void setGeometry(const QRect & rect) [slot]
$internalMethod=|void|setGeometry,setGeometry2|const QRect &

//[1]void setGeometry(int posx, int posy, int w, int h)
//[2]void setGeometry(const QRect & rect)

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
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setGeometry

$prototype=bool setKeyboardGrabEnabled(bool grab)
$method=|bool|setKeyboardGrabEnabled|bool

$prototype=void setMaximumSize(const QSize & size)
$method=|void|setMaximumSize|const QSize &

$prototype=void setMinimumSize(const QSize & size)
$method=|void|setMinimumSize|const QSize &

$prototype=bool setMouseGrabEnabled(bool grab)
$method=|bool|setMouseGrabEnabled|bool

$prototype=void setParent(QWindow * parent)
$method=|void|setParent|QWindow *

$prototype=void setScreen(QScreen * newScreen)
$method=|void|setScreen|QScreen *

$prototype=void setSizeIncrement(const QSize & size)
$method=|void|setSizeIncrement|const QSize &

$prototype=void setSurfaceType(SurfaceType surfaceType)
$method=|void|setSurfaceType|QSurface::SurfaceType

$prototype=void setTransientParent(QWindow * parent)
$method=|void|setTransientParent|QWindow *

$prototype=QSize sizeIncrement() const
$method=|QSize|sizeIncrement|

$prototype=QWindow * transientParent() const
$method=|QWindow *|transientParent|

$prototype=void unsetCursor()
$method=|void|unsetCursor||#ifndef QT_NO_CURSOR

$prototype=Qt::WindowState windowState() const
$method=|Qt::WindowState|windowState|

$prototype=virtual QSurfaceFormat format() const override
%% TODO: is virtual ?
$virtualMethod=|QSurfaceFormat|format|

$prototype=virtual QSize size() const override
%% TODO: is virtual ?
$virtualMethod=|QSize|size|

$prototype=virtual SurfaceType surfaceType() const override
%% TODO: is virtual ?
$virtualMethod=|QSurface::SurfaceType|surfaceType|

$prototype=bool close() [slot]
$method=|bool|close|

$prototype=void hide() [slot]
$method=|void|hide|

$prototype=void lower() [slot]
$method=|void|lower|

$prototype=void raise() [slot]
$method=|void|raise|

$prototype=void show() [slot]
$method=|void|show|

$prototype=void showFullScreen() [slot]
$method=|void|showFullScreen|

$prototype=void showMaximized() [slot]
$method=|void|showMaximized|

$prototype=void showMinimized() [slot]
$method=|void|showMinimized|

$prototype=void showNormal() [slot]
$method=|void|showNormal|

$prototype=QPoint position() const
$method=|QPoint|position|

$prototype=void setPosition(const QPoint & pt)
$internalMethod=|void|setPosition,setPosition1|const QPoint &

$prototype=void setPosition(int posx, int posy)
$internalMethod=|void|setPosition,setPosition2|int,int

//[1]void setPosition(const QPoint & pt)
//[2]void setPosition(int posx, int posy)

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
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setPosition

$prototype=Q_REVISION(3) void requestUpdate() [slot]
$slotMethod=5,5,0|void|requestUpdate|

$prototype=WId winId() const
$method=|WId|winId|

$prototype=void setFlag(Qt::WindowType, bool on = true)
$method=5,9,0|void|setFlag|Qt::WindowType,bool=true

$prototype=Qt::WindowType type() const
$method=|Qt::WindowType|type|

$prototype=void setMask(const QRegion &region)
$method=|void|setMask|const QRegion &

$prototype=QRegion mask() const
$method=|QRegion|mask|

$prototype=qreal devicePixelRatio() const
$method=|qreal|devicePixelRatio|

$prototype=Qt::WindowStates windowStates() const
$method=5,10,0|Qt::WindowStates|windowStates|

$prototype=void setWindowState(Qt::WindowState state)
$method=|void|setWindowState|Qt::WindowState

$prototype=void setWindowStates(Qt::WindowStates states)
$method=5,10,0|void|setWindowStates|Qt::WindowStates

$prototype=QPoint framePosition() const
$method=|QPoint|framePosition|

$prototype=void setFramePosition(const QPoint &point)
$method=|void|setFramePosition|const QPoint &

$prototype=void setFilePath(const QString &filePath)
$method=|void|setFilePath|const QString &

$prototype=QString filePath() const
$method=|QString|filePath|

$prototype=void setIcon(const QIcon &icon)
$method=|void|setIcon|const QIcon &

$prototype=QIcon icon() const
$method=|QIcon|icon|

$prototype=QPlatformWindow *handle() const
%% TODO: $method=|QPlatformWindow *|handle|

$prototype=virtual QAccessibleInterface *accessibleRoot() const
$virtualMethod=|QAccessibleInterface *|accessibleRoot|

$prototype=static QWindow *fromWinId(WId id)
$staticMethod=|QWindow *|fromWinId|WId

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
