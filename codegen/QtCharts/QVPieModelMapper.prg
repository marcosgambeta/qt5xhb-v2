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

$prototype=explicit QVPieModelMapper(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

%% $deleteMethod

%%
%% Q_PROPERTY(QPieSeries *series READ series WRITE setSeries NOTIFY seriesReplaced)
%%

$prototypeV2=QPieSeries * series() const

$prototypeV2=void setSeries( QPieSeries * series )

%%
%% Q_PROPERTY(QAbstractItemModel *model READ model WRITE setModel NOTIFY modelReplaced)
%%

$prototypeV2=QAbstractItemModel * model() const

$prototypeV2=void setModel( QAbstractItemModel * model )

%%
%% Q_PROPERTY(int valuesColumn READ valuesColumn WRITE setValuesColumn NOTIFY valuesColumnChanged)
%%

$prototypeV2=int valuesColumn() const

$prototypeV2=void setValuesColumn( int valuesColumn )

%%
%% Q_PROPERTY(int labelsColumn READ labelsColumn WRITE setLabelsColumn NOTIFY labelsColumnChanged)
%%

$prototypeV2=int labelsColumn() const

$prototypeV2=void setLabelsColumn( int labelsColumn )

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

$prototype=void firstRowChanged()
$signalMethod=|void|firstRowChanged|

$prototype=void labelsColumnChanged()
$signalMethod=|void|labelsColumnChanged|

$prototype=void modelReplaced()
$signalMethod=|void|modelReplaced|

$prototype=void rowCountChanged()
$signalMethod=|void|rowCountChanged|

$prototype=void seriesReplaced()
$signalMethod=|void|seriesReplaced|

$prototype=void valuesColumnChanged()
$signalMethod=|void|valuesColumnChanged|

#pragma ENDDUMP
