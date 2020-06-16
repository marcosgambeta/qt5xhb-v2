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

#include <QtWidgets/QTabBar>

$prototype=explicit QTabWidget ( QWidget * parent = nullptr )
$constructor=|new|QWidget *=nullptr

$deleteMethod

$prototype=int addTab ( QWidget * page, const QString & label )
$internalMethod=|int|addTab,addTab1|QWidget *,const QString &

$prototype=int addTab ( QWidget * page, const QIcon & icon, const QString & label )
$internalMethod=|int|addTab,addTab2|QWidget *,const QIcon &,const QString &

/*
[1]int addTab ( QWidget * page, const QString & label )
[2]int addTab ( QWidget * page, const QIcon & icon, const QString & label )
*/

HB_FUNC_STATIC( QTABWIDGET_ADDTAB )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISCHAR(2) )
  {
    QTabWidget_addTab1();
  }
  else if( ISNUMPAR(3) && ISQWIDGET(1) && (ISQICON(2)||ISCHAR(2)) && ISCHAR(3) )
  {
    QTabWidget_addTab2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addTab

$prototypeV2=void clear()

$prototype=QWidget * cornerWidget ( Qt::Corner corner = Qt::TopRightCorner ) const
$method=|QWidget *|cornerWidget|Qt::Corner=Qt::TopRightCorner

$prototype=void setCornerWidget ( QWidget * widget, Qt::Corner corner = Qt::TopRightCorner )
$method=|void|setCornerWidget|QWidget *,Qt::Corner=Qt::TopRightCorner

$prototypeV2=int count() const

$prototypeV2=int currentIndex() const

$prototype=void setCurrentIndex ( int index )
$method=|void|setCurrentIndex|int

$prototypeV2=QWidget * currentWidget() const

$prototype=void setCurrentWidget ( QWidget * widget )
$method=|void|setCurrentWidget|QWidget *

$prototypeV2=bool documentMode() const

$prototype=void setDocumentMode ( bool set )
$method=|void|setDocumentMode|bool

$prototypeV2=Qt::TextElideMode elideMode() const

$prototype=void setElideMode ( Qt::TextElideMode )
$method=|void|setElideMode|Qt::TextElideMode

$prototypeV2=QSize iconSize() const

$prototype=void setIconSize ( const QSize & size )
$method=|void|setIconSize|const QSize &

$prototype=int indexOf ( QWidget * w ) const
$method=|int|indexOf|QWidget *

$prototype=int insertTab ( int index, QWidget * page, const QString & label )
$internalMethod=|int|insertTab,insertTab1|int,QWidget *,const QString &

$prototype=int insertTab ( int index, QWidget * page, const QIcon & icon, const QString & label )
$internalMethod=|int|insertTab,insertTab2|int,QWidget *,const QIcon &,const QString &

/*
[1]int insertTab ( int index, QWidget * page, const QString & label )
[2]int insertTab ( int index, QWidget * page, const QIcon & icon, const QString & label )
*/

HB_FUNC_STATIC( QTABWIDGET_INSERTTAB )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISQWIDGET(2) && ISCHAR(3) )
  {
    QTabWidget_insertTab1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISQWIDGET(2) && (ISQICON(3)||ISCHAR(3)) && ISCHAR(4) )
  {
    QTabWidget_insertTab2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=insertTab

$prototypeV2=bool isMovable() const

$prototype=void setMovable ( bool movable )
$method=|void|setMovable|bool

$prototype=bool isTabEnabled ( int index ) const
$method=|bool|isTabEnabled|int

$prototype=void setTabEnabled ( int index, bool enable )
$method=|void|setTabEnabled|int,bool

$prototype=void removeTab ( int index )
$method=|void|removeTab|int

$prototype=QIcon tabIcon ( int index ) const
$method=|QIcon|tabIcon|int

$prototype=void setTabIcon ( int index, const QIcon & icon )
$method=|void|setTabIcon|int,const QIcon &

$prototypeV2=QTabWidget::TabPosition tabPosition() const

$prototype=void setTabPosition ( TabPosition )
$method=|void|setTabPosition|QTabWidget::TabPosition

$prototypeV2=QTabWidget::TabShape tabShape() const

$prototype=void setTabShape ( TabShape s )
$method=|void|setTabShape|QTabWidget::TabShape

$prototype=QString tabText ( int index ) const
$method=|QString|tabText|int

$prototype=void setTabText ( int index, const QString & label )
$method=|void|setTabText|int,const QString &

$prototype=QString tabToolTip ( int index ) const
$method=|QString|tabToolTip|int|#ifndef QT_NO_TOOLTIP

$prototype=void setTabToolTip ( int index, const QString & tip )
$method=|void|setTabToolTip|int,const QString &|#ifndef QT_NO_TOOLTIP

$prototype=QString tabWhatsThis ( int index ) const
$method=|QString|tabWhatsThis|int|#ifndef QT_NO_WHATSTHIS

$prototype=void setTabWhatsThis ( int index, const QString & text )
$method=|void|setTabWhatsThis|int,const QString &|#ifndef QT_NO_WHATSTHIS

$prototypeV2=bool usesScrollButtons() const

$prototype=void setUsesScrollButtons ( bool useButtons )
$method=|void|setUsesScrollButtons|bool

$prototypeV2=bool tabsClosable() const

$prototype=void setTabsClosable ( bool closeable )
$method=|void|setTabsClosable|bool

$prototype=QWidget * widget ( int index ) const
$method=|QWidget *|widget|int

$prototypeV2=QSize minimumSizeHint() const

$prototypeV2=QSize sizeHint() const

$prototype=int heightForWidth(int width) const
$method=|int|heightForWidth|int

$prototypeV2=bool hasHeightForWidth() const

$prototype=bool tabBarAutoHide() const
$method=5,4,0|bool|tabBarAutoHide|

$prototype=void setTabBarAutoHide(bool enabled)
$method=5,4,0|void|setTabBarAutoHide|bool

$prototypeV2=QTabBar * tabBar() const

%%
%% SIGNALS
%%

$prototype=void currentChanged( int index )
$signalMethod=|void|currentChanged|int

$prototype=void tabCloseRequested( int index )
$signalMethod=|void|tabCloseRequested|int

$prototype=void tabBarClicked( int index )
$signalMethod=5,2,0|void|tabBarClicked|int

$prototype=void tabBarDoubleClicked( int index )
$signalMethod=5,2,0|void|tabBarDoubleClicked|int

#pragma ENDDUMP
