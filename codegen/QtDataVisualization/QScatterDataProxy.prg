%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization
$added=5,7,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractDataProxy

$addMethods

$addSignals

$endClass

$destructor

%% TODO: implementar
%% namespace QtDataVisualization {
%% // typedef introduced this way because QDoc doesn't understand namespace macros
%% typedef QVector<QScatterDataItem> QScatterDataArray;
%% }

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

#include <QtDataVisualization/QScatter3DSeries>

$prototype=explicit QScatterDataProxy(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=explicit QScatterDataProxy(QScatterDataProxyPrivate *d, QObject *parent = nullptr) [protected]

$prototype=virtual ~QScatterDataProxy()
$deleteMethod

%%
%% Q_PROPERTY(int itemCount READ itemCount NOTIFY itemCountChanged)
%%

$prototypeV2=int itemCount() const

%%
%% Q_PROPERTY(QScatter3DSeries *series READ series NOTIFY seriesChanged)
%%

$prototypeV2=QScatter3DSeries * series() const

%%
%%
%%

$prototype=const QScatterDataArray *array() const
%% TODO: implementar

$prototypeV2=const QScatterDataItem * itemAt( int index ) const

$prototype=void resetArray(QScatterDataArray *newArray)
%% TODO: implementar

$prototypeV2=void setItem( int index, const QScatterDataItem & item )

$prototype=void setItems(int index, const QScatterDataArray &items)
%% TODO: implementar

$prototypeV2=int addItem( const QScatterDataItem & item )

$prototype=int addItems(const QScatterDataArray &items)
%% TODO: implementar

$prototypeV2=void insertItem( int index, const QScatterDataItem & item )

$prototype=void insertItems(int index, const QScatterDataArray &items)
%% TODO: implementar

$prototypeV2=void removeItems( int index, int removeCount )

%%
%% SIGNALS
%%

$prototype=void arrayReset()
$signalMethod=|void|arrayReset|

$prototype=void itemCountChanged( int count )
$signalMethod=|void|itemCountChanged|int

$prototype=void itemsAdded( int startIndex, int count )
$signalMethod=|void|itemsAdded|int,int

$prototype=void itemsChanged( int startIndex, int count )
$signalMethod=|void|itemsChanged|int,int

$prototype=void itemsInserted( int startIndex, int count )
$signalMethod=|void|itemsInserted|int,int

$prototype=void itemsRemoved( int startIndex, int count )
$signalMethod=|void|itemsRemoved|int,int

$prototype=void seriesChanged( QScatter3DSeries * series )
$signalMethod=|void|seriesChanged|QScatter3DSeries *

#pragma ENDDUMP
