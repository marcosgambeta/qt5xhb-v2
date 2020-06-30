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

$prototypeV2=void setBackgroundVisible( bool visible = true )

%%
%% Q_PROPERTY(QColor color READ color WRITE setColor NOTIFY colorChanged)
%%

$prototypeV2=QColor color()

$prototypeV2=void setColor( QColor color )

%%
%% Q_PROPERTY(QColor borderColor READ borderColor WRITE setBorderColor NOTIFY borderColorChanged)
%%

$prototypeV2=QColor borderColor()

$prototypeV2=void setBorderColor( QColor color )

%%
%% Q_PROPERTY(QFont font READ font WRITE setFont NOTIFY fontChanged)
%%

$prototypeV2=QFont font() const

$prototypeV2=void setFont( const QFont & font )

%%
%% Q_PROPERTY(QColor labelColor READ labelColor WRITE setLabelColor NOTIFY labelColorChanged)
%%

$prototypeV2=QColor labelColor() const

$prototypeV2=void setLabelColor( QColor color )

%%
%% Q_PROPERTY(bool reverseMarkers READ reverseMarkers WRITE setReverseMarkers NOTIFY reverseMarkersChanged)
%%

$prototypeV2=bool reverseMarkers()

$prototypeV2=void setReverseMarkers( bool reverseMarkers = true )

%%
%% Q_PROPERTY(bool showToolTips READ showToolTips WRITE setShowToolTips NOTIFY showToolTipsChanged)
%%

$prototypeV2=bool showToolTips() const

$prototypeV2=void setShowToolTips( bool show )

%%
%% Q_PROPERTY(MarkerShape markerShape READ markerShape WRITE setMarkerShape NOTIFY markerShapeChanged)
%%

$prototypeV2=5,9,0|QLegend::MarkerShape markerShape() const

$prototypeV2=5,9,0|void setMarkerShape( QLegend::MarkerShape shape )

%%
%%
%%

$prototypeV2=void paint( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = nullptr )

$prototypeV2=void setBrush( const QBrush & brush )

$prototypeV2=QBrush brush() const

$prototypeV2=void setPen( const QPen & pen )

$prototypeV2=QPen pen() const

$prototypeV2=void setLabelBrush( const QBrush & brush )

$prototypeV2=QBrush labelBrush() const

$prototypeV2=void setAlignment( Qt::Alignment alignment )

$prototypeV2=void detachFromChart()

$prototypeV2=void attachToChart()

$prototypeV2=bool isAttachedToChart()

$prototypeV2=QList <QLegendMarker *> markers( QAbstractSeries * series = nullptr ) const

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
