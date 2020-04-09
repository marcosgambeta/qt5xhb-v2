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

$beginClassFrom=QXYModelMapper

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtCharts;

#include <QtCharts/QXYSeries>
#include <QtCore/QAbstractItemModel>

$prototype=explicit QVXYModelMapper(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

%% $deleteMethod

%%
%% Q_PROPERTY(QXYSeries *series READ series WRITE setSeries NOTIFY seriesReplaced)
%%

$prototype=QXYSeries *series() const
$method=|QXYSeries *|series|

$prototype=void setSeries(QXYSeries *series)
$method=|void|setSeries|QXYSeries *

%%
%% Q_PROPERTY(QAbstractItemModel *model READ model WRITE setModel NOTIFY modelReplaced)
%%

$prototype=QAbstractItemModel *model() const
$method=|QAbstractItemModel *|model|

$prototype=void setModel(QAbstractItemModel *model)
$method=|void|setModel|QAbstractItemModel *

%%
%% Q_PROPERTY(int xColumn READ xColumn WRITE setXColumn NOTIFY xColumnChanged)
%%

$prototype=int xColumn() const
$method=|int|xColumn|

$prototype=void setXColumn(int xColumn)
$method=|void|setXColumn|int

%%
%% Q_PROPERTY(int yColumn READ yColumn WRITE setYColumn NOTIFY yColumnChanged)
%%

$prototype=int yColumn() const
$method=|int|yColumn|

$prototype=void setYColumn(int yColumn)
$method=|void|setYColumn|int

%%
%% Q_PROPERTY(int firstRow READ firstRow WRITE setFirstRow NOTIFY firstRowChanged)
%%

$prototype=int firstRow() const
$method=|int|firstRow|

$prototype=void setFirstRow(int firstRow)
$method=|void|setFirstRow|int

%%
%% Q_PROPERTY(int rowCount READ rowCount WRITE setRowCount NOTIFY rowCountChanged)
%%

$prototype=int rowCount() const
$method=|int|rowCount|

$prototype=void setRowCount(int rowCount)
$method=|void|setRowCount|int

%%
%%
%%

%%
%% SIGNALS
%%

%% using namespace QtCharts;

$prototype=void firstRowChanged()
$signalMethod=|void|firstRowChanged|

$prototype=void modelReplaced()
$signalMethod=|void|modelReplaced|

$prototype=void rowCountChanged()
$signalMethod=|void|rowCountChanged|

$prototype=void seriesReplaced()
$signalMethod=|void|seriesReplaced|

$prototype=void xColumnChanged()
$signalMethod=|void|xColumnChanged|

$prototype=void yColumnChanged()
$signalMethod=|void|yColumnChanged|

#pragma ENDDUMP
