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

$prototype=explicit QBoxPlotLegendMarker(QBoxPlotSeries *series, QLegend *legend, QObject *parent = nullptr)
$constructor=|new|QBoxPlotSeries *,QLegend *,QObject *=nullptr

$prototype=QBoxPlotLegendMarker(QBoxPlotLegendMarkerPrivate &d, QObject *parent = nullptr) [protected]

$prototype=virtual ~QBoxPlotLegendMarker()
$deleteMethod

$prototype=virtual LegendMarkerType type()
$method=|QLegendMarker::LegendMarkerType|type|

$prototype=virtual QBoxPlotSeries* series()
$method=|QBoxPlotSeries *|series|

#pragma ENDDUMP
