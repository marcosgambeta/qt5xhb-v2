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

$beginClassFrom=QPieModelMapper

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtCharts;

#include <QtCharts/QPieSeries>
#include <QtCore/QAbstractItemModel>

$prototype=explicit QHPieModelMapper(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

%% $deleteMethod

%%
%% Q_PROPERTY(QPieSeries *series READ series WRITE setSeries NOTIFY seriesReplaced)
%%

$prototypeV2=QPieSeries * series() const

$prototype=void setSeries(QPieSeries *series)
$method=|void|setSeries|QPieSeries *

%%
%% Q_PROPERTY(QAbstractItemModel *model READ model WRITE setModel NOTIFY modelReplaced)
%%

$prototypeV2=QAbstractItemModel * model() const

$prototype=void setModel(QAbstractItemModel *model)
$method=|void|setModel|QAbstractItemModel *

%%
%% Q_PROPERTY(int valuesRow READ valuesRow WRITE setValuesRow NOTIFY valuesRowChanged)
%%

$prototypeV2=int valuesRow() const

$prototype=void setValuesRow(int valuesRow)
$method=|void|setValuesRow|int

%%
%% Q_PROPERTY(int labelsRow READ labelsRow WRITE setLabelsRow NOTIFY labelsRowChanged)
%%

$prototypeV2=int labelsRow() const

$prototype=void setLabelsRow(int labelsRow)
$method=|void|setLabelsRow|int

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

$prototype=void setColumnCount(int columnCount)
$method=|void|setColumnCount|int

%%
%%
%%

%%
%% SIGNALS
%%

$prototype=void columnCountChanged()
$signalMethod=|void|columnCountChanged|

$prototype=void firstColumnChanged()
$signalMethod=|void|firstColumnChanged|

$prototype=void labelsRowChanged()
$signalMethod=|void|labelsRowChanged|

$prototype=void modelReplaced()
$signalMethod=|void|modelReplaced|

$prototype=void seriesReplaced()
$signalMethod=|void|seriesReplaced|

$prototype=void valuesRowChanged()
$signalMethod=|void|valuesRowChanged|

#pragma ENDDUMP
