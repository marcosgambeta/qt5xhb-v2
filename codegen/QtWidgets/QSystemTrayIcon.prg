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

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtWidgets/QMenu>

$prototype=QSystemTrayIcon(QObject * parent = nullptr)
$internalConstructor=|new1|QObject *=nullptr

$prototype=QSystemTrayIcon(const QIcon & icon, QObject * parent = nullptr)
$internalConstructor=|new2|const QIcon &,QObject *=nullptr

/*
[1]QSystemTrayIcon(QObject * parent = nullptr)
[2]QSystemTrayIcon(const QIcon & icon, QObject * parent = nullptr)
*/

HB_FUNC_STATIC( QSYSTEMTRAYICON_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QSystemTrayIcon_new1();
  }
  else if( ISBETWEEN(1,2) && (ISQICON(1)||ISCHAR(1)) && ISOPTQOBJECT(2) )
  {
    QSystemTrayIcon_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QMenu * contextMenu() const

$prototypeV2=QRect geometry() const

$prototypeV2=QIcon icon() const

$prototypeV2=bool isVisible() const

$prototype=void setContextMenu(QMenu * menu)
$method=|void|setContextMenu|QMenu *

$prototype=void setIcon(const QIcon & icon)
$method=|void|setIcon|const QIcon &

$prototype=void setToolTip(const QString & tip)
$method=|void|setToolTip|const QString &

$prototype=void showMessage(const QString & title, const QString & message, MessageIcon icon = Information, int millisecondsTimeoutHint = 10000)
$method=|void|showMessage|const QString &,const QString &,QSystemTrayIcon::MessageIcon=QSystemTrayIcon::Information,int=10000

$prototypeV2=QString toolTip() const

$prototypeV2=void hide()

$prototype=void setVisible(bool visible)
$method=|void|setVisible|bool

$prototypeV2=void show()

$prototypeV2=static bool isSystemTrayAvailable()

$prototypeV2=static bool supportsMessages()

%%
%% SIGNALS
%%

$prototype=void activated( QSystemTrayIcon::ActivationReason reason )
$signalMethod=|void|activated|QSystemTrayIcon::ActivationReason

$prototype=void messageClicked()
$signalMethod=|void|messageClicked|

#pragma ENDDUMP
