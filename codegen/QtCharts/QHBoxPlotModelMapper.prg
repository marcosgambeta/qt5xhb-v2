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

$beginClassFrom=QBoxPlotModelMapper

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCharts/QBoxPlotSeries>
#include <QtCore/QAbstractItemModel>

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
using namespace QtCharts;
#endif

$prototype=explicit QHBoxPlotModelMapper(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

%% $deleteMethod

%%
%% Q_PROPERTY(QBoxPlotSeries *series READ series WRITE setSeries NOTIFY seriesReplaced)
%%

$prototype=QBoxPlotSeries *series() const
$method=|QBoxPlotSeries *|series|

$prototype=void setSeries(QBoxPlotSeries *series)
$method=|void|setSeries|QBoxPlotSeries *

%%
%% Q_PROPERTY(QAbstractItemModel *model READ model WRITE setModel NOTIFY modelReplaced)
%%

$prototype=QAbstractItemModel *model() const
$method=|QAbstractItemModel *|model|

$prototype=void setModel(QAbstractItemModel *model)
$method=|void|setModel|QAbstractItemModel *

%%
%% Q_PROPERTY(int firstBoxSetRow READ firstBoxSetRow WRITE setFirstBoxSetRow NOTIFY firstBoxSetRowChanged)
%%

$prototype=int firstBoxSetRow() const
$method=|int|firstBoxSetRow|

$prototype=void setFirstBoxSetRow(int firstBoxSetRow)
$method=|void|setFirstBoxSetRow|int

%%
%% Q_PROPERTY(int lastBoxSetRow READ lastBoxSetRow WRITE setLastBoxSetRow NOTIFY lastBoxSetRowChanged)
%%

$prototype=int lastBoxSetRow() const
$method=|int|lastBoxSetRow|

$prototype=void setLastBoxSetRow(int lastBoxSetRow)
$method=|void|setLastBoxSetRow|int

%%
%% Q_PROPERTY(int firstColumn READ firstColumn WRITE setFirstColumn NOTIFY firstColumnChanged)
%%

$prototype=int firstColumn() const
$method=|int|firstColumn|

$prototype=void setFirstColumn(int firstColumn)
$method=|void|setFirstColumn|int

%%
%% Q_PROPERTY(int columnCount READ columnCount WRITE setColumnCount NOTIFY columnCountChanged)
%%

$prototype=int columnCount() const
$method=|int|columnCount|

$prototype=void setColumnCount(int rowCount)
$method=|void|setColumnCount|int

%%
%%
%%

%%
%% SIGNALS
%%

%% #if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
%% using namespace QtCharts;
%% #endif

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
