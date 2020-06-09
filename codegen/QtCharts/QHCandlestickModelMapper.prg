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

$beginClassFrom=QCandlestickModelMapper

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
using namespace QtCharts;
#endif

$prototype=explicit QHCandlestickModelMapper(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

%% $deleteMethod

%%
%% Q_PROPERTY(int timestampColumn READ timestampColumn WRITE setTimestampColumn NOTIFY timestampColumnChanged)
%%

$prototypeV2=int timestampColumn() const

$prototype=void setTimestampColumn(int timestampColumn)
$method=|void|setTimestampColumn|int

%%
%% Q_PROPERTY(int openColumn READ openColumn WRITE setOpenColumn NOTIFY openColumnChanged)
%%

$prototypeV2=int openColumn() const

$prototype=void setOpenColumn(int openColumn)
$method=|void|setOpenColumn|int

%%
%% Q_PROPERTY(int highColumn READ highColumn WRITE setHighColumn NOTIFY highColumnChanged)
%%

$prototypeV2=int highColumn() const

$prototype=void setHighColumn(int highColumn)
$method=|void|setHighColumn|int

%%
%% Q_PROPERTY(int lowColumn READ lowColumn WRITE setLowColumn NOTIFY lowColumnChanged)
%%

$prototypeV2=int lowColumn() const

$prototype=void setLowColumn(int lowColumn)
$method=|void|setLowColumn|int

%%
%% Q_PROPERTY(int closeColumn READ closeColumn WRITE setCloseColumn NOTIFY closeColumnChanged)
%%

$prototypeV2=int closeColumn() const

$prototype=void setCloseColumn(int closeColumn)
$method=|void|setCloseColumn|int

%%
%% Q_PROPERTY(int firstSetRow READ firstSetRow WRITE setFirstSetRow NOTIFY firstSetRowChanged)
%%

$prototypeV2=int firstSetRow() const

$prototype=void setFirstSetRow(int firstSetRow)
$method=|void|setFirstSetRow|int

%%
%% Q_PROPERTY(int lastSetRow READ lastSetRow WRITE setLastSetRow NOTIFY lastSetRowChanged)
%%

$prototypeV2=int lastSetRow() const

$prototype=void setLastSetRow(int lastSetRow)
$method=|void|setLastSetRow|int

%%
%%
%%

$prototypeV2=Qt::Orientation orientation() const

%%
%% SIGNALS
%%

$prototype=void closeColumnChanged()
$signalMethod=|void|closeColumnChanged|

$prototype=void firstSetRowChanged()
$signalMethod=|void|firstSetRowChanged|

$prototype=void highColumnChanged()
$signalMethod=|void|highColumnChanged|

$prototype=void lastSetRowChanged()
$signalMethod=|void|lastSetRowChanged|

$prototype=void lowColumnChanged()
$signalMethod=|void|lowColumnChanged|

$prototype=void openColumnChanged()
$signalMethod=|void|openColumnChanged|

$prototype=void timestampColumnChanged()
$signalMethod=|void|timestampColumnChanged|

#pragma ENDDUMP
