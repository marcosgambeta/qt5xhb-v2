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
%% $method=|QAbstractItemModel *|model|

$prototype=void setModel(QAbstractItemModel *model) [protected]
%% $method=|void|setModel|QAbstractItemModel *

$prototype=QXYSeries *series() const [protected]
%% $method=|QXYSeries *|series|

$prototype=void setSeries(QXYSeries *series) [protected]
%% $method=|void|setSeries|QXYSeries *

$prototype=int first() const [protected]
%% $method=|int|first|

$prototype=void setFirst(int first) [protected]
%% $method=|void|setFirst|int

$prototype=int count() const [protected]
%% $method=|int|count|

$prototype=void setCount(int count) [protected]
%% $method=|void|setCount|int

$prototype=Qt::Orientation orientation() const [protected]
%% $method=|Qt::Orientation|orientation|

$prototype=void setOrientation(Qt::Orientation orientation) [protected]
%% $method=|void|setOrientation|Qt::Orientation

$prototype=int xSection() const [protected]
%% $method=|int|xSection|

$prototype=void setXSection(int xSection) [protected]
%% $method=|void|setXSection|int

$prototype=int ySection() const [protected]
%% $method=|int|ySection|

$prototype=void setYSection(int ySection) [protected]
%% $method=|void|setYSection|int

#pragma ENDDUMP
