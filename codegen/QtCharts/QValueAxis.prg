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

$prototype=explicit QValueAxis(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=QValueAxis(QValueAxisPrivate &d, QObject *parent = nullptr) [protected]

$prototype=~QValueAxis()
$deleteMethod=

%%
%% Q_PROPERTY(int tickCount READ tickCount WRITE setTickCount NOTIFY tickCountChanged)
%%

$prototypeV2=int tickCount() const

$prototypeV2=void setTickCount( int count )

%%
%% Q_PROPERTY(qreal min READ min WRITE setMin NOTIFY minChanged)
%%

$prototypeV2=qreal min() const

$prototypeV2=void setMin( qreal min )

%%
%% Q_PROPERTY(qreal max READ max WRITE setMax NOTIFY maxChanged)
%%

$prototypeV2=qreal max() const

$prototypeV2=void setMax( qreal max )

%%
%% Q_PROPERTY(QString labelFormat READ labelFormat WRITE setLabelFormat NOTIFY labelFormatChanged)
%%

$prototypeV2=QString labelFormat() const

$prototypeV2=void setLabelFormat( const QString & format )

%%
%% Q_PROPERTY(int minorTickCount READ minorTickCount WRITE setMinorTickCount NOTIFY minorTickCountChanged)
%%

$prototypeV2=int minorTickCount() const

$prototypeV2=void setMinorTickCount( int count )

%%
%%
%%

$prototypeV2=QAbstractAxis::AxisType type() const

$prototypeV2=void setRange( qreal min, qreal max )

$prototypeV2=void applyNiceNumbers()

%%
%% SIGNALS
%%

$prototype=void labelFormatChanged( const QString & format )
$signalMethod=|void|labelFormatChanged|const QString &

$prototype=void maxChanged( qreal max )
$signalMethod=|void|maxChanged|qreal

$prototype=void minChanged( qreal min )
$signalMethod=|void|minChanged|qreal

$prototype=void minorTickCountChanged( int tickCount )
$signalMethod=|void|minorTickCountChanged|int

$prototype=void rangeChanged( qreal min, qreal max )
$signalMethod=|void|rangeChanged|qreal,qreal

$prototype=void tickCountChanged( int tickCount )
$signalMethod=|void|tickCountChanged|int

#pragma ENDDUMP
