%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QLegendMarker

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,7,0

using namespace QtCharts;

$prototype=explicit QPieLegendMarker(QPieSeries *series, QPieSlice *slice, QLegend *legend, QObject *parent = nullptr)
$constructor=5,7,0|new|QPieSeries *,QPieSlice *,QLegend *,QObject *=nullptr

$prototype=QPieLegendMarker(QPieLegendMarkerPrivate &d, QObject *parent = nullptr) [protected]

$prototype=virtual ~QPieLegendMarker()
$deleteMethod=5,7,0

$prototype=virtual LegendMarkerType type()
$virtualMethod=5,7,0|QLegendMarker::LegendMarkerType|type|

$prototype=virtual QPieSeries* series()
$virtualMethod=5,7,0|QPieSeries *|series|

$prototype=QPieSlice* slice()
$method=5,7,0|QPieSlice *|slice|

#pragma ENDDUMP
