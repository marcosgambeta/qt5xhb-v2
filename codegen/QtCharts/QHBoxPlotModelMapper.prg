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

$beginClassFrom=QBoxPlotModelMapper

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
using namespace QtCharts;
#endif

#include <QtCharts/QBoxPlotSeries>
#include <QtCore/QAbstractItemModel>

$prototype=explicit QHBoxPlotModelMapper(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

%% $deleteMethod

%%
%% Q_PROPERTY(QBoxPlotSeries *series READ series WRITE setSeries NOTIFY seriesReplaced)
%%

$prototypeV2=QBoxPlotSeries * series() const

$prototype=void setSeries(QBoxPlotSeries *series)
$method=|void|setSeries|QBoxPlotSeries *

%%
%% Q_PROPERTY(QAbstractItemModel *model READ model WRITE setModel NOTIFY modelReplaced)
%%

$prototypeV2=QAbstractItemModel * model() const

$prototype=void setModel(QAbstractItemModel *model)
$method=|void|setModel|QAbstractItemModel *

%%
%% Q_PROPERTY(int firstBoxSetRow READ firstBoxSetRow WRITE setFirstBoxSetRow NOTIFY firstBoxSetRowChanged)
%%

$prototypeV2=int firstBoxSetRow() const

$prototype=void setFirstBoxSetRow(int firstBoxSetRow)
$method=|void|setFirstBoxSetRow|int

%%
%% Q_PROPERTY(int lastBoxSetRow READ lastBoxSetRow WRITE setLastBoxSetRow NOTIFY lastBoxSetRowChanged)
%%

$prototypeV2=int lastBoxSetRow() const

$prototype=void setLastBoxSetRow(int lastBoxSetRow)
$method=|void|setLastBoxSetRow|int

%%
%% Q_PROPERTY(int firstColumn READ firstColumn WRITE setFirstColumn NOTIFY firstColumnChanged)
%%

$prototypeV2=int firstColumn() const

$prototype=void setFirstColumn(int firstColumn)
$method=|void|setFirstColumn|int

%%
%% Q_PROPERTY(int columnCount READ columnCount WRITE setColumnCount NOTIFY columnCountChanged)
%%

$prototypeV2=int columnCount() const

$prototype=void setColumnCount(int rowCount)
$method=|void|setColumnCount|int

%%
%%
%%

%%
%% SIGNALS
%%

$prototype=void columnCountChanged()
$signalMethod=|void|columnCountChanged|

$prototype=void firstBoxSetRowChanged()
$signalMethod=|void|firstBoxSetRowChanged|

$prototype=void firstColumnChanged()
$signalMethod=|void|firstColumnChanged|

$prototype=void lastBoxSetRowChanged()
$signalMethod=|void|lastBoxSetRowChanged|

$prototype=void modelReplaced()
$signalMethod=|void|modelReplaced|

$prototype=void seriesReplaced()
$signalMethod=|void|seriesReplaced|

#pragma ENDDUMP
