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

$prototype=explicit QLogValueAxis(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=QLogValueAxis(QLogValueAxisPrivate &d, QObject *parent = nullptr) [protected]

$prototype=~QLogValueAxis()
$deleteMethod

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
%% Q_PROPERTY(qreal base READ base WRITE setBase NOTIFY baseChanged)
%%

$prototypeV2=qreal base() const

$prototypeV2=void setBase( qreal base )

%%
%% Q_PROPERTY(int tickCount READ tickCount NOTIFY tickCountChanged)
%%

$prototypeV2=5,9,0|int tickCount() const

%%
%% Q_PROPERTY(int minorTickCount READ minorTickCount WRITE setMinorTickCount NOTIFY minorTickCountChanged)
%%

$prototypeV2=5,9,0|int minorTickCount() const

$prototypeV2=5,9,0|void setMinorTickCount( int minorTickCount )

%%
%%
%%

$prototypeV2=QAbstractAxis::AxisType type() const

$prototypeV2=void setRange( qreal min, qreal max )

%%
%% SIGNALS
%%

$prototype=void baseChanged( qreal base )
$signalMethod=|void|baseChanged|qreal

$prototype=void labelFormatChanged( const QString & format )
$signalMethod=|void|labelFormatChanged|const QString &

$prototype=void maxChanged( qreal max )
$signalMethod=|void|maxChanged|qreal

$prototype=void minChanged( qreal min )
$signalMethod=|void|minChanged|qreal

$prototype=void minorTickCountChanged( int minorTickCount )
$signalMethod=5,9,0|void|minorTickCountChanged|int

$prototype=void rangeChanged( qreal min, qreal max )
$signalMethod=|void|rangeChanged|qreal,qreal

$prototype=void tickCountChanged( int tickCount )
$signalMethod=5,9,0|void|tickCountChanged|int

#pragma ENDDUMP
