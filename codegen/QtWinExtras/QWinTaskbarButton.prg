%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWinExtras
$added=5,2,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QWindow>
#include <QtWinExtras/QWinTaskbarProgress>

$prototype=explicit QWinTaskbarButton(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototype=QWindow *window() const
$method=|QWindow *|window|

$prototype=void setWindow(QWindow *window)
$method=|void|setWindow|QWindow *

$prototype=QIcon overlayIcon() const
$method=|QIcon|overlayIcon|

$prototype=void setOverlayIcon(const QIcon &icon)
$method=|void|setOverlayIcon|const QIcon &

$prototype=void clearOverlayIcon()
$method=|void|clearOverlayIcon|

$prototype=QString overlayAccessibleDescription() const
$method=|QString|overlayAccessibleDescription|

$prototype=void setOverlayAccessibleDescription(const QString &description)
$method=|void|setOverlayAccessibleDescription|const QString &

$prototype=QWinTaskbarProgress *progress() const
$method=|QWinTaskbarProgress *|progress|

$prototype=bool eventFilter(QObject *, QEvent *)
$method=|bool|eventFilter|QObject *,QEvent *

#pragma ENDDUMP
