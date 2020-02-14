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

$prototype=explicit QBarLegendMarker(QAbstractBarSeries *series, QBarSet *barset, QLegend *legend, QObject *parent = nullptr)
$constructor=|new|QAbstractBarSeries *,QBarSet *,QLegend *,QObject *=nullptr

$prototype=QBarLegendMarker(QBarLegendMarkerPrivate &d, QObject *parent = nullptr) [protected]

$prototype=virtual ~QBarLegendMarker()
$deleteMethod=

$prototype=virtual LegendMarkerType type()
$virtualMethod=|QLegendMarker::LegendMarkerType|type|

$prototype=virtual QAbstractBarSeries* series()
$virtualMethod=|QAbstractBarSeries *|series|

$prototype=QBarSet* barset()
$method=|QBarSet *|barset|

#pragma ENDDUMP
