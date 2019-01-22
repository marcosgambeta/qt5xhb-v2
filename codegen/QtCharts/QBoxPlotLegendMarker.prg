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

$prototype=explicit QBoxPlotLegendMarker(QBoxPlotSeries *series, QLegend *legend, QObject *parent = nullptr)
$constructor=5,7,0|new|QBoxPlotSeries *,QLegend *,QObject *=nullptr

$prototype=QBoxPlotLegendMarker(QBoxPlotLegendMarkerPrivate &d, QObject *parent = nullptr) [protected]

$prototype=virtual ~QBoxPlotLegendMarker()
$deleteMethod=5,7,0

$prototype=virtual LegendMarkerType type()
$method=5,7,0|QLegendMarker::LegendMarkerType|type|

$prototype=virtual QBoxPlotSeries* series()
$method=5,7,0|QBoxPlotSeries *|series|

#pragma ENDDUMP
