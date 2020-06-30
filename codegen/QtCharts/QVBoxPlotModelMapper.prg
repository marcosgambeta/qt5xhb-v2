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

$beginClassFrom=QBoxPlotModelMapper

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtCharts;

#include <QtCharts/QBoxPlotSeries>
#include <QtCore/QAbstractItemModel>

$prototype=explicit QVBoxPlotModelMapper(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

%% $deleteMethod

%%
%% Q_PROPERTY(QBoxPlotSeries *series READ series WRITE setSeries NOTIFY seriesReplaced)
%%

$prototypeV2=QBoxPlotSeries * series() const

$prototypeV2=void setSeries( QBoxPlotSeries * series )

%%
%% Q_PROPERTY(QAbstractItemModel *model READ model WRITE setModel NOTIFY modelReplaced)
%%

$prototypeV2=QAbstractItemModel * model() const

$prototypeV2=void setModel( QAbstractItemModel * model )

%%
%% Q_PROPERTY(int firstBoxSetColumn READ firstBoxSetColumn WRITE setFirstBoxSetColumn NOTIFY firstBoxSetColumnChanged)
%%

$prototypeV2=int firstBoxSetColumn() const

$prototypeV2=void setFirstBoxSetColumn( int firstBoxSetColumn )

%%
%% Q_PROPERTY(int lastBoxSetColumn READ lastBoxSetColumn WRITE setLastBoxSetColumn NOTIFY lastBoxSetColumnChanged)
%%

$prototypeV2=int lastBoxSetColumn() const

$prototypeV2=void setLastBoxSetColumn( int lastBoxSetColumn )

%%
%% Q_PROPERTY(int firstRow READ firstRow WRITE setFirstRow NOTIFY firstRowChanged)
%%

$prototypeV2=int firstRow() const

$prototypeV2=void setFirstRow( int firstRow )

%%
%% Q_PROPERTY(int rowCount READ rowCount WRITE setRowCount NOTIFY rowCountChanged)
%%

$prototypeV2=int rowCount() const

$prototypeV2=void setRowCount( int rowCount )

%%
%%
%%

%%
%% SIGNALS
%%

$prototype=void firstBoxSetColumnChanged()
$signalMethod=|void|firstBoxSetColumnChanged|

$prototype=void firstRowChanged()
$signalMethod=|void|firstRowChanged|

$prototype=void lastBoxSetColumnChanged()
$signalMethod=|void|lastBoxSetColumnChanged|

$prototype=void modelReplaced()
$signalMethod=|void|modelReplaced|

$prototype=void rowCountChanged()
$signalMethod=|void|rowCountChanged|

$prototype=void seriesReplaced()
$signalMethod=|void|seriesReplaced|

#pragma ENDDUMP
