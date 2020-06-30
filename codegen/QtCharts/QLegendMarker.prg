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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtCharts;

#include <QtCharts/QAbstractSeries>

$prototype=explicit QLegendMarker(QLegendMarkerPrivate &d, QObject *parent = nullptr) [protected]

$prototype=virtual ~QLegendMarker()
$deleteMethod


%%
%% Q_PROPERTY(QString label READ label WRITE setLabel NOTIFY labelChanged)
%%

$prototypeV2=QString label() const

$prototypeV2=void setLabel( const QString & label )

%%
%% Q_PROPERTY(QBrush labelBrush READ labelBrush WRITE setLabelBrush NOTIFY labelBrushChanged)
%%

$prototypeV2=QBrush labelBrush() const

$prototypeV2=void setLabelBrush( const QBrush & brush )

%%
%% Q_PROPERTY(QFont font READ font WRITE setFont NOTIFY fontChanged)
%%

$prototypeV2=QFont font() const

$prototypeV2=void setFont( const QFont & font )

%%
%% Q_PROPERTY(QPen pen READ pen WRITE setPen NOTIFY penChanged)
%%

$prototypeV2=QPen pen() const

$prototypeV2=void setPen( const QPen & pen )

%%
%% Q_PROPERTY(QBrush brush READ brush WRITE setBrush NOTIFY brushChanged)
%%

$prototypeV2=QBrush brush() const

$prototypeV2=void setBrush( const QBrush & brush )

%%
%% Q_PROPERTY(bool visible READ isVisible WRITE setVisible NOTIFY visibleChanged)
%%

$prototypeV2=bool isVisible() const

$prototypeV2=void setVisible( bool visible )

%%
%% Q_PROPERTY(QLegend::MarkerShape shape READ shape WRITE setShape NOTIFY shapeChanged)
%%

$prototypeV2=5,9,0|QLegend::MarkerShape shape() const

$prototypeV2=5,9,0|void setShape( QLegend::MarkerShape shape )

%%
%%
%%

$prototypeV2=virtual QLegendMarker::LegendMarkerType type() = 0

$prototypeV2=virtual QAbstractSeries * series() = 0

%%
%% SIGNALS
%%

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
