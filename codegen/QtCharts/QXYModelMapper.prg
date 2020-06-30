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

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtCharts;

#include <QtCharts/QXYSeries>
#include <QtCore/QAbstractItemModel>

$prototype=explicit QXYModelMapper(QObject *parent = nullptr) [protected]
%% $constructor=|new|QObject *=nullptr

%% $deleteMethod

$prototype=QAbstractItemModel *model() const [protected]

$prototype=void setModel(QAbstractItemModel *model) [protected]

$prototype=QXYSeries *series() const [protected]

$prototype=void setSeries(QXYSeries *series) [protected]

$prototype=int first() const [protected]

$prototype=void setFirst(int first) [protected]

$prototype=int count() const [protected]

$prototype=void setCount(int count) [protected]

$prototype=Qt::Orientation orientation() const [protected]

$prototype=void setOrientation(Qt::Orientation orientation) [protected]

$prototype=int xSection() const [protected]

$prototype=void setXSection(int xSection) [protected]

$prototype=int ySection() const [protected]

$prototype=void setYSection(int ySection) [protected]

#pragma ENDDUMP
