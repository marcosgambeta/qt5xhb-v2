%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
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

$prototypeV2=virtual QLegendMarker::LegendMarkerType type()

$prototypeV2=virtual QPieSeries * series()

$prototypeV2=QPieSlice * slice()

#pragma ENDDUMP
