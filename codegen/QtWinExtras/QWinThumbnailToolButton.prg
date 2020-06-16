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

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QWinThumbnailToolButton(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototypeV2=QString toolTip() const

$prototype=void setToolTip(const QString &toolTip)
$method=|void|setToolTip|const QString &

$prototypeV2=QIcon icon() const

$prototype=void setIcon(const QIcon &icon)
$method=|void|setIcon|const QIcon &

$prototypeV2=bool isEnabled() const

$prototype=void setEnabled(bool enabled)
$method=|void|setEnabled|bool

$prototypeV2=bool isInteractive() const

$prototype=void setInteractive(bool interactive)
$method=|void|setInteractive|bool

$prototypeV2=bool isVisible() const

$prototype=void setVisible(bool visible)
$method=|void|setVisible|bool

$prototypeV2=bool dismissOnClick() const

$prototype=void setDismissOnClick(bool dismiss)
$method=|void|setDismissOnClick|bool

$prototypeV2=bool isFlat() const

$prototype=void setFlat(bool flat)
$method=|void|setFlat|bool

$prototypeV2=void click()

%%
%% SIGNALS
%%

$prototype=void clicked()
$signalMethod=|void|clicked|

$prototype=void changed()
$signalMethod=|void|changed|

#pragma ENDDUMP
