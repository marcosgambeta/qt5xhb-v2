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

$beginClassFrom=QAbstractScrollArea

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtWidgets/QMdiSubWindow>

$prototype=QMdiArea ( QWidget * parent = nullptr )
$constructor=|new|QWidget *=nullptr

$deleteMethod

$prototypeV2=QMdiArea::WindowOrder activationOrder() const

$prototypeV2=QMdiSubWindow * activeSubWindow() const

$prototype=QMdiSubWindow * addSubWindow ( QWidget * widget, Qt::WindowFlags windowFlags = 0 )
$method=|QMdiSubWindow *|addSubWindow|QWidget *,Qt::WindowFlags=0

$prototypeV2=QBrush background() const

$prototypeV2=QMdiSubWindow * currentSubWindow() const

$prototypeV2=bool documentMode() const

$prototype=void removeSubWindow ( QWidget * widget )
$method=|void|removeSubWindow|QWidget *

$prototype=void setActivationOrder ( WindowOrder order )
$method=|void|setActivationOrder|QMdiArea::WindowOrder

$prototype=void setBackground ( const QBrush & background )
$method=|void|setBackground|const QBrush &

$prototype=void setDocumentMode ( bool enabled )
$method=|void|setDocumentMode|bool

$prototype=void setOption ( AreaOption option, bool on = true )
$method=|void|setOption|QMdiArea::AreaOption,bool=true

$prototype=void setTabPosition ( QTabWidget::TabPosition position )
$method=|void|setTabPosition|QTabWidget::TabPosition

$prototype=void setTabShape ( QTabWidget::TabShape shape )
$method=|void|setTabShape|QTabWidget::TabShape

$prototype=void setViewMode ( ViewMode mode )
$method=|void|setViewMode|QMdiArea::ViewMode

$prototype=QList<QMdiSubWindow *> subWindowList ( WindowOrder order = CreationOrder ) const
$method=|QList<QMdiSubWindow *>|subWindowList|QMdiArea::WindowOrder=QMdiArea::CreationOrder

$prototypeV2=QTabWidget::TabPosition tabPosition() const

$prototypeV2=QTabWidget::TabShape tabShape() const

$prototype=bool testOption ( AreaOption option ) const
$method=|bool|testOption|QMdiArea::AreaOption

$prototypeV2=QMdiArea::ViewMode viewMode() const

$prototypeV2=virtual QSize minimumSizeHint() const

$prototypeV2=virtual QSize sizeHint() const

$prototypeV2=void activateNextSubWindow()

$prototypeV2=void activatePreviousSubWindow()

$prototypeV2=void cascadeSubWindows()

$prototypeV2=void closeActiveSubWindow()

$prototypeV2=void closeAllSubWindows()

$prototype=void setActiveSubWindow ( QMdiSubWindow * window )
$method=|void|setActiveSubWindow|QMdiSubWindow *

$prototypeV2=void tileSubWindows()

$prototypeV2=bool tabsClosable() const

$prototype=void setTabsClosable ( bool closable )
$method=|void|setTabsClosable|bool

$prototypeV2=bool tabsMovable() const

$prototype=void setTabsMovable ( bool movable )
$method=|void|setTabsMovable|bool

%%
%% SIGNALS
%%

$prototype=void subWindowActivated( QMdiSubWindow * window )
$signalMethod=|void|subWindowActivated|QMdiSubWindow *

#pragma ENDDUMP
