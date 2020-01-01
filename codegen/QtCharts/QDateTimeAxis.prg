%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
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

#include <QtCore/QDateTime>

using namespace QtCharts;

$prototype=explicit QDateTimeAxis(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=QDateTimeAxis(QDateTimeAxisPrivate &d, QObject *parent = nullptr) [protected]

$prototype=~QDateTimeAxis()
$deleteMethod

%%
%% Q_PROPERTY(QDateTime min READ min WRITE setMin NOTIFY minChanged)
%%

$prototype=QDateTime min() const
$method=|QDateTime|min|

$prototype=void setMin(QDateTime min)
$method=|void|setMin|QDateTime

%%
%% Q_PROPERTY(QDateTime max READ max WRITE setMax NOTIFY maxChanged)
%%

$prototype=QDateTime max() const
$method=|QDateTime|max|

$prototype=void setMax(QDateTime max)
$method=|void|setMax|QDateTime

%%
%% Q_PROPERTY(QString format READ format WRITE setFormat NOTIFY formatChanged)
%%

$prototype=QString format() const
$method=|QString|format|

$prototype=void setFormat(QString format)
$method=|void|setFormat|QString

%%
%% Q_PROPERTY(int tickCount READ tickCount WRITE setTickCount NOTIFY tickCountChanged)
%%

$prototype=int tickCount() const
$method=|int|tickCount|

$prototype=void setTickCount(int count)
$method=|void|setTickCount|int

%%
%%
%%

$prototype=AxisType type() const
$method=|QAbstractAxis::AxisType|type|

$prototype=void setRange(QDateTime min, QDateTime max)
$method=|void|setRange|QDateTime,QDateTime

%%
%% SIGNALS
%%

%% using namespace QtCharts;

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
