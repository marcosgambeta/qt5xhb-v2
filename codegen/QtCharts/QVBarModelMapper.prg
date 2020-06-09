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

$beginClassFrom=QBarModelMapper

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtCharts;

#include <QtCharts/QAbstractBarSeries>
#include <QtCore/QAbstractItemModel>

$prototype=explicit QVBarModelMapper(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

%% $deleteMethod

%%
%% Q_PROPERTY(QAbstractBarSeries *series READ series WRITE setSeries NOTIFY seriesReplaced)
%%

$prototypeV2=QAbstractBarSeries * series() const

$prototype=void setSeries(QAbstractBarSeries *series)
$method=|void|setSeries|QAbstractBarSeries *

%%
%% Q_PROPERTY(QAbstractItemModel *model READ model WRITE setModel NOTIFY modelReplaced)
%%

$prototypeV2=QAbstractItemModel * model() const

$prototype=void setModel(QAbstractItemModel *model)
$method=|void|setModel|QAbstractItemModel *

%%
%% Q_PROPERTY(int firstBarSetColumn READ firstBarSetColumn WRITE setFirstBarSetColumn NOTIFY firstBarSetColumnChanged)
%%

$prototypeV2=int firstBarSetColumn() const

$prototype=void setFirstBarSetColumn(int firstBarSetColumn)
$method=|void|setFirstBarSetColumn|int

%%
%% Q_PROPERTY(int lastBarSetColumn READ lastBarSetColumn WRITE setLastBarSetColumn NOTIFY lastBarSetColumnChanged)
%%

$prototypeV2=int lastBarSetColumn() const

$prototype=void setLastBarSetColumn(int lastBarSetColumn)
$method=|void|setLastBarSetColumn|int

%%
%% Q_PROPERTY(int firstRow READ firstRow WRITE setFirstRow NOTIFY firstRowChanged)
%%

$prototypeV2=int firstRow() const

$prototype=void setFirstRow(int firstRow)
$method=|void|setFirstRow|int

%%
%% Q_PROPERTY(int rowCount READ rowCount WRITE setRowCount NOTIFY rowCountChanged)
%%

$prototypeV2=int rowCount() const

$prototype=void setRowCount(int rowCount)
$method=|void|setRowCount|int

%%
%%
%%

%%
%% SIGNALS
%%

$prototype=void firstBarSetColumnChanged()
$signalMethod=|void|firstBarSetColumnChanged|

$prototype=void firstRowChanged()
$signalMethod=|void|firstRowChanged|

$prototype=void lastBarSetColumnChanged()
$signalMethod=|void|lastBarSetColumnChanged|

$prototype=void modelReplaced()
$signalMethod=|void|modelReplaced|

$prototype=void rowCountChanged()
$signalMethod=|void|rowCountChanged|

$prototype=void seriesReplaced()
$signalMethod=|void|seriesReplaced|

#pragma ENDDUMP
