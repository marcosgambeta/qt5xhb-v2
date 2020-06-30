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

$beginClassFrom=QAbstractAxis

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtCharts;

#include <QtCore/QDateTime>

$prototype=explicit QDateTimeAxis(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=QDateTimeAxis(QDateTimeAxisPrivate &d, QObject *parent = nullptr) [protected]

$prototype=~QDateTimeAxis()
$deleteMethod

%%
%% Q_PROPERTY(QDateTime min READ min WRITE setMin NOTIFY minChanged)
%%

$prototypeV2=QDateTime min() const

$prototypeV2=void setMin( QDateTime min )

%%
%% Q_PROPERTY(QDateTime max READ max WRITE setMax NOTIFY maxChanged)
%%

$prototypeV2=QDateTime max() const

$prototypeV2=void setMax( QDateTime max )

%%
%% Q_PROPERTY(QString format READ format WRITE setFormat NOTIFY formatChanged)
%%

$prototypeV2=QString format() const

$prototypeV2=void setFormat( QString format )

%%
%% Q_PROPERTY(int tickCount READ tickCount WRITE setTickCount NOTIFY tickCountChanged)
%%

$prototypeV2=int tickCount() const

$prototypeV2=void setTickCount( int count )

%%
%%
%%

$prototypeV2=QAbstractAxis::AxisType type() const

$prototypeV2=void setRange( QDateTime min, QDateTime max )

%%
%% SIGNALS
%%

$prototype=void formatChanged( QString format )
$signalMethod=|void|formatChanged|QString

$prototype=void maxChanged( QDateTime max )
$signalMethod=|void|maxChanged|QDateTime

$prototype=void minChanged( QDateTime min )
$signalMethod=|void|minChanged|QDateTime

$prototype=void rangeChanged( QDateTime min, QDateTime max )
$signalMethod=|void|rangeChanged|QDateTime,QDateTime

$prototype=void tickCountChanged( int tick )
$signalMethod=|void|tickCountChanged|int

#pragma ENDDUMP
