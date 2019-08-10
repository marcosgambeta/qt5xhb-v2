%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia
$added=5,5,0

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

$prototype=explicit QAbstractVideoFilter(QObject *parent = nullptr) (abstract)
%% $constructor=|new|QObject *=nullptr

$prototype=~QAbstractVideoFilter()
$deleteMethod

%%
%% Q_PROPERTY(bool active READ isActive WRITE setActive NOTIFY activeChanged)
%%

$prototype=bool isActive() const
$method=|bool|isActive|

$prototype=void setActive(bool v)
$method=|void|setActive|bool

%%
%%
%%

$prototype=virtual QVideoFilterRunnable *createFilterRunnable() = 0
$virtualMethod=|QVideoFilterRunnable *|createFilterRunnable|

%%
%% SIGNALS
%%

$prototype=void activeChanged()
$signalMethod=|void|activeChanged|

#pragma ENDDUMP
