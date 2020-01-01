%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts
$added=5,7,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QLegendMarker

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtCharts;

$prototype=explicit QPieLegendMarker(QPieSeries *series, QPieSlice *slice, QLegend *legend, QObject *parent = nullptr)
$constructor=|new|QPieSeries *,QPieSlice *,QLegend *,QObject *=nullptr

$prototype=QPieLegendMarker(QPieLegendMarkerPrivate &d, QObject *parent = nullptr) [protected]

$prototype=virtual ~QPieLegendMarker()
$deleteMethod

$prototype=virtual LegendMarkerType type()
$virtualMethod=|QLegendMarker::LegendMarkerType|type|

$prototype=virtual QPieSeries* series()
$virtualMethod=|QPieSeries *|series|

$prototype=QPieSlice* slice()
$method=|QPieSlice *|slice|

#pragma ENDDUMP
