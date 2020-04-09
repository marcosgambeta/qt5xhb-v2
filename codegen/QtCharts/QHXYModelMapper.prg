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

$prototype=explicit QHXYModelMapper(QObject *parent = nullptr)
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
%% Q_PROPERTY(int xRow READ xRow WRITE setXRow NOTIFY xRowChanged)
%%

$prototype=int xRow() const
$method=|int|xRow|

$prototype=void setXRow(int xRow)
$method=|void|setXRow|int

%%
%% Q_PROPERTY(int yRow READ yRow WRITE setYRow NOTIFY yRowChanged)
%%

$prototype=int yRow() const
$method=|int|yRow|

$prototype=void setYRow(int yRow)
$method=|void|setYRow|int

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

$prototype=void setColumnCount(int columnCount)
$method=|void|setColumnCount|int

%%
%%
%%

%%
%% SIGNALS
%%

%% using namespace QtCharts;

$prototype=void columnCountChanged()
$signalMethod=|void|columnCountChanged|

$prototype=void firstColumnChanged()
$signalMethod=|void|firstColumnChanged|

$prototype=void modelReplaced()
$signalMethod=|void|modelReplaced|

$prototype=void seriesReplaced()
$signalMethod=|void|seriesReplaced|

$prototype=void xRowChanged()
$signalMethod=|void|xRowChanged|

$prototype=void yRowChanged()
$signalMethod=|void|yRowChanged|

#pragma ENDDUMP
