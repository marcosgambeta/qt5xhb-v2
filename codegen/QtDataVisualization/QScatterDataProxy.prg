%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization

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

#include <QScatter3DSeries>

using namespace QtDataVisualization;

$prototype=explicit QScatterDataProxy(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=Q_NULLPTR

$prototype=explicit QScatterDataProxy(QScatterDataProxyPrivate *d, QObject *parent = Q_NULLPTR) [protected]

$prototype=virtual ~QScatterDataProxy()
$deleteMethod

%%
%% Q_PROPERTY(int itemCount READ itemCount NOTIFY itemCountChanged)
%%

$prototype=int itemCount() const
$method=|int|itemCount|

%%
%% Q_PROPERTY(QScatter3DSeries *series READ series NOTIFY seriesChanged)
%%

$prototype=QScatter3DSeries *series() const
$method=|QScatter3DSeries *|series|

%%
%%
%%

$prototype=const QScatterDataArray *array() const
%% TODO: implementar

$prototype=const QScatterDataItem *itemAt(int index) const
$method=|const QScatterDataItem *|itemAt|int

$prototype=void resetArray(QScatterDataArray *newArray)
%% TODO: implementar

$prototype=void setItem(int index, const QScatterDataItem &item)
$method=|void|setItem|int,const QScatterDataItem &

$prototype=void setItems(int index, const QScatterDataArray &items)
%% TODO: implementar

$prototype=int addItem(const QScatterDataItem &item)
$method=|int|addItem|const QScatterDataItem &

$prototype=int addItems(const QScatterDataArray &items)
%% TODO: implementar

$prototype=void insertItem(int index, const QScatterDataItem &item)
$method=|void|insertItem|int,const QScatterDataItem &

$prototype=void insertItems(int index, const QScatterDataArray &items)
%% TODO: implementar

$prototype=void removeItems(int index, int removeCount)
$method=|void|removeItems|int,int

%%
%% SIGNALS
%%

using namespace QtDataVisualization;

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
$signalMethod=|void|seriesChanged|QScatter3DSeries*

#pragma ENDDUMP
