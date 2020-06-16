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

$prototypeV2=QWindow * window() const

$prototype=void setWindow(QWindow *window)
$method=|void|setWindow|QWindow *

$prototypeV2=QIcon overlayIcon() const

$prototype=void setOverlayIcon(const QIcon &icon)
$method=|void|setOverlayIcon|const QIcon &

$prototypeV2=void clearOverlayIcon()

$prototypeV2=QString overlayAccessibleDescription() const

$prototype=void setOverlayAccessibleDescription(const QString &description)
$method=|void|setOverlayAccessibleDescription|const QString &

$prototypeV2=QWinTaskbarProgress * progress() const

$prototype=bool eventFilter(QObject *, QEvent *)
$method=|bool|eventFilter|QObject *,QEvent *

#pragma ENDDUMP
