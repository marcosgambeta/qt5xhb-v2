%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts
$added=5,7,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCharts/QAbstractSeries>

using namespace QtCharts;

$prototype=explicit QLegendMarker(QLegendMarkerPrivate &d, QObject *parent = nullptr) [protected]

$prototype=virtual ~QLegendMarker()
$deleteMethod


%%
%% Q_PROPERTY(QString label READ label WRITE setLabel NOTIFY labelChanged)
%%

$prototype=QString label() const
$method=|QString|label|

$prototype=void setLabel(const QString &label)
$method=|void|setLabel|const QString &

%%
%% Q_PROPERTY(QBrush labelBrush READ labelBrush WRITE setLabelBrush NOTIFY labelBrushChanged)
%%

$prototype=QBrush labelBrush() const
$method=|QBrush|labelBrush|

$prototype=void setLabelBrush(const QBrush &brush)
$method=|void|setLabelBrush|const QBrush &

%%
%% Q_PROPERTY(QFont font READ font WRITE setFont NOTIFY fontChanged)
%%

$prototype=QFont font() const
$method=|QFont|font|

$prototype=void setFont(const QFont &font)
$method=|void|setFont|const QFont &

%%
%% Q_PROPERTY(QPen pen READ pen WRITE setPen NOTIFY penChanged)
%%

$prototype=QPen pen() const
$method=|QPen|pen|

$prototype=void setPen(const QPen &pen)
$method=|void|setPen|const QPen &

%%
%% Q_PROPERTY(QBrush brush READ brush WRITE setBrush NOTIFY brushChanged)
%%

$prototype=QBrush brush() const
$method=|QBrush|brush|

$prototype=void setBrush(const QBrush &brush)
$method=|void|setBrush|const QBrush &

%%
%% Q_PROPERTY(bool visible READ isVisible WRITE setVisible NOTIFY visibleChanged)
%%

$prototype=bool isVisible() const
$method=|bool|isVisible|

$prototype=void setVisible(bool visible)
$method=|void|setVisible|bool

%%
%% Q_PROPERTY(QLegend::MarkerShape shape READ shape WRITE setShape NOTIFY shapeChanged)
%%

$prototype=QLegend::MarkerShape shape() const
$method=5,9,0|QLegend::MarkerShape|shape|

$prototype=void setShape(QLegend::MarkerShape shape)
$method=5,9,0|void|setShape|QLegend::MarkerShape

%%
%%
%%

$prototype=virtual LegendMarkerType type() = 0
$virtualMethod=|QLegendMarker::LegendMarkerType|type|

$prototype=virtual QAbstractSeries* series() = 0
$virtualMethod=|QAbstractSeries *|series|

%%
%% SIGNALS
%%

%% using namespace QtCharts;

$prototype=void brushChanged()
$signalMethod=|void|brushChanged|

$prototype=void clicked()
$signalMethod=|void|clicked|

$prototype=void fontChanged()
$signalMethod=|void|fontChanged|

$prototype=void hovered( bool status )
$signalMethod=|void|hovered|bool

$prototype=void labelBrushChanged()
$signalMethod=|void|labelBrushChanged|

$prototype=void labelChanged()
$signalMethod=|void|labelChanged|

$prototype=void penChanged()
$signalMethod=|void|penChanged|

$prototype=void shapeChanged()
$signalMethod=5,9,0|void|shapeChanged|

$prototype=void visibleChanged()
$signalMethod=|void|visibleChanged|

#pragma ENDDUMP
