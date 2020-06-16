%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

%%   METHOD onWindowIconTextChanged // TODO: verificar se ainda é valido no Qt 5

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QLocale>
#include <QtCore/QVariant>
#include <QtGui/QIcon>
#include <QtGui/QWindow>
#include <QtWidgets/QGraphicsEffect>
#include <QtWidgets/QGraphicsProxyWidget>
#include <QtWidgets/QLayout>
#include <QtWidgets/QStyle>

$prototype=explicit QWidget ( QWidget * parent = nullptr, Qt::WindowFlags f = 0 )
$constructor=|new|QWidget *=nullptr,Qt::WindowFlags=0

$deleteMethod

$prototypeV2=bool acceptDrops() const

$prototype=void setAcceptDrops ( bool on )
$method=|void|setAcceptDrops|bool

$prototype=QString accessibleDescription () const
$method=|QString|accessibleDescription||#ifndef QT_NO_ACCESSIBILITY

$prototype=void setAccessibleDescription ( const QString & description )
$method=|void|setAccessibleDescription|const QString &|#ifndef QT_NO_ACCESSIBILITY

$prototype=QString accessibleName () const
$method=|QString|accessibleName||#ifndef QT_NO_ACCESSIBILITY

$prototype=void setAccessibleName ( const QString & name )
$method=|void|setAccessibleName|const QString &|#ifndef QT_NO_ACCESSIBILITY

$prototype=QList<QAction *> actions () const
$method=|QList<QAction *>|actions||#ifndef QT_NO_ACTION

$prototypeV2=void activateWindow()

$prototype=void addAction ( QAction * action )
$method=|void|addAction|QAction *|#ifndef QT_NO_ACTION

$prototype=void addActions ( QList<QAction *> actions )
$method=|void|addActions|QList<QAction *>|#ifndef QT_NO_ACTION

$prototypeV2=void adjustSize()

$prototypeV2=bool autoFillBackground() const

$prototype=void setAutoFillBackground ( bool enabled )
$method=|void|setAutoFillBackground|bool

$prototypeV2=QPalette::ColorRole backgroundRole() const

$prototype=void setBackgroundRole ( QPalette::ColorRole role )
$method=|void|setBackgroundRole|QPalette::ColorRole

$prototypeV2=QSize baseSize() const

$prototype=void setBaseSize ( const QSize & )
$internalMethod=|void|setBaseSize,setBaseSize1|const QSize &

$prototype=void setBaseSize ( int basew, int baseh )
$internalMethod=|void|setBaseSize,setBaseSize2|int,int

/*
[1]void setBaseSize ( const QSize & )
[2]void setBaseSize ( int basew, int baseh )
*/

HB_FUNC_STATIC( QWIDGET_SETBASESIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QWidget_setBaseSize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_setBaseSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setBaseSize

$prototype=QWidget * childAt ( int x, int y ) const
$internalMethod=|QWidget *|childAt,childAt1|int,int

$prototype=QWidget * childAt ( const QPoint & p ) const
$internalMethod=|QWidget *|childAt,childAt2|const QPoint &

/*
[1]QWidget * childAt ( int x, int y ) const
[2]QWidget * childAt ( const QPoint & p ) const
*/

HB_FUNC_STATIC( QWIDGET_CHILDAT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_childAt1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QWidget_childAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=childAt

$prototypeV2=QRect childrenRect() const

$prototypeV2=QRegion childrenRegion() const

$prototypeV2=void clearFocus()

$prototypeV2=void clearMask()

$prototypeV2=QMargins contentsMargins() const

$prototypeV2=QRect contentsRect() const

$prototypeV2=Qt::ContextMenuPolicy contextMenuPolicy() const

$prototype=void setContextMenuPolicy ( Qt::ContextMenuPolicy policy )
$method=|void|setContextMenuPolicy|Qt::ContextMenuPolicy

$prototype=QCursor cursor () const
$method=|QCursor|cursor||#ifndef QT_NO_CURSOR

$prototype=void setCursor ( const QCursor & )
$method=|void|setCursor|const QCursor &|#ifndef QT_NO_CURSOR

$prototype=void unsetCursor ()
$method=|void|unsetCursor||#ifndef QT_NO_CURSOR

$prototypeV2=WId effectiveWinId() const

$prototypeV2=void ensurePolished() const

$prototypeV2=Qt::FocusPolicy focusPolicy() const

$prototype=void setFocusPolicy ( Qt::FocusPolicy policy )
$method=|void|setFocusPolicy|Qt::FocusPolicy

$prototypeV2=QWidget * focusProxy() const

$prototypeV2=QWidget * focusWidget() const

$prototype=const QFont & font () const
$method=|const QFont &|font|

$prototype=void setFont ( const QFont & )
$method=|void|setFont|const QFont &

$prototypeV2=QFontInfo fontInfo() const

$prototypeV2=QFontMetrics fontMetrics() const

$prototypeV2=QPalette::ColorRole foregroundRole() const

$prototype=void setForegroundRole ( QPalette::ColorRole role )
$method=|void|setForegroundRole|QPalette::ColorRole

$prototypeV2=QRect frameGeometry() const

$prototypeV2=QSize frameSize() const

$prototype=void getContentsMargins ( int * left, int * top, int * right, int * bottom ) const
$method=|void|getContentsMargins|int *,int *,int *,int *

$prototype=void grabGesture ( Qt::GestureType gesture, Qt::GestureFlags flags = Qt::GestureFlags() )
$method=|void|grabGesture|Qt::GestureType,Qt::GestureFlags=Qt::GestureFlags()

$prototypeV2=void grabKeyboard()

$prototype=void grabMouse ()
$internalMethod=|void|grabMouse,grabMouse1|

$prototype=void grabMouse ( const QCursor & cursor )
$internalMethod=|void|grabMouse,grabMouse2|const QCursor &|#ifndef QT_NO_CURSOR

/*
[1]void grabMouse ()
[2]void grabMouse ( const QCursor & cursor )
*/

HB_FUNC_STATIC( QWIDGET_GRABMOUSE )
{
  if( ISNUMPAR(0) )
  {
    QWidget_grabMouse1();
  }
  else if( ISNUMPAR(1) && ISQCURSOR(1) )
  {
    QWidget_grabMouse2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=grabMouse

$prototype=int grabShortcut ( const QKeySequence & key, Qt::ShortcutContext context = Qt::WindowShortcut )
$method=|int|grabShortcut|const QKeySequence &,Qt::ShortcutContext=Qt::WindowShortcut|#ifndef QT_NO_SHORTCUT

$prototype=QGraphicsEffect * graphicsEffect () const
$method=|QGraphicsEffect *|graphicsEffect||#ifndef QT_NO_GRAPHICSEFFECT

$prototype=void setGraphicsEffect ( QGraphicsEffect * effect )
$method=|void|setGraphicsEffect|QGraphicsEffect *|#ifndef QT_NO_GRAPHICSEFFECT

$prototype=QGraphicsProxyWidget * graphicsProxyWidget () const
$method=|QGraphicsProxyWidget *|graphicsProxyWidget||#ifndef QT_NO_GRAPHICSVIEW

$prototype=bool hasEditFocus () const
$method=|bool|hasEditFocus||#ifdef QT_KEYPAD_NAVIGATION

$prototypeV2=bool hasFocus() const

$prototypeV2=bool hasMouseTracking() const

$prototype=void setMouseTracking ( bool enable )
$method=|void|setMouseTracking|bool

$prototypeV2=int height() const

$prototype=virtual int heightForWidth ( int w ) const
$virtualMethod=|int|heightForWidth|int

$prototypeV2=Qt::InputMethodHints inputMethodHints() const

$prototype=void setInputMethodHints ( Qt::InputMethodHints hints )
$method=|void|setInputMethodHints|Qt::InputMethodHints

$prototype=virtual QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
$virtualMethod=|QVariant|inputMethodQuery|Qt::InputMethodQuery

$prototype=void insertAction ( QAction * before, QAction * action )
$method=|void|insertAction|QAction *,QAction *|#ifndef QT_NO_ACTION

$prototype=void insertActions ( QAction * before, QList<QAction *> actions )
$method=|void|insertActions|QAction *,QList<QAction *>|#ifndef QT_NO_ACTION

$prototypeV2=bool isActiveWindow() const

$prototype=bool isAncestorOf ( const QWidget * child ) const
$method=|bool|isAncestorOf|const QWidget *

$prototype=bool isEnabledTo ( const QWidget * ancestor ) const
$method=|bool|isEnabledTo|const QWidget *

$prototypeV2=bool isFullScreen() const

$prototypeV2=bool isHidden() const

$prototypeV2=bool isMaximized() const

$prototypeV2=bool isMinimized() const

$prototypeV2=bool isModal() const

$prototypeV2=bool isVisible() const

$prototype=virtual void setVisible ( bool visible )
$virtualMethod=|void|setVisible|bool

$prototype=bool isVisibleTo ( const QWidget * ancestor ) const
$method=|bool|isVisibleTo|const QWidget *

$prototypeV2=bool isWindow() const

$prototypeV2=bool isWindowModified() const

$prototype=void setWindowModified ( bool )
$method=|void|setWindowModified|bool

$prototypeV2=QLayout * layout() const

$prototypeV2=Qt::LayoutDirection layoutDirection() const

$prototype=void setLayoutDirection ( Qt::LayoutDirection direction )
$method=|void|setLayoutDirection|Qt::LayoutDirection

$prototypeV2=void unsetLayoutDirection()

$prototypeV2=QLocale locale() const

$prototype=void setLocale ( const QLocale & locale )
$method=|void|setLocale|const QLocale &

$prototypeV2=void unsetLocale()

$prototype=QPoint mapFrom ( QWidget * parent, const QPoint & pos ) const
$method=|QPoint|mapFrom|QWidget *,const QPoint &

$prototype=QPoint mapFromGlobal ( const QPoint & pos ) const
$method=|QPoint|mapFromGlobal|const QPoint &

$prototype=QPoint mapFromParent ( const QPoint & pos ) const
$method=|QPoint|mapFromParent|const QPoint &

$prototype=QPoint mapTo ( QWidget * parent, const QPoint & pos ) const
$method=|QPoint|mapTo|QWidget *,const QPoint &

$prototype=QPoint mapToGlobal ( const QPoint & pos ) const
$method=|QPoint|mapToGlobal|const QPoint &

$prototype=QPoint mapToParent ( const QPoint & pos ) const
$method=|QPoint|mapToParent|const QPoint &

$prototypeV2=QRegion mask() const

$prototype=void setMask ( const QBitmap & bitmap )
$internalMethod=|void|setMask,setMask1|const QBitmap &

$prototype=void setMask ( const QRegion & region )
$internalMethod=|void|setMask,setMask2|const QRegion &

/*
[1]void setMask ( const QBitmap & bitmap )
[2]void setMask ( const QRegion & region )
*/

HB_FUNC_STATIC( QWIDGET_SETMASK )
{
  if( ISNUMPAR(1) && ISQBITMAP(1) )
  {
    QWidget_setMask1();
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QWidget_setMask2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setMask

$prototypeV2=int maximumHeight() const

$prototype=void setMaximumHeight ( int maxh )
$method=|void|setMaximumHeight|int

$prototypeV2=int maximumWidth() const

$prototype=void setMaximumWidth ( int maxw )
$method=|void|setMaximumWidth|int

$prototypeV2=int minimumHeight() const

$prototype=void setMinimumHeight ( int minh )
$method=|void|setMinimumHeight|int

$prototypeV2=virtual QSize minimumSizeHint() const

$prototypeV2=int minimumWidth() const

$prototype=void setMinimumWidth ( int minw )
$method=|void|setMinimumWidth|int

$prototypeV2=QPoint pos() const

$prototype=void move ( const QPoint & )
$internalMethod=|void|move,move1|const QPoint &

$prototype=void move ( int x, int y )
$internalMethod=|void|move,move2|int,int

/*
[1]void move ( const QPoint & )
[2]void move ( int x, int y )
*/

HB_FUNC_STATIC( QWIDGET_MOVE )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QWidget_move1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_move2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=move

$prototypeV2=QWidget * nativeParentWidget() const

$prototypeV2=QWidget * nextInFocusChain() const

$prototypeV2=QRect normalGeometry() const

$prototype=void overrideWindowFlags ( Qt::WindowFlags flags )
$method=|void|overrideWindowFlags|Qt::WindowFlags

$prototype=const QPalette & palette () const
$method=|const QPalette &|palette|

$prototype=void setPalette ( const QPalette & )
$method=|void|setPalette|const QPalette &

$prototypeV2=QWidget * parentWidget() const

$prototypeV2=QWidget * previousInFocusChain() const

$prototypeV2=QRect rect() const

$prototypeV2=void releaseKeyboard()

$prototypeV2=void releaseMouse()

$prototype=void releaseShortcut ( int id )
$method=|void|releaseShortcut|int|#ifndef QT_NO_SHORTCUT

$prototype=void removeAction ( QAction * action )
$method=|void|removeAction|QAction *|#ifndef QT_NO_ACTION

$prototype=void render (QPaintDevice *target, const QPoint &targetOffset = QPoint(),const QRegion &sourceRegion = QRegion(),RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))
$internalMethod=|void|render,render1|QPaintDevice *,const QPoint &=QPoint(),const QRegion &=QRegion(),QWidget::RenderFlags=QWidget::RenderFlags(QWidget::DrawWindowBackground OR QWidget::DrawChildren)

$prototype=void render (QPainter *painter, const QPoint &targetOffset = QPoint(),const QRegion &sourceRegion = QRegion(),RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))
$internalMethod=|void|render,render2|QPainter *,const QPoint &=QPoint(),const QRegion &=QRegion(),QWidget::RenderFlags=QWidget::RenderFlags(QWidget::DrawWindowBackground OR QWidget::DrawChildren)

/*
[1]void render (QPaintDevice *target, const QPoint &targetOffset = QPoint(),const QRegion &sourceRegion = QRegion(),RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))
[2]void render (QPainter *painter, const QPoint &targetOffset = QPoint(),const QRegion &sourceRegion = QRegion(),RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))
*/

%% TODO: identificar QPaintDevice e QPainter
HB_FUNC_STATIC( QWIDGET_RENDER )
{
  if( ISBETWEEN(1,4) && ISQPAINTER(1) && (ISQPOINT(2)||ISNIL(2)) && (ISQREGION(3)||ISNIL(3)) && ISOPTNUM(4) )
  {
    QWidget_render2();
  }
  else if( ISBETWEEN(1,4) && ISOBJECT(1) && (ISQPOINT(2)||ISNIL(2)) && (ISQREGION(3)||ISNIL(3)) && ISOPTNUM(4) )
  {
    QWidget_render1();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=render

$prototype=void repaint ( int x, int y, int w, int h )
$internalMethod=|void|repaint,repaint1|int,int,int,int

$prototype=void repaint ( const QRect & rect )
$internalMethod=|void|repaint,repaint2|const QRect &

$prototype=void repaint ( const QRegion & rgn )
$internalMethod=|void|repaint,repaint3|const QRegion &

$prototype=void repaint ()
$internalMethod=|void|repaint,repaint4|

/*
[1]void repaint ( int x, int y, int w, int h )
[2]void repaint ( const QRect & rect )
[3]void repaint ( const QRegion & rgn )
[4]void repaint ()
*/

HB_FUNC_STATIC( QWIDGET_REPAINT )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QWidget_repaint1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QWidget_repaint2();
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QWidget_repaint3();
  }
  else if( ISNUMPAR(0) )
  {
    QWidget_repaint4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=repaint

$prototype=void resize ( const QSize & )
$internalMethod=|void|resize,resize1|const QSize &

$prototype=void resize ( int w, int h )
$internalMethod=|void|resize,resize2|int,int

/*
[1]void resize ( const QSize & )
[2]void resize ( int w, int h )
*/

HB_FUNC_STATIC( QWIDGET_RESIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QWidget_resize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_resize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=resize

$prototype=bool restoreGeometry ( const QByteArray & geometry )
$method=|bool|restoreGeometry|const QByteArray &

$prototypeV2=QByteArray saveGeometry() const

$prototype=void scroll ( int dx, int dy )
$internalMethod=|void|scroll,scroll1|int,int

$prototype=void scroll ( int dx, int dy, const QRect & r )
$internalMethod=|void|scroll,scroll2|int,int,const QRect &

/*
[1]void scroll ( int dx, int dy )
[2]void scroll ( int dx, int dy, const QRect & r )
*/

HB_FUNC_STATIC( QWIDGET_SCROLL )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_scroll1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQRECT(3) )
  {
    QWidget_scroll2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=scroll

$prototype=void setAttribute ( Qt::WidgetAttribute attribute, bool on = true )
$method=|void|setAttribute|Qt::WidgetAttribute,bool=true

$prototype=void setContentsMargins ( int left, int top, int right, int bottom )
$internalMethod=|void|setContentsMargins,setContentsMargins1|int,int,int,int

$prototype=void setContentsMargins ( const QMargins & margins )
$internalMethod=|void|setContentsMargins,setContentsMargins2|const QMargins &

/*
[1]void setContentsMargins ( int left, int top, int right, int bottom )
[2]void setContentsMargins ( const QMargins & margins )
*/

HB_FUNC_STATIC( QWIDGET_SETCONTENTSMARGINS )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QWidget_setContentsMargins1();
  }
  else if( ISNUMPAR(1) && ISQMARGINS(1) )
  {
    QWidget_setContentsMargins2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setContentsMargins

$prototype=void setEditFocus ( bool enable )
$method=|void|setEditFocus|bool|#ifdef QT_KEYPAD_NAVIGATION

$prototype=void setFixedHeight ( int h )
$method=|void|setFixedHeight|int

$prototype=void setFixedSize ( const QSize & s )
$internalMethod=|void|setFixedSize,setFixedSize1|const QSize &

$prototype=void setFixedSize ( int w, int h )
$internalMethod=|void|setFixedSize,setFixedSize2|int,int

/*
[1]void setFixedSize ( const QSize & s )
[2]void setFixedSize ( int w, int h )
*/

HB_FUNC_STATIC( QWIDGET_SETFIXEDSIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QWidget_setFixedSize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_setFixedSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setFixedSize

$prototype=void setFixedWidth ( int w )
$method=|void|setFixedWidth|int

$prototype=void setFocus ( Qt::FocusReason reason )
$internalMethod=|void|setFocus,setFocus1|Qt::FocusReason

$prototype=void setFocus ()
$internalMethod=|void|setFocus,setFocus2|

/*
[1]void setFocus ( Qt::FocusReason reason )
[2]void setFocus ()
*/

HB_FUNC_STATIC( QWIDGET_SETFOCUS )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QWidget_setFocus1();
  }
  else if( ISNUMPAR(0) )
  {
    QWidget_setFocus2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setFocus

$prototype=void setFocusProxy ( QWidget * w )
$method=|void|setFocusProxy|QWidget *

$prototype=const QRect & geometry () const
$method=|const QRect &|geometry|

$prototype=void setGeometry ( const QRect & )
$internalMethod=|void|setGeometry,setGeometry1|const QRect &

$prototype=void setGeometry ( int x, int y, int w, int h )
$internalMethod=|void|setGeometry,setGeometry2|int,int,int,int

/*
[1]void setGeometry ( const QRect & )
[2]void setGeometry ( int x, int y, int w, int h )
*/

HB_FUNC_STATIC( QWIDGET_SETGEOMETRY )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QWidget_setGeometry1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QWidget_setGeometry2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setGeometry

$prototype=void setLayout ( QLayout * layout )
$method=|void|setLayout|QLayout *

$prototypeV2=QSize maximumSize() const

$prototype=void setMaximumSize ( const QSize & )
$internalMethod=|void|setMaximumSize,setMaximumSize1|const QSize &

$prototype=void setMaximumSize ( int maxw, int maxh )
$internalMethod=|void|setMaximumSize,setMaximumSize2|int,int

/*
[1]void setMaximumSize ( const QSize & )
[2]void setMaximumSize ( int maxw, int maxh )
*/

HB_FUNC_STATIC( QWIDGET_SETMAXIMUMSIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QWidget_setMaximumSize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_setMaximumSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setMaximumSize

$prototypeV2=QSize minimumSize() const

$prototype=void setMinimumSize ( const QSize & )
$internalMethod=|void|setMinimumSize,setMinimumSize1|const QSize &

$prototype=void setMinimumSize ( int minw, int minh )
$internalMethod=|void|setMinimumSize,setMinimumSize2|int,int

/*
[1]void setMinimumSize ( const QSize & )
[2]void setMinimumSize ( int minw, int minh )
*/

HB_FUNC_STATIC( QWIDGET_SETMINIMUMSIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QWidget_setMinimumSize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_setMinimumSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setMinimumSize

$prototype=void setParent ( QWidget * parent )
$internalMethod=|void|setParent,setParent1|QWidget *

$prototype=void setParent ( QWidget * parent, Qt::WindowFlags f )
$internalMethod=|void|setParent,setParent2|QWidget *,Qt::WindowFlags

/*
[1]void setParent ( QWidget * parent )
[2]void setParent ( QWidget * parent, Qt::WindowFlags f )
*/

HB_FUNC_STATIC( QWIDGET_SETPARENT )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QWidget_setParent1();
  }
  else if( ISNUMPAR(2) && ISQWIDGET(1) && ISNUM(2) )
  {
    QWidget_setParent2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setParent

$prototype=void setShortcutAutoRepeat ( int id, bool enable = true )
$method=|void|setShortcutAutoRepeat|int,bool=true|#ifndef QT_NO_SHORTCUT

$prototype=void setShortcutEnabled ( int id, bool enable = true )
$method=|void|setShortcutEnabled|int,bool=true|#ifndef QT_NO_SHORTCUT

$prototypeV2=QSize sizeIncrement() const

$prototype=void setSizeIncrement ( const QSize & )
$internalMethod=|void|setSizeIncrement,setSizeIncrement1|const QSize &

$prototype=void setSizeIncrement ( int w, int h )
$internalMethod=|void|setSizeIncrement,setSizeIncrement2|int,int

/*
[1]void setSizeIncrement ( const QSize & )
[2]void setSizeIncrement ( int w, int h )
*/

HB_FUNC_STATIC( QWIDGET_SETSIZEINCREMENT )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QWidget_setSizeIncrement1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_setSizeIncrement2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setSizeIncrement

$prototypeV2=QSizePolicy sizePolicy() const

$prototype=void setSizePolicy ( QSizePolicy )
$internalMethod=|void|setSizePolicy,setSizePolicy1|QSizePolicy

$prototype=void setSizePolicy ( QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical )
$internalMethod=|void|setSizePolicy,setSizePolicy2|QSizePolicy::Policy,QSizePolicy::Policy

/*
[1]void setSizePolicy ( QSizePolicy & )
[2]void setSizePolicy ( QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical )
*/

HB_FUNC_STATIC( QWIDGET_SETSIZEPOLICY )
{
  if( ISNUMPAR(1) && ISQSIZEPOLICY(1) )
  {
    QWidget_setSizePolicy1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_setSizePolicy2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setSizePolicy

$prototype=int toolTipDuration() const
$method=5,2,0|int|toolTipDuration||#ifndef QT_NO_TOOLTIP

$prototype=void setToolTipDuration(int msec)
$method=5,2,0|void|setToolTipDuration|int|#ifndef QT_NO_TOOLTIP

$prototypeV2=Qt::WindowModality windowModality() const

$prototype=void setWindowModality ( Qt::WindowModality windowModality )
$method=|void|setWindowModality|Qt::WindowModality

$prototype=void setWindowRole ( const QString & role )
$method=|void|setWindowRole|const QString &

$prototype=void setWindowState ( Qt::WindowStates windowState )
$method=|void|setWindowState|Qt::WindowStates

$prototypeV2=QSize size() const

$prototypeV2=virtual QSize sizeHint() const

$prototype=void stackUnder ( QWidget * w )
$method=|void|stackUnder|QWidget *

$prototype=QString statusTip () const
$method=|QString|statusTip||#ifndef QT_NO_STATUSTIP

$prototype=void setStatusTip ( const QString & )
$method=|void|setStatusTip|const QString &|#ifndef QT_NO_STATUSTIP

$prototypeV2=QStyle * style() const

$prototype=void setStyle ( QStyle * style )
$method=|void|setStyle|QStyle *

$prototype=QString styleSheet () const
$method=|QString|styleSheet||#ifndef QT_NO_STYLE_STYLESHEET

$prototype=void setStyleSheet ( const QString & styleSheet )
$method=|void|setStyleSheet|const QString &|#ifndef QT_NO_STYLE_STYLESHEET

$prototype=bool testAttribute ( Qt::WidgetAttribute attribute ) const
$method=|bool|testAttribute|Qt::WidgetAttribute

$prototype=QString toolTip () const
$method=|QString|toolTip||#ifndef QT_NO_TOOLTIP

$prototype=void setToolTip ( const QString & )
$method=|void|setToolTip|const QString &|#ifndef QT_NO_TOOLTIP

$prototypeV2=bool underMouse() const

$prototype=void ungrabGesture ( Qt::GestureType gesture )
$method=|void|ungrabGesture|Qt::GestureType|#ifndef QT_NO_GESTURES

$prototype=void update ( int x, int y, int w, int h )
$internalMethod=|void|update,update1|int,int,int,int

$prototype=void update ( const QRect & rect )
$internalMethod=|void|update,update2|const QRect &

$prototype=void update ( const QRegion & rgn )
$internalMethod=|void|update,update3|const QRegion &

$prototype=void update ()
$internalMethod=|void|update,update4|

/*
[1]void update ( int x, int y, int w, int h )
[2]void update ( const QRect & rect )
[3]void update ( const QRegion & rgn )
[4]void update ()
*/

HB_FUNC_STATIC( QWIDGET_UPDATE )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QWidget_update1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QWidget_update2();
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QWidget_update3();
  }
  else if( ISNUMPAR(0) )
  {
    QWidget_update4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=update

$prototypeV2=void updateGeometry()

$prototypeV2=bool updatesEnabled() const

$prototype=void setUpdatesEnabled ( bool enable )
$method=|void|setUpdatesEnabled|bool

$prototypeV2=QRegion visibleRegion() const

$prototype=QString whatsThis () const
$method=|QString|whatsThis||#ifndef QT_NO_WHATSTHIS

$prototype=void setWhatsThis ( const QString & )
$method=|void|setWhatsThis|const QString &|#ifndef QT_NO_WHATSTHIS

$prototypeV2=int width() const

$prototypeV2=WId winId() const

$prototypeV2=WId internalWinId() const

$prototypeV2=QWidget * window() const

$prototypeV2=QString windowFilePath() const

$prototype=void setWindowFilePath ( const QString & filePath )
$method=|void|setWindowFilePath|const QString &

$prototypeV2=Qt::WindowFlags windowFlags() const

$prototype=void setWindowFlags ( Qt::WindowFlags type )
$method=|void|setWindowFlags|Qt::WindowFlags

$prototypeV2=QIcon windowIcon() const

$prototype=void setWindowIcon ( const QIcon & icon )
$method=|void|setWindowIcon|const QIcon &

$prototypeV2=QString windowIconText() const

$prototype=void setWindowIconText ( const QString & )
$method=|void|setWindowIconText|const QString &

$prototypeV2=qreal windowOpacity() const

$prototype=void setWindowOpacity ( qreal level )
$method=|void|setWindowOpacity|qreal

$prototypeV2=QString windowRole() const

$prototypeV2=Qt::WindowStates windowState() const

$prototypeV2=QString windowTitle() const

$prototype=void setWindowTitle ( const QString & )
$method=|void|setWindowTitle|const QString &

$prototypeV2=Qt::WindowType windowType() const

$prototypeV2=int x() const

$prototypeV2=int y() const

$prototypeV2=QPaintEngine * paintEngine() const

$prototypeV2=bool close()

$prototypeV2=void hide()

$prototypeV2=void lower()

$prototypeV2=void raise()

$prototype=void setDisabled ( bool disable )
$method=|void|setDisabled|bool

$prototypeV2=bool isEnabled() const

$prototype=void setEnabled ( bool )
$method=|void|setEnabled|bool

$prototype=void setHidden ( bool hidden )
$method=|void|setHidden|bool

$prototypeV2=void show()

$prototypeV2=void showFullScreen()

$prototypeV2=void showMaximized()

$prototypeV2=void showMinimized()

$prototypeV2=void showNormal()

$prototypeV2=int devType() const

$prototypeV2=bool isTopLevel() const

$prototypeV2=bool isEnabledToTLW() const

$prototypeV2=QWidget * topLevelWidget() const

$prototype=Q_INVOKABLE QPixmap grab (const QRect &rectangle = QRect(QPoint(0, 0), QSize(-1, -1)))
$method=|QPixmap|grab|const QRect &=QRect(QPoint(0 COMMA 0) COMMA QSize(-1 COMMA -1))

$prototypeV2=bool isRightToLeft() const

$prototypeV2=bool isLeftToRight() const

$prototype=void overrideWindowState (Qt::WindowStates state)
$method=|void|overrideWindowState|Qt::WindowStates

$prototypeV2=QBackingStore * backingStore () const

$prototypeV2=QWindow * windowHandle () const

$prototypeV2=virtual bool hasHeightForWidth() const

//=============================================================================
// QPaintDevice methods - BEGIN
//=============================================================================

$prototypeV2=int colorCount() const

$prototypeV2=int depth() const

$prototypeV2=int heightMM() const

$prototypeV2=int logicalDpiX() const

$prototypeV2=int logicalDpiY() const

$prototypeV2=bool paintingActive() const

$prototypeV2=int physicalDpiX() const

$prototypeV2=int physicalDpiY() const

$prototypeV2=int widthMM() const

//=============================================================================
// QPaintDevice methods - END
//=============================================================================

$prototype=static QWidget * find ( WId id )
$staticMethod=|QWidget *|find|WId

$prototypeV2=static QWidget * keyboardGrabber()

$prototypeV2=static QWidget * mouseGrabber()

$prototype=static void setTabOrder ( QWidget * first, QWidget * second )
$staticMethod=|void|setTabOrder|QWidget *,QWidget *

$prototype=static QWidget * createWindowContainer (QWindow *window, QWidget *parent=nullptr, Qt::WindowFlags flags=0)
$staticMethod=|QWidget *|createWindowContainer|QWindow *,QWidget *=nullptr,Qt::WindowFlags=0

%%
%% SIGNALS
%%

$prototype=void windowTitleChanged( const QString & title )
$signalMethod=5,2,0|void|windowTitleChanged|const QString &

$prototype=void windowIconChanged( const QIcon & icon )
$signalMethod=5,2,0|void|windowIconChanged|const QIcon &

$prototype=void windowIconTextChanged( const QString & iconText )
$signalMethod=|void|windowIconTextChanged|const QString &

$prototype=void customContextMenuRequested( const QPoint & pos )
$signalMethod=|void|customContextMenuRequested|const QPoint &

#pragma ENDDUMP
