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

$beginClassFrom=QAbstractBarSeries

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtCharts;

$prototype=explicit QBarSeries(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=~QBarSeries()
$deleteMethod

$prototypeV2=QAbstractSeries::SeriesType type() const

#pragma ENDDUMP
