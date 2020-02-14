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

$prototype=QColor color() const
$method=|QColor|color|

$prototype=void setColor(const QColor &color)
$method=|void|setColor|const QColor &

%%
%% Q_PROPERTY(QColor borderColor READ borderColor WRITE setBorderColor NOTIFY borderColorChanged)
%%

$prototype=QColor borderColor() const
$method=|QColor|borderColor|

$prototype=void setBorderColor(const QColor &color)
$method=|void|setBorderColor|const QColor &

%%
%% Q_PROPERTY(MarkerShape markerShape READ markerShape WRITE setMarkerShape NOTIFY markerShapeChanged)
%%

$prototype=MarkerShape markerShape() const
$method=|QScatterSeries::MarkerShape|markerShape|

$prototype=void setMarkerShape(MarkerShape shape)
$method=|void|setMarkerShape|QScatterSeries::MarkerShape

%%
%% Q_PROPERTY(qreal markerSize READ markerSize WRITE setMarkerSize NOTIFY markerSizeChanged)
%%

$prototype=qreal markerSize() const
$method=|qreal|markerSize|

$prototype=void setMarkerSize(qreal size)
$method=|void|setMarkerSize|qreal

%%
%% Q_PROPERTY(QBrush brush READ brush WRITE setBrush)
%%

$prototype=QBrush brush() const
$method=|QBrush|brush|

$prototype=void setBrush(const QBrush &brush)
$method=|void|setBrush|const QBrush &

%%
%%
%%

$prototype=QAbstractSeries::SeriesType type() const
$method=|QAbstractSeries::SeriesType|type|

$prototype=void setPen(const QPen &pen)
$method=|void|setPen|const QPen &

%%
%% SIGNALS
%%

%% using namespace QtCharts;

$prototype=void borderColorChanged( QColor color )
$signalMethod=|void|borderColorChanged|QColor

$prototype=void colorChanged( QColor color )
$signalMethod=|void|colorChanged|QColor

$prototype=void markerShapeChanged( QScatterSeries::MarkerShape shape )
$signalMethod=|void|markerShapeChanged|QScatterSeries::MarkerShape

$prototype=void markerSizeChanged( qreal size )
$signalMethod=|void|markerSizeChanged|qreal

#pragma ENDDUMP
