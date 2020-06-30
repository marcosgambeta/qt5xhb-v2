%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization
$added=5,7,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstract3DGraph

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit Q3DScatter(const QSurfaceFormat *format = nullptr, QWindow *parent = nullptr)
$constructor=|new|const QSurfaceFormat *=nullptr,QWindow *=nullptr

$prototype=virtual ~Q3DScatter()
$deleteMethod

%%
%% Q_PROPERTY(QValue3DAxis *axisX READ axisX WRITE setAxisX NOTIFY axisXChanged)
%%

$prototypeV2=QValue3DAxis * axisX() const

$prototypeV2=void setAxisX( QValue3DAxis * axis )

%%
%% Q_PROPERTY(QValue3DAxis *axisY READ axisY WRITE setAxisY NOTIFY axisYChanged)
%%

$prototypeV2=QValue3DAxis * axisY() const

$prototypeV2=void setAxisY( QValue3DAxis * axis )

%%
%% Q_PROPERTY(QValue3DAxis *axisZ READ axisZ WRITE setAxisZ NOTIFY axisZChanged)
%%

$prototypeV2=QValue3DAxis * axisZ() const

$prototypeV2=void setAxisZ( QValue3DAxis * axis )

%%
%% Q_PROPERTY(QScatter3DSeries *selectedSeries READ selectedSeries NOTIFY selectedSeriesChanged)
%%

$prototypeV2=QScatter3DSeries * selectedSeries() const

%%
%%
%%

$prototypeV2=void addSeries( QScatter3DSeries * series )

$prototypeV2=void removeSeries( QScatter3DSeries * series )

$prototypeV2=QList<QScatter3DSeries *> seriesList() const

$prototypeV2=void addAxis( QValue3DAxis * axis )

$prototypeV2=void releaseAxis( QValue3DAxis * axis )

$prototypeV2=QList<QValue3DAxis *> axes() const

%%
%% SIGNALS
%%

$prototype=void axisXChanged( QValue3DAxis * axis )
$signalMethod=|void|axisXChanged|QValue3DAxis *

$prototype=void axisYChanged( QValue3DAxis * axis )
$signalMethod=|void|axisYChanged|QValue3DAxis *

$prototype=void axisZChanged( QValue3DAxis * axis )
$signalMethod=|void|axisZChanged|QValue3DAxis *

$prototype=void selectedSeriesChanged( QScatter3DSeries * series )
$signalMethod=|void|selectedSeriesChanged|QScatter3DSeries *

#pragma ENDDUMP
