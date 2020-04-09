%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts
$added=5,8,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
using namespace QtCharts;
#endif

%% TODO: add module
#include <QAbstractItemModel>
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtCharts/QCandlestickSeries>
#endif

$prototype=explicit QCandlestickModelMapper(QObject *parent = nullptr) (abstract)
%% $constructor=|new|QObject *=nullptr

%% $deleteMethod

%%
%% Q_PROPERTY(QAbstractItemModel *model READ model WRITE setModel NOTIFY modelReplaced)
%%

$prototype=QAbstractItemModel *model() const
$method=|QAbstractItemModel *|model|

$prototype=void setModel(QAbstractItemModel *model)
$method=|void|setModel|QAbstractItemModel *

%%
%% Q_PROPERTY(QCandlestickSeries *series READ series WRITE setSeries NOTIFY seriesReplaced)
%%

$prototype=QCandlestickSeries *series() const
$method=|QCandlestickSeries *|series|

$prototype=void setSeries(QCandlestickSeries *series)
$method=|void|setSeries|QCandlestickSeries *

%%
%%
%%

$prototype=virtual Qt::Orientation orientation() const = 0
$virtualMethod=|Qt::Orientation|orientation|

$prototype=void setTimestamp(int timestamp) [protected]

$prototype=int timestamp() const [protected]

$prototype=void setOpen(int open) [protected]

$prototype=int open() const [protected]

$prototype=void setHigh(int high) [protected]

$prototype=int high() const [protected]

$prototype=void setLow(int low) [protected]

$prototype=int low() const [protected]

$prototype=void setClose(int close) [protected]

$prototype=int close() const [protected]

$prototype=void setFirstSetSection(int firstSetSection) [protected]

$prototype=int firstSetSection() const [protected]

$prototype=void setLastSetSection(int lastSetSection) [protected]

$prototype=int lastSetSection() const [protected]

%%
%% SIGNALS
%%

%% #if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
%% using namespace QtCharts;
%% #endif

$prototype=void modelReplaced()
$signalMethod=|void|modelReplaced|

$prototype=void seriesReplaced()
$signalMethod=|void|seriesReplaced|

#pragma ENDDUMP
