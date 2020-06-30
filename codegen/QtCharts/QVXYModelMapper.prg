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

$prototypeV2=QXYSeries * series() const

$prototypeV2=void setSeries( QXYSeries * series )

%%
%% Q_PROPERTY(QAbstractItemModel *model READ model WRITE setModel NOTIFY modelReplaced)
%%

$prototypeV2=QAbstractItemModel * model() const

$prototypeV2=void setModel( QAbstractItemModel * model )

%%
%% Q_PROPERTY(int xColumn READ xColumn WRITE setXColumn NOTIFY xColumnChanged)
%%

$prototypeV2=int xColumn() const

$prototypeV2=void setXColumn( int xColumn )

%%
%% Q_PROPERTY(int yColumn READ yColumn WRITE setYColumn NOTIFY yColumnChanged)
%%

$prototypeV2=int yColumn() const

$prototypeV2=void setYColumn( int yColumn )

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
