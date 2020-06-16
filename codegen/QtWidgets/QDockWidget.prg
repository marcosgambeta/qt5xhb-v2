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

#include <QtWidgets/QAction>

$prototype=QDockWidget ( const QString & title, QWidget * parent = nullptr, Qt::WindowFlags flags = 0 )
$internalConstructor=|new1|const QString &,QWidget *=nullptr,Qt::WindowFlags=0

$prototype=QDockWidget ( QWidget * parent = nullptr, Qt::WindowFlags flags = 0 )
$internalConstructor=|new2|QWidget *=nullptr,Qt::WindowFlags=0

/*
[1]QDockWidget ( const QString & title, QWidget * parent = nullptr, Qt::WindowFlags flags = 0 )
[2]QDockWidget ( QWidget * parent = nullptr, Qt::WindowFlags flags = 0 )
*/

HB_FUNC_STATIC( QDOCKWIDGET_NEW )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTQWIDGET(2) && ISOPTNUM(3) )
  {
    QDockWidget_new1();
  }
  else if( ISBETWEEN(0,2) && ISOPTQWIDGET(1) && ISOPTNUM(2) )
  {
    QDockWidget_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=Qt::DockWidgetAreas allowedAreas() const

$prototypeV2=QDockWidget::DockWidgetFeatures features() const

$prototype=bool isAreaAllowed ( Qt::DockWidgetArea area ) const
$method=|bool|isAreaAllowed|Qt::DockWidgetArea

$prototypeV2=bool isFloating() const

$prototype=void setAllowedAreas ( Qt::DockWidgetAreas areas )
$method=|void|setAllowedAreas|Qt::DockWidgetAreas

$prototype=void setFeatures ( DockWidgetFeatures features )
$method=|void|setFeatures|QDockWidget::DockWidgetFeatures

$prototype=void setFloating ( bool floating )
$method=|void|setFloating|bool

$prototype=void setTitleBarWidget ( QWidget * widget )
$method=|void|setTitleBarWidget|QWidget *

$prototype=void setWidget ( QWidget * widget )
$method=|void|setWidget|QWidget *

$prototypeV2=QWidget * titleBarWidget() const

$prototypeV2=QAction * toggleViewAction() const

$prototypeV2=QWidget * widget() const

%%
%% SIGNALS
%%

$prototype=void allowedAreasChanged( Qt::DockWidgetAreas allowedAreas )
$signalMethod=|void|allowedAreasChanged|Qt::DockWidgetAreas

$prototype=void dockLocationChanged( Qt::DockWidgetArea area )
$signalMethod=|void|dockLocationChanged|Qt::DockWidgetArea

$prototype=void featuresChanged( QDockWidget::DockWidgetFeatures features )
$signalMethod=|void|featuresChanged|QDockWidget::DockWidgetFeatures

$prototype=void topLevelChanged( bool topLevel )
$signalMethod=|void|topLevelChanged|bool

$prototype=void visibilityChanged( bool visible )
$signalMethod=|void|visibilityChanged|bool

#pragma ENDDUMP
