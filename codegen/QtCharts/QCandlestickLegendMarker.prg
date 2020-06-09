%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototypeV2=virtual QLegendMarker::LegendMarkerType type()

$prototypeV2=virtual QCandlestickSeries * series()

#pragma ENDDUMP
