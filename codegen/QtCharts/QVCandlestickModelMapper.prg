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

$prototype=explicit QVCandlestickModelMapper(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

%% $deleteMethod

%%
%% Q_PROPERTY(int timestampRow READ timestampRow WRITE setTimestampRow NOTIFY timestampRowChanged)
%%

$prototypeV2=int timestampRow() const

$prototypeV2=void setTimestampRow( int timestampRow )

%%
%% Q_PROPERTY(int openRow READ openRow WRITE setOpenRow NOTIFY openRowChanged)
%%

$prototypeV2=int openRow() const

$prototypeV2=void setOpenRow( int openRow )

%%
%% Q_PROPERTY(int highRow READ highRow WRITE setHighRow NOTIFY highRowChanged)
%%

$prototypeV2=int highRow() const

$prototypeV2=void setHighRow( int highRow )

%%
%% Q_PROPERTY(int lowRow READ lowRow WRITE setLowRow NOTIFY lowRowChanged)
%%

$prototypeV2=int lowRow() const

$prototypeV2=void setLowRow( int lowRow )

%%
%% Q_PROPERTY(int closeRow READ closeRow WRITE setCloseRow NOTIFY closeRowChanged)
%%

$prototypeV2=int closeRow() const

$prototypeV2=void setCloseRow( int closeRow )

%%
%% Q_PROPERTY(int firstSetColumn READ firstSetColumn WRITE setFirstSetColumn NOTIFY firstSetColumnChanged)
%%

$prototypeV2=int firstSetColumn() const

$prototypeV2=void setFirstSetColumn( int firstSetColumn )

%%
%% Q_PROPERTY(int lastSetColumn READ lastSetColumn WRITE setLastSetColumn NOTIFY lastSetColumnChanged)
%%

$prototypeV2=int lastSetColumn() const

$prototypeV2=void setLastSetColumn( int lastSetColumn )

%%
%%
%%

$prototypeV2=Qt::Orientation orientation() const

%%
%% SIGNALS
%%

$prototype=void closeRowChanged()
$signalMethod=|void|closeRowChanged|

$prototype=void firstSetColumnChanged()
$signalMethod=|void|firstSetColumnChanged|

$prototype=void highRowChanged()
$signalMethod=|void|highRowChanged|

$prototype=void lastSetColumnChanged()
$signalMethod=|void|lastSetColumnChanged|

$prototype=void lowRowChanged()
$signalMethod=|void|lowRowChanged|

$prototype=void openRowChanged()
$signalMethod=|void|openRowChanged|

$prototype=void timestampRowChanged()
$signalMethod=|void|timestampRowChanged|

#pragma ENDDUMP
