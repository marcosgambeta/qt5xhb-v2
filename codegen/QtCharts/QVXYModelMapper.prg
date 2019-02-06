%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QXYModelMapper

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,7,0

#include <QtCharts/QXYSeries>
#include <QtCore/QAbstractItemModel>

using namespace QtCharts;

$prototype=explicit QVXYModelMapper(QObject *parent = nullptr)
$constructor=5,7,0|new|QObject *=nullptr

%% $deleteMethod

%%
%% Q_PROPERTY(QXYSeries *series READ series WRITE setSeries NOTIFY seriesReplaced)
%%

$prototype=QXYSeries *series() const
$method=5,7,0|QXYSeries *|series|

$prototype=void setSeries(QXYSeries *series)
$method=5,7,0|void|setSeries|QXYSeries *

%%
%% Q_PROPERTY(QAbstractItemModel *model READ model WRITE setModel NOTIFY modelReplaced)
%%

$prototype=QAbstractItemModel *model() const
$method=5,7,0|QAbstractItemModel *|model|

$prototype=void setModel(QAbstractItemModel *model)
$method=5,7,0|void|setModel|QAbstractItemModel *

%%
%% Q_PROPERTY(int xColumn READ xColumn WRITE setXColumn NOTIFY xColumnChanged)
%%

$prototype=int xColumn() const
$method=5,7,0|int|xColumn|

$prototype=void setXColumn(int xColumn)
$method=5,7,0|void|setXColumn|int

%%
%% Q_PROPERTY(int yColumn READ yColumn WRITE setYColumn NOTIFY yColumnChanged)
%%

$prototype=int yColumn() const
$method=5,7,0|int|yColumn|

$prototype=void setYColumn(int yColumn)
$method=5,7,0|void|setYColumn|int

%%
%% Q_PROPERTY(int firstRow READ firstRow WRITE setFirstRow NOTIFY firstRowChanged)
%%

$prototype=int firstRow() const
$method=5,7,0|int|firstRow|

$prototype=void setFirstRow(int firstRow)
$method=5,7,0|void|setFirstRow|int

%%
%% Q_PROPERTY(int rowCount READ rowCount WRITE setRowCount NOTIFY rowCountChanged)
%%

$prototype=int rowCount() const
$method=5,7,0|int|rowCount|

$prototype=void setRowCount(int rowCount)
$method=5,7,0|void|setRowCount|int

%%
%%
%%

%%
%% SIGNALS
%%

using namespace QtCharts;

$prototype=void firstRowChanged()
$signalMethod=5,7,0|void|firstRowChanged|

$prototype=void modelReplaced()
$signalMethod=5,7,0|void|modelReplaced|

$prototype=void rowCountChanged()
$signalMethod=5,7,0|void|rowCountChanged|

$prototype=void seriesReplaced()
$signalMethod=5,7,0|void|seriesReplaced|

$prototype=void xColumnChanged()
$signalMethod=5,7,0|void|xColumnChanged|

$prototype=void yColumnChanged()
$signalMethod=5,7,0|void|yColumnChanged|

#pragma ENDDUMP
