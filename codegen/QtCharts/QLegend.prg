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

$prototype=Qt::Alignment alignment() const
$method=|Qt::Alignment|alignment|

%%
%% Q_PROPERTY(bool backgroundVisible READ isBackgroundVisible WRITE setBackgroundVisible NOTIFY backgroundVisibleChanged)
%%

$prototype=bool isBackgroundVisible() const
$method=|bool|isBackgroundVisible|

$prototype=void setBackgroundVisible(bool visible = true)
$method=|void|setBackgroundVisible|bool=true

%%
%% Q_PROPERTY(QColor color READ color WRITE setColor NOTIFY colorChanged)
%%

$prototype=QColor color()
$method=|QColor|color|

$prototype=void setColor(QColor color)
$method=|void|setColor|QColor

%%
%% Q_PROPERTY(QColor borderColor READ borderColor WRITE setBorderColor NOTIFY borderColorChanged)
%%

$prototype=QColor borderColor()
$method=|QColor|borderColor|

$prototype=void setBorderColor(QColor color)
$method=|void|setBorderColor|QColor

%%
%% Q_PROPERTY(QFont font READ font WRITE setFont NOTIFY fontChanged)
%%

$prototype=QFont font() const
$method=|QFont|font|

$prototype=void setFont(const QFont &font)
$method=|void|setFont|const QFont &

%%
%% Q_PROPERTY(QColor labelColor READ labelColor WRITE setLabelColor NOTIFY labelColorChanged)
%%

$prototype=QColor labelColor() const
$method=|QColor|labelColor|

$prototype=void setLabelColor(QColor color)
$method=|void|setLabelColor|QColor

%%
%% Q_PROPERTY(bool reverseMarkers READ reverseMarkers WRITE setReverseMarkers NOTIFY reverseMarkersChanged)
%%

$prototype=bool reverseMarkers()
$method=|bool|reverseMarkers|

$prototype=void setReverseMarkers(bool reverseMarkers = true)
$method=|void|setReverseMarkers|bool=true

%%
%% Q_PROPERTY(bool showToolTips READ showToolTips WRITE setShowToolTips NOTIFY showToolTipsChanged)
%%

$prototype=bool showToolTips() const
$method=|bool|showToolTips|

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

$prototype=QBrush brush() const
$method=|QBrush|brush|

$prototype=void setPen(const QPen &pen)
$method=|void|setPen|const QPen &

$prototype=QPen pen() const
$method=|QPen|pen|

$prototype=void setLabelBrush(const QBrush &brush)
$method=|void|setLabelBrush|const QBrush &

$prototype=QBrush labelBrush() const
$method=|QBrush|labelBrush|

$prototype=void setAlignment(Qt::Alignment alignment)
$method=|void|setAlignment|Qt::Alignment

$prototype=void detachFromChart()
$method=|void|detachFromChart|

$prototype=void attachToChart()
$method=|void|attachToChart|

$prototype=bool isAttachedToChart()
$method=|bool|isAttachedToChart|

$prototype=QList <QLegendMarker*> markers(QAbstractSeries *series = nullptr) const
$method=|QList<QLegendMarker *>|markers|QAbstractSeries *=nullptr

$prototype=void hideEvent(QHideEvent *event) [protected]

$prototype=void showEvent(QShowEvent *event) [protected]

%%
%% SIGNALS
%%

%% using namespace QtCharts;

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
