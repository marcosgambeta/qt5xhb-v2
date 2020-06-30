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

$beginClassFrom=QXYSeries

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtCharts;

$prototype=explicit QScatterSeries(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=~QScatterSeries()
$deleteMethod

%%
%% Q_PROPERTY(QColor color READ color WRITE setColor NOTIFY colorChanged)
%%

$prototypeV2=QColor color() const

$prototypeV2=void setColor( const QColor & color )

%%
%% Q_PROPERTY(QColor borderColor READ borderColor WRITE setBorderColor NOTIFY borderColorChanged)
%%

$prototypeV2=QColor borderColor() const

$prototypeV2=void setBorderColor( const QColor & color )

%%
%% Q_PROPERTY(MarkerShape markerShape READ markerShape WRITE setMarkerShape NOTIFY markerShapeChanged)
%%

$prototypeV2=QScatterSeries::MarkerShape markerShape() const

$prototypeV2=void setMarkerShape( QScatterSeries::MarkerShape shape )

%%
%% Q_PROPERTY(qreal markerSize READ markerSize WRITE setMarkerSize NOTIFY markerSizeChanged)
%%

$prototypeV2=qreal markerSize() const

$prototypeV2=void setMarkerSize( qreal size )

%%
%% Q_PROPERTY(QBrush brush READ brush WRITE setBrush)
%%

$prototypeV2=QBrush brush() const

$prototypeV2=void setBrush( const QBrush & brush )

%%
%%
%%

$prototypeV2=QAbstractSeries::SeriesType type() const

$prototypeV2=void setPen( const QPen & pen )

%%
%% SIGNALS
%%

$prototype=void borderColorChanged( QColor color )
$signalMethod=|void|borderColorChanged|QColor

$prototype=void colorChanged( QColor color )
$signalMethod=|void|colorChanged|QColor

$prototype=void markerShapeChanged( QScatterSeries::MarkerShape shape )
$signalMethod=|void|markerShapeChanged|QScatterSeries::MarkerShape

$prototype=void markerSizeChanged( qreal size )
$signalMethod=|void|markerSizeChanged|qreal

#pragma ENDDUMP
