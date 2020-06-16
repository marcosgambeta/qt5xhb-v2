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

$beginClassFrom=QGuiApplication

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QLocale>
#include <QtGui/QClipboard>
#include <QtGui/QFont>
#include <QtGui/QFontMetrics>
#include <QtGui/QIcon>
#include <QtGui/QPalette>
#include <QtGui/QSessionManager>
#include <QtWidgets/QDesktopWidget>
#include <QtWidgets/QStyle>

%% TODO: implementar construtores

/*
QApplication ( int & argc, char ** argv )
QApplication ( int & argc, char ** argv, bool GUIenabled )
QApplication ( int & argc, char ** argv, Type type )
QApplication ( Display * display, Qt::HANDLE visual = 0, Qt::HANDLE colormap = 0 )
QApplication ( Display * display, int & argc, char ** argv, Qt::HANDLE visual = 0, Qt::HANDLE colormap = 0 )
QApplication ( QApplication::QS60MainApplicationFactory factory, int & argc, char ** argv )
*/

$prototype=QApplication ( int & argc, char ** argv )
HB_FUNC_STATIC( QAPPLICATION_NEW )
{
  int argc;
  char ** argv;
  argc = hb_cmdargARGC();
  argv = hb_cmdargARGV();
  auto obj = new QApplication( argc, argv );
  Qt5xHb::returnNewObject( obj, false );
}
$addMethod=new

$deleteMethod

$prototypeV2=bool isSessionRestored() const

$prototypeV2=QString sessionId() const

$prototypeV2=QString sessionKey() const

$prototypeV2=QString styleSheet() const

$prototype=virtual bool notify ( QObject * receiver, QEvent * e )
$virtualMethod=|bool|notify|QObject *,QEvent *

$prototypeV2=void aboutQt()

$prototypeV2=void closeAllWindows()

$prototype=void setStyleSheet ( const QString & sheet )
$method=|void|setStyleSheet|const QString &

$prototypeV2=static QWidget * activeModalWidget()

$prototypeV2=static QWidget * activePopupWidget()

$prototypeV2=static QWidget * activeWindow()

$prototype=static void alert ( QWidget * widget, int msec = 0 )
$staticMethod=|void|alert|QWidget *,int=0

$prototypeV2=static QWidgetList allWidgets()

$prototypeV2=static void beep()

$prototype=static void changeOverrideCursor ( const QCursor & cursor )
$staticMethod=|void|changeOverrideCursor|const QCursor &

$prototypeV2=static QClipboard * clipboard()

$prototypeV2=static int colorSpec()

$prototypeV2=static int cursorFlashTime()

$prototypeV2=static QDesktopWidget * desktop()

$prototypeV2=static bool desktopSettingsAware()

$prototypeV2=static int doubleClickInterval()

$prototypeV2=static int exec()

$prototypeV2=static QWidget * focusWidget()

$prototype=static QFont font ()
$internalStaticMethod=|QFont|font,font1|

$prototype=static QFont font ( const QWidget * widget )
$internalStaticMethod=|QFont|font,font2|const QWidget *

$prototype=static QFont font ( const char * className )
$internalStaticMethod=|QFont|font,font3|const char *

/*
[1]QFont font ()
[2]QFont font ( const QWidget * widget )
[3]QFont font ( const char * className )
*/

HB_FUNC_STATIC( QAPPLICATION_FONT )
{
  if( ISNUMPAR(0) )
  {
    QApplication_font1();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QApplication_font2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QApplication_font3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=font

$prototypeV2=static QFontMetrics fontMetrics()

$prototypeV2=static QSize globalStrut()

$prototype=static bool isEffectEnabled ( Qt::UIEffect effect )
$staticMethod=|bool|isEffectEnabled|Qt::UIEffect

$prototypeV2=static bool isLeftToRight()

$prototypeV2=static bool isRightToLeft()

$prototypeV2=static int keyboardInputInterval()

$prototypeV2=static Qt::KeyboardModifiers keyboardModifiers()

$prototypeV2=static Qt::LayoutDirection layoutDirection()

$prototypeV2=static Qt::MouseButtons mouseButtons()

$prototypeV2=static QCursor * overrideCursor()

$prototype=static QPalette palette ()
$internalStaticMethod=|QPalette|palette,palette1|

$prototype=static QPalette palette ( const QWidget * widget )
$internalStaticMethod=|QPalette|palette,palette2|const QWidget *

$prototype=static QPalette palette ( const char * className )
$internalStaticMethod=|QPalette|palette,palette3|const char *

/*
[1]QPalette palette ()
[2]QPalette palette ( const QWidget * widget )
[3]QPalette palette ( const char * className )
*/

HB_FUNC_STATIC( QAPPLICATION_PALETTE )
{
  if( ISNUMPAR(0) )
  {
    QApplication_palette1();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QApplication_palette2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QApplication_palette3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=palette

$prototypeV2=static Qt::KeyboardModifiers queryKeyboardModifiers()

$prototypeV2=static bool quitOnLastWindowClosed()

$prototypeV2=static void restoreOverrideCursor()
$staticMethod=|void|restoreOverrideCursor|

$prototype=static void setActiveWindow ( QWidget * active )
$staticMethod=|void|setActiveWindow|QWidget *

$prototype=static void setColorSpec ( int spec )
$staticMethod=|void|setColorSpec|int

$prototype=static void setCursorFlashTime ( int )
$staticMethod=|void|setCursorFlashTime|int

$prototype=static void setDesktopSettingsAware ( bool on )
$staticMethod=|void|setDesktopSettingsAware|bool

$prototype=static void setDoubleClickInterval ( int )
$staticMethod=|void|setDoubleClickInterval|int

$prototype=static void setEffectEnabled ( Qt::UIEffect effect, bool enable = true )
$staticMethod=|void|setEffectEnabled|Qt::UIEffect,bool=true

$prototype=static void setFont ( const QFont & font, const char * className = nullptr )
$staticMethod=|void|setFont|const QFont &,const char *=nullptr

$prototype=static void setGlobalStrut ( const QSize & )
$staticMethod=|void|setGlobalStrut|const QSize &

$prototype=static void setKeyboardInputInterval ( int )
$staticMethod=|void|setKeyboardInputInterval|int

$prototype=static void setLayoutDirection ( Qt::LayoutDirection direction )
$staticMethod=|void|setLayoutDirection|Qt::LayoutDirection

$prototype=static void setOverrideCursor ( const QCursor & cursor )
$staticMethod=|void|setOverrideCursor|const QCursor &

$prototype=static void setPalette ( const QPalette & palette, const char * className = nullptr )
$staticMethod=|void|setPalette|const QPalette &,const char *=nullptr

$prototype=static void setQuitOnLastWindowClosed ( bool quit )
$staticMethod=|void|setQuitOnLastWindowClosed|bool

$prototype=static void setStartDragDistance ( int l )
$staticMethod=|void|setStartDragDistance|int

$prototype=static void setStartDragTime ( int ms )
$staticMethod=|void|setStartDragTime|int

$prototype=static void setStyle ( QStyle * style )
$internalStaticMethod=|void|setStyle,setStyle1|QStyle *

$prototype=static QStyle * setStyle ( const QString & style )
$internalStaticMethod=|QStyle *|setStyle,setStyle2|const QString &

/*
[1]void setStyle ( QStyle * style )
[2]QStyle * setStyle ( const QString & style )
*/

HB_FUNC_STATIC( QAPPLICATION_SETSTYLE )
{
  if( ISNUMPAR(1) && ISOBJECT(1) )
  {
    QApplication_setStyle1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QApplication_setStyle2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setStyle

$prototype=static void setWheelScrollLines ( int )
$staticMethod=|void|setWheelScrollLines|int

$prototype=static void setWindowIcon ( const QIcon & icon )
$staticMethod=|void|setWindowIcon|const QIcon &

$prototypeV2=static int startDragDistance()

$prototypeV2=static int startDragTime()

$prototypeV2=static QStyle * style()

$prototype=static QWidget * topLevelAt ( const QPoint & point )
$internalStaticMethod=|QWidget *|topLevelAt,topLevelAt1|const QPoint &

$prototype=static QWidget * topLevelAt ( int x, int y )
$internalStaticMethod=|QWidget *|topLevelAt,topLevelAt2|int,int

/*
[1]QWidget * topLevelAt ( const QPoint & point )
[2]QWidget * topLevelAt ( int x, int y )
*/

HB_FUNC_STATIC( QAPPLICATION_TOPLEVELAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QApplication_topLevelAt1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QApplication_topLevelAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=topLevelAt

$prototypeV2=static QWidgetList topLevelWidgets()

$prototypeV2=static int wheelScrollLines()

$prototype=static QWidget * widgetAt ( const QPoint & point )
$internalStaticMethod=|QWidget *|widgetAt,widgetAt1|const QPoint &

$prototype=static QWidget * widgetAt ( int x, int y )
$internalStaticMethod=|QWidget *|widgetAt,widgetAt2|int,int

/*
[1]QWidget * widgetAt ( const QPoint & point )
[2]QWidget * widgetAt ( int x, int y )
*/

HB_FUNC_STATIC( QAPPLICATION_WIDGETAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QApplication_widgetAt1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QApplication_widgetAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=widgetAt

$prototypeV2=static QIcon windowIcon()

%%
%% SIGNALS
%%

$prototype=void aboutToReleaseGpuResources()
%% TODO: check $signalMethod=|void|aboutToReleaseGpuResources|

$prototype=void aboutToUseGpuResources()
%% TODO: check $signalMethod=|void|aboutToUseGpuResources|

$prototype=void commitDataRequest( QSessionManager & manager )
%% TODO: fix $signalMethod=|void|commitDataRequest|QSessionManager &

$prototype=void focusChanged( QWidget * old, QWidget * now )
$signalMethod=|void|focusChanged|QWidget *,QWidget *

$prototype=void fontDatabaseChanged()
$signalMethod=|void|fontDatabaseChanged|

$prototype=void lastWindowClosed()
$signalMethod=|void|lastWindowClosed|

$prototype=void saveStateRequest( QSessionManager & manager )
%% TODO: fix $signalMethod=|void|saveStateRequest|QSessionManager &

#pragma ENDDUMP
