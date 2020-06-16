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

$prototype=explicit QWinThumbnailToolBar(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototypeV2=QWindow * window() const

$prototype=void setWindow(QWindow *window)
$method=|void|setWindow|QWindow *

$prototype=void addButton(QWinThumbnailToolButton *button)
$method=|void|addButton|QWinThumbnailToolButton *

$prototype=void removeButton(QWinThumbnailToolButton *button)
$method=|void|removeButton|QWinThumbnailToolButton *

$prototype=void setButtons(const QList<QWinThumbnailToolButton *> &buttons)
$method=|void|setButtons|const QList<QWinThumbnailToolButton *> &

$prototype=QList<QWinThumbnailToolButton *> buttons() const
$method=|QList<QWinThumbnailToolButton *>|buttons|

$prototypeV2=int count() const

$prototypeV2=void clear()

#pragma ENDDUMP
