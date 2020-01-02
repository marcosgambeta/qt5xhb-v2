%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
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

$prototype=QString toolTip() const
$method=|QString|toolTip|

$prototype=void setToolTip(const QString &toolTip)
$method=|void|setToolTip|const QString &

$prototype=QIcon icon() const
$method=|QIcon|icon|

$prototype=void setIcon(const QIcon &icon)
$method=|void|setIcon|const QIcon &

$prototype=bool isEnabled() const
$method=|bool|isEnabled|

$prototype=void setEnabled(bool enabled)
$method=|void|setEnabled|bool

$prototype=bool isInteractive() const
$method=|bool|isInteractive|

$prototype=void setInteractive(bool interactive)
$method=|void|setInteractive|bool

$prototype=bool isVisible() const
$method=|bool|isVisible|

$prototype=void setVisible(bool visible)
$method=|void|setVisible|bool

$prototype=bool dismissOnClick() const
$method=|bool|dismissOnClick|

$prototype=void setDismissOnClick(bool dismiss)
$method=|void|setDismissOnClick|bool

$prototype=bool isFlat() const
$method=|bool|isFlat|

$prototype=void setFlat(bool flat)
$method=|void|setFlat|bool

$prototype=void click()
$method=|void|click|

%%
%% SIGNALS
%%

$prototype=void clicked()
$signalMethod=|void|clicked|

$prototype=void changed()
$signalMethod=|void|changed|

#pragma ENDDUMP
