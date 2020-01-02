%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSensors
$added=5,1,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=quint64 timestamp() const
$method=|quint64|timestamp|

$prototype=void setTimestamp(quint64 timestamp)
$method=|void|setTimestamp|quint64

$prototype=int valueCount() const
$method=|int|valueCount|

$prototype=QVariant value(int index) const
$method=|QVariant|value|int

#pragma ENDDUMP
