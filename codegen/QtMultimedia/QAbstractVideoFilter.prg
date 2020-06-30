%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototypeV2=bool isActive() const

$prototypeV2=void setActive( bool v )

%%
%%
%%

$prototypeV2=virtual QVideoFilterRunnable * createFilterRunnable() = 0

%%
%% SIGNALS
%%

$prototype=void activeChanged()
$signalMethod=|void|activeChanged|

#pragma ENDDUMP
