%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
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

#include <QtCharts/QAbstractBarSeries>
#include <QtCore/QAbstractItemModel>

using namespace QtCharts;

$prototype=explicit QHBarModelMapper(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

%% $deleteMethod

%%
%% Q_PROPERTY(QAbstractBarSeries *series READ series WRITE setSeries NOTIFY seriesReplaced)
%%

$prototype=QAbstractBarSeries *series() const
$method=|QAbstractBarSeries *|series|

$prototype=void setSeries(QAbstractBarSeries *series)
$method=|void|setSeries|QAbstractBarSeries *

%%
%% Q_PROPERTY(QAbstractItemModel *model READ model WRITE setModel NOTIFY modelReplaced)
%%

$prototype=QAbstractItemModel *model() const
$method=|QAbstractItemModel *|model|

$prototype=void setModel(QAbstractItemModel *model)
$method=|void|setModel|QAbstractItemModel *

%%
%% Q_PROPERTY(int firstBarSetRow READ firstBarSetRow WRITE setFirstBarSetRow NOTIFY firstBarSetRowChanged)
%%

$prototype=int firstBarSetRow() const
$method=|int|firstBarSetRow|

$prototype=void setFirstBarSetRow(int firstBarSetRow)
$method=|void|setFirstBarSetRow|int

%%
%% Q_PROPERTY(int lastBarSetRow READ lastBarSetRow WRITE setLastBarSetRow NOTIFY lastBarSetRowChanged)
%%

$prototype=int lastBarSetRow() const
$method=|int|lastBarSetRow|

$prototype=void setLastBarSetRow(int lastBarSetRow)
$method=|void|setLastBarSetRow|int

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

$prototype=void firstBarSetRowChanged()
$signalMethod=|void|firstBarSetRowChanged|

$prototype=void firstColumnChanged()
$signalMethod=|void|firstColumnChanged|

$prototype=void lastBarSetRowChanged()
$signalMethod=|void|lastBarSetRowChanged|

$prototype=void modelReplaced()
$signalMethod=|void|modelReplaced|

$prototype=void seriesReplaced()
$signalMethod=|void|seriesReplaced|

#pragma ENDDUMP
