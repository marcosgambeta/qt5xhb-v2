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

$beginClassFrom=QWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtWidgets/QMenu>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QToolBar>

$prototype=QMainWindow ( QWidget * parent = nullptr, Qt::WindowFlags flags = 0 )
$constructor=|new|QWidget *=nullptr,Qt::WindowFlags=0

$deleteMethod

$prototype=void addDockWidget ( Qt::DockWidgetArea area, QDockWidget * dockwidget )
$internalMethod=|void|addDockWidget,addDockWidget1|Qt::DockWidgetArea,QDockWidget *

$prototype=void addDockWidget ( Qt::DockWidgetArea area, QDockWidget * dockwidget, Qt::Orientation orientation )
$internalMethod=|void|addDockWidget,addDockWidget2|Qt::DockWidgetArea,QDockWidget *,Qt::Orientation

/*
[1]void addDockWidget ( Qt::DockWidgetArea area, QDockWidget * dockwidget )
[2]void addDockWidget ( Qt::DockWidgetArea area, QDockWidget * dockwidget, Qt::Orientation orientation )
*/

HB_FUNC_STATIC( QMAINWINDOW_ADDDOCKWIDGET )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQDOCKWIDGET(2) )
  {
    QMainWindow_addDockWidget1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISQDOCKWIDGET(2) && ISNUM(3) )
  {
    QMainWindow_addDockWidget2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addDockWidget

$prototype=void addToolBar ( Qt::ToolBarArea area, QToolBar * toolbar )
$internalMethod=|void|addToolBar,addToolBar1|Qt::ToolBarArea,QToolBar *

$prototype=void addToolBar ( QToolBar * toolbar )
$internalMethod=|void|addToolBar,addToolBar2|QToolBar *

$prototype=QToolBar * addToolBar ( const QString & title )
$internalMethod=|QToolBar *|addToolBar,addToolBar3|const QString &

/*
[1]void addToolBar ( Qt::ToolBarArea area, QToolBar * toolbar )
[2]void addToolBar ( QToolBar * toolbar )
[3]QToolBar * addToolBar ( const QString & title )
*/

HB_FUNC_STATIC( QMAINWINDOW_ADDTOOLBAR )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQTOOLBAR(2) )
  {
    QMainWindow_addToolBar1();
  }
  else if( ISNUMPAR(1) && ISQTOOLBAR(1) )
  {
    QMainWindow_addToolBar2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QMainWindow_addToolBar3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addToolBar

$prototype=void addToolBarBreak ( Qt::ToolBarArea area = Qt::TopToolBarArea )
$method=|void|addToolBarBreak|Qt::ToolBarArea=Qt::TopToolBarArea

$prototypeV2=QWidget * centralWidget() const

$prototype=Qt::DockWidgetArea corner ( Qt::Corner corner ) const
$method=|Qt::DockWidgetArea|corner|Qt::Corner

$prototypeV2=virtual QMenu * createPopupMenu()

$prototypeV2=QMainWindow::DockOptions dockOptions() const

$prototype=Qt::DockWidgetArea dockWidgetArea ( QDockWidget * dockwidget ) const
$method=|Qt::DockWidgetArea|dockWidgetArea|QDockWidget *

$prototypeV2=bool documentMode() const

$prototypeV2=QSize iconSize() const

$prototype=void insertToolBar ( QToolBar * before, QToolBar * toolbar )
$method=|void|insertToolBar|QToolBar *,QToolBar *

$prototype=void insertToolBarBreak ( QToolBar * before )
$method=|void|insertToolBarBreak|QToolBar *

$prototypeV2=bool isAnimated() const

$prototypeV2=bool isDockNestingEnabled() const

$prototypeV2=QMenuBar * menuBar() const

$prototypeV2=QWidget * menuWidget() const

$prototype=void removeDockWidget ( QDockWidget * dockwidget )
$method=|void|removeDockWidget|QDockWidget *

$prototype=void removeToolBar ( QToolBar * toolbar )
$method=|void|removeToolBar|QToolBar *

$prototype=void removeToolBarBreak ( QToolBar * before )
$method=|void|removeToolBarBreak|QToolBar *

$prototype=bool restoreDockWidget ( QDockWidget * dockwidget )
$method=|bool|restoreDockWidget|QDockWidget *

$prototype=bool restoreState ( const QByteArray & state, int version = 0 )
$method=|bool|restoreState|const QByteArray &,int=0

$prototype=QByteArray saveState ( int version = 0 ) const
$method=|QByteArray|saveState|int=0

$prototype=void setCentralWidget ( QWidget * widget )
$method=|void|setCentralWidget|QWidget *

$prototype=void setCorner ( Qt::Corner corner, Qt::DockWidgetArea area )
$method=|void|setCorner|Qt::Corner,Qt::DockWidgetArea

$prototype=void setDockOptions ( DockOptions options )
$method=|void|setDockOptions|QMainWindow::DockOptions

$prototype=void setDocumentMode ( bool enabled )
$method=|void|setDocumentMode|bool

$prototype=void setIconSize ( const QSize & iconSize )
$method=|void|setIconSize|const QSize &

$prototype=void setMenuBar ( QMenuBar * menuBar )
$method=|void|setMenuBar|QMenuBar *

$prototype=void setMenuWidget ( QWidget * menuBar )
$method=|void|setMenuWidget|QWidget *

$prototype=void setStatusBar ( QStatusBar * statusbar )
$method=|void|setStatusBar|QStatusBar *

$prototype=void setTabPosition ( Qt::DockWidgetAreas areas, QTabWidget::TabPosition tabPosition )
$method=|void|setTabPosition|Qt::DockWidgetAreas,QTabWidget::TabPosition

$prototype=void setTabShape ( QTabWidget::TabShape tabShape )
$method=|void|setTabShape|QTabWidget::TabShape

$prototype=void setToolButtonStyle ( Qt::ToolButtonStyle toolButtonStyle )
$method=|void|setToolButtonStyle|Qt::ToolButtonStyle

$prototype=void splitDockWidget ( QDockWidget * first, QDockWidget * second, Qt::Orientation orientation )
$method=|void|splitDockWidget|QDockWidget *,QDockWidget *,Qt::Orientation

$prototypeV2=QStatusBar * statusBar() const

$prototype=QTabWidget::TabPosition tabPosition ( Qt::DockWidgetArea area ) const
$method=|QTabWidget::TabPosition|tabPosition|Qt::DockWidgetArea

$prototypeV2=QTabWidget::TabShape tabShape() const

$prototype=void tabifyDockWidget ( QDockWidget * first, QDockWidget * second )
$method=|void|tabifyDockWidget|QDockWidget *,QDockWidget *

$prototype=Qt::ToolBarArea toolBarArea ( QToolBar * toolbar ) const
$method=|Qt::ToolBarArea|toolBarArea|QToolBar *

$prototype=bool toolBarBreak ( QToolBar * toolbar ) const
$method=|bool|toolBarBreak|QToolBar *

$prototypeV2=Qt::ToolButtonStyle toolButtonStyle() const

$prototype=void setAnimated ( bool enabled )
$method=|void|setAnimated|bool

$prototype=void setDockNestingEnabled ( bool enabled ) const
$method=|void|setDockNestingEnabled|bool

$prototype=QWidget * takeCentralWidget ()
$method=5,2,0|QWidget *|takeCentralWidget|

%%
%% SIGNALS
%%

$prototype=void iconSizeChanged( const QSize & iconSize )
$signalMethod=|void|iconSizeChanged|const QSize &

$prototype=void toolButtonStyleChanged( Qt::ToolButtonStyle toolButtonStyle )
$signalMethod=|void|toolButtonStyleChanged|Qt::ToolButtonStyle

#pragma ENDDUMP
