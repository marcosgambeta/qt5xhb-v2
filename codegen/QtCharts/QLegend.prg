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

$beginClassFrom=QGraphicsWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtCharts;

$prototype=explicit QLegend(QChart *chart) [private]

$prototype=~QLegend()
$deleteMethod

%%
%% Q_PROPERTY(Qt::Alignment alignment READ alignment WRITE setAlignment)
%%

$prototypeV2=Qt::Alignment alignment() const

%%
%% Q_PROPERTY(bool backgroundVisible READ isBackgroundVisible WRITE setBackgroundVisible NOTIFY backgroundVisibleChanged)
%%

$prototypeV2=bool isBackgroundVisible() const

$prototype=void setBackgroundVisible(bool visible = true)
$method=|void|setBackgroundVisible|bool=true

%%
%% Q_PROPERTY(QColor color READ color WRITE setColor NOTIFY colorChanged)
%%

$prototypeV2=QColor color()

$prototype=void setColor(QColor color)
$method=|void|setColor|QColor

%%
%% Q_PROPERTY(QColor borderColor READ borderColor WRITE setBorderColor NOTIFY borderColorChanged)
%%

$prototypeV2=QColor borderColor()

$prototype=void setBorderColor(QColor color)
$method=|void|setBorderColor|QColor

%%
%% Q_PROPERTY(QFont font READ font WRITE setFont NOTIFY fontChanged)
%%

$prototypeV2=QFont font() const

$prototype=void setFont(const QFont &font)
$method=|void|setFont|const QFont &

%%
%% Q_PROPERTY(QColor labelColor READ labelColor WRITE setLabelColor NOTIFY labelColorChanged)
%%

$prototypeV2=QColor labelColor() const

$prototype=void setLabelColor(QColor color)
$method=|void|setLabelColor|QColor

%%
%% Q_PROPERTY(bool reverseMarkers READ reverseMarkers WRITE setReverseMarkers NOTIFY reverseMarkersChanged)
%%

$prototypeV2=bool reverseMarkers()

$prototype=void setReverseMarkers(bool reverseMarkers = true)
$method=|void|setReverseMarkers|bool=true

%%
%% Q_PROPERTY(bool showToolTips READ showToolTips WRITE setShowToolTips NOTIFY showToolTipsChanged)
%%

$prototypeV2=bool showToolTips() const

$prototype=void setShowToolTips(bool show)
$method=|void|setShowToolTips|bool

%%
%% Q_PROPERTY(MarkerShape markerShape READ markerShape WRITE setMarkerShape NOTIFY markerShapeChanged)
%%

$prototype=MarkerShape markerShape() const
$method=5,9,0|QLegend::MarkerShape|markerShape|

$prototype=void setMarkerShape(MarkerShape shape)
$method=5,9,0|void|setMarkerShape|QLegend::MarkerShape

%%
%%
%%

$prototype=void paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget = nullptr)
$method=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *=nullptr

$prototype=void setBrush(const QBrush &brush)
$method=|void|setBrush|const QBrush &

$prototypeV2=QBrush brush() const

$prototype=void setPen(const QPen &pen)
$method=|void|setPen|const QPen &

$prototypeV2=QPen pen() const

$prototype=void setLabelBrush(const QBrush &brush)
$method=|void|setLabelBrush|const QBrush &

$prototypeV2=QBrush labelBrush() const

$prototype=void setAlignment(Qt::Alignment alignment)
$method=|void|setAlignment|Qt::Alignment

$prototypeV2=void detachFromChart()

$prototypeV2=void attachToChart()

$prototypeV2=bool isAttachedToChart()

$prototype=QList <QLegendMarker*> markers(QAbstractSeries *series = nullptr) const
$method=|QList<QLegendMarker *>|markers|QAbstractSeries *=nullptr

$prototype=void hideEvent(QHideEvent *event) [protected]

$prototype=void showEvent(QShowEvent *event) [protected]

%%
%% SIGNALS
%%

$prototype=void backgroundVisibleChanged( bool visible )
$signalMethod=|void|backgroundVisibleChanged|bool

$prototype=void borderColorChanged( QColor color )
$signalMethod=|void|borderColorChanged|QColor

$prototype=void colorChanged( QColor color )
$signalMethod=|void|colorChanged|QColor

$prototype=void fontChanged( QFont font )
$signalMethod=|void|fontChanged|QFont

$prototype=void labelColorChanged( QColor color )
$signalMethod=|void|labelColorChanged|QColor

$prototype=void markerShapeChanged( QLegend::MarkerShape shape )
$signalMethod=5,9,0|void|markerShapeChanged|QLegend::MarkerShape

$prototype=void reverseMarkersChanged( bool reverseMarkers )
$signalMethod=|void|reverseMarkersChanged|bool

$prototype=void showToolTipsChanged( bool showToolTips )
$signalMethod=|void|showToolTipsChanged|bool

#pragma ENDDUMP
