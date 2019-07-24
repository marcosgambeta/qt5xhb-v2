%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts
$added=5,7,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QXYSeries

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtCharts;

$prototype=explicit QLineSeries(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=QLineSeries(QLineSeriesPrivate &d, QObject *parent = nullptr) [protected]

$prototype=~QLineSeries()
$deleteMethod

$prototype=QAbstractSeries::SeriesType type() const
$method=|QAbstractSeries::SeriesType|type|

#pragma ENDDUMP
