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
$addRequest=QAccessibleEvent
$addRequest=QAccessibleStateChangeEvent
$addRequest=QAccessibleTableModelChangeEvent
$addRequest=QAccessibleTextCursorEvent
$addRequest=QAccessibleTextInsertEvent
$addRequest=QAccessibleTextRemoveEvent
$addRequest=QAccessibleTextSelectionEvent
$addRequest=QAccessibleTextUpdateEvent
$addRequest=QAccessibleValueChangeEvent
$addRequest=QActionEvent
$addRequest=QApplicationStateChangeEvent
$addRequest=QCloseEvent
$addRequest=QContextMenuEvent
$addRequest=QDragEnterEvent
$addRequest=QDragLeaveEvent
$addRequest=QDragMoveEvent
$addRequest=QDropEvent
$addRequest=QEnterEvent
$addRequest=QExposeEvent
$addRequest=QFileOpenEvent
$addRequest=QFocusEvent
$addRequest=QHelpEvent
$addRequest=QHideEvent
$addRequest=QHoverEvent
$addRequest=QIconDragEvent
$addRequest=QInputEvent
$addRequest=QInputMethodEvent
$addRequest=QInputMethodQueryEvent
$addRequest=QKeyEvent
$addRequest=QMouseEvent
$addRequest=QMoveEvent
$addRequest=QNativeGestureEvent
$addRequest=QPaintEvent
$addRequest=QResizeEvent
$addRequest=QScreenOrientationChangeEvent
$addRequest=QScrollEvent
$addRequest=QScrollPrepareEvent
$addRequest=QShortcutEvent
$addRequest=QShowEvent
$addRequest=QStatusTipEvent
$addRequest=QTabletEvent
$addRequest=QToolBarChangeEvent
$addRequest=QTouchEvent
$addRequest=QWhatsThisClickedEvent
$addRequest=QWheelEvent
$addRequest=QWindowStateChangeEvent

$beginClassFrom=QCoreApplication

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QClipboard>
#include <QtGui/QFont>
#include <QtGui/QPalette>
#include <QtGui/QScreen>
#include <QtGui/QStyleHints>
#include <QtGui/QWindow>

$prototype=QGuiApplication(int & argc, char ** argv)
%% TODO: code generator
HB_FUNC_STATIC( QGUIAPPLICATION_NEW )
{
  int argc;
  char ** argv;
  argc = hb_cmdargARGC();
  argv = hb_cmdargARGV();
  auto obj = new QGuiApplication( argc, argv );
  Qt5xHb::returnNewObject( obj, false );
}
$addMethod=new

$deleteMethod

$prototype=virtual bool notify(QObject * object, QEvent * event)
$virtualMethod=|bool|notify|QObject *,QEvent *

$prototypeV2=static QWindowList allWindows()

$prototypeV2=static QString applicationDisplayName()

$prototype=static void changeOverrideCursor(const QCursor & cursor)
$staticMethod=|void|changeOverrideCursor|const QCursor &

$prototypeV2=static QClipboard * clipboard()

$prototypeV2=static bool desktopSettingsAware()

$prototypeV2=static int exec()

$prototypeV2=static QObject * focusObject()

$prototypeV2=static QWindow * focusWindow()

$prototypeV2=static QFont font()

$prototypeV2=static QInputMethod * inputMethod()

$prototypeV2=static bool isLeftToRight()

$prototypeV2=static bool isRightToLeft()

$prototypeV2=static Qt::KeyboardModifiers keyboardModifiers()

$prototypeV2=static Qt::LayoutDirection layoutDirection()

$prototypeV2=static QWindow * modalWindow()

$prototypeV2=static Qt::MouseButtons mouseButtons()

$prototypeV2=static QCursor * overrideCursor()

$prototypeV2=static QPalette palette()

$prototypeV2=static QString platformName()

$prototype=static QPlatformNativeInterface * platformNativeInterface()
%% TODO: implementar ?
%% $staticMethod=|QPlatformNativeInterface *|platformNativeInterface|

$prototypeV2=static QScreen * primaryScreen()

$prototypeV2=static Qt::KeyboardModifiers queryKeyboardModifiers()

$prototypeV2=static bool quitOnLastWindowClosed()

$prototypeV2=static void restoreOverrideCursor()

$prototype=static QList<QScreen *> screens()
$staticMethod=|QList<QScreen *>|screens|

$prototype=static void setApplicationDisplayName(const QString & name)
$staticMethod=|void|setApplicationDisplayName|const QString &

$prototype=static void setDesktopSettingsAware(bool on)
$staticMethod=|void|setDesktopSettingsAware|bool

$prototype=static void setFont(const QFont & font)
$staticMethod=|void|setFont|const QFont &

$prototype=static void setLayoutDirection(Qt::LayoutDirection direction)
$staticMethod=|void|setLayoutDirection|Qt::LayoutDirection

$prototype=static void setOverrideCursor(const QCursor & cursor)
$staticMethod=|void|setOverrideCursor|const QCursor &

$prototype=static void setPalette(const QPalette & pal)
$staticMethod=|void|setPalette|const QPalette &

$prototype=static void setQuitOnLastWindowClosed(bool quit)
$staticMethod=|void|setQuitOnLastWindowClosed|bool

$prototypeV2=static QStyleHints * styleHints()

$prototype=static QWindow * topLevelAt(const QPoint & pos)
$staticMethod=|QWindow *|topLevelAt|const QPoint &

$prototypeV2=static QWindowList topLevelWindows()

%%
%% SIGNALS
%%

$prototype=void focusObjectChanged( QObject * focusObject )
$signalMethod=|void|focusObjectChanged|QObject *

$prototype=void focusWindowChanged( QWindow * focusWindow )
$signalMethod=|void|focusWindowChanged|QWindow *

$prototype=void fontDatabaseChanged()
$signalMethod=|void|fontDatabaseChanged|

$prototype=void lastWindowClosed()
$signalMethod=|void|lastWindowClosed|

$prototype=void screenAdded( QScreen * screen )
$signalMethod=|void|screenAdded|QScreen *

#pragma ENDDUMP
