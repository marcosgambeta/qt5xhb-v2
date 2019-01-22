%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,5,0

$prototype=explicit QAbstractVideoFilter(QObject *parent = nullptr) (abstract)
%% $constructor=5,5,0|new|QObject *=nullptr

$prototype=~QAbstractVideoFilter()
$deleteMethod=5,5,0

%%
%% Q_PROPERTY(bool active READ isActive WRITE setActive NOTIFY activeChanged)
%%

$prototype=bool isActive() const
$method=5,5,0|bool|isActive|

$prototype=void setActive(bool v)
$method=5,5,0|void|setActive|bool

%%
%%
%%

$prototype=virtual QVideoFilterRunnable *createFilterRunnable() = 0
$virtualMethod=5,5,0|QVideoFilterRunnable *|createFilterRunnable|

%%
%% SIGNALS
%%

$prototype=void activeChanged()
$signalMethod=|void|activeChanged|

#pragma ENDDUMP
