%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts
$added=5,8,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QLegendMarker

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
using namespace QtCharts;
#endif

$prototype=explicit QCandlestickLegendMarker(QCandlestickSeries *series, QLegend *legend, QObject *parent = nullptr)
$constructor=|new|QCandlestickSeries *,QLegend *,QObject *=nullptr

$prototype=virtual ~QCandlestickLegendMarker()
$deleteMethod

$prototype=virtual LegendMarkerType type()
$virtualMethod=|QLegendMarker::LegendMarkerType|type|

$prototype=virtual QCandlestickSeries* series()
$virtualMethod=|QCandlestickSeries *|series|

#pragma ENDDUMP
