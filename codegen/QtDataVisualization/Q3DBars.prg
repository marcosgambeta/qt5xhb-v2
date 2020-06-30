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

$prototype=explicit Q3DBars(const QSurfaceFormat *format = nullptr, QWindow *parent = nullptr)
$constructor=|new|const QSurfaceFormat *=nullptr,QWindow *=nullptr

$prototype=virtual ~Q3DBars()
$deleteMethod

%%
%% Q_PROPERTY(bool multiSeriesUniform READ isMultiSeriesUniform WRITE setMultiSeriesUniform NOTIFY multiSeriesUniformChanged)
%%

$prototypeV2=bool isMultiSeriesUniform() const

$prototypeV2=void setMultiSeriesUniform( bool uniform )

%%
%% Q_PROPERTY(float barThickness READ barThickness WRITE setBarThickness NOTIFY barThicknessChanged)
%%

$prototypeV2=float barThickness() const

$prototypeV2=void setBarThickness( float thicknessRatio )

%%
%% Q_PROPERTY(QSizeF barSpacing READ barSpacing WRITE setBarSpacing NOTIFY barSpacingChanged)
%%

$prototypeV2=QSizeF barSpacing() const

$prototypeV2=void setBarSpacing( const QSizeF & spacing )

%%
%% Q_PROPERTY(bool barSpacingRelative READ isBarSpacingRelative WRITE setBarSpacingRelative NOTIFY barSpacingRelativeChanged)
%%

$prototypeV2=bool isBarSpacingRelative() const

$prototypeV2=void setBarSpacingRelative( bool relative )

%%
%% Q_PROPERTY(QCategory3DAxis *rowAxis READ rowAxis WRITE setRowAxis NOTIFY rowAxisChanged)
%%

$prototypeV2=QCategory3DAxis * rowAxis() const

$prototypeV2=void setRowAxis( QCategory3DAxis * axis )

%%
%% Q_PROPERTY(QCategory3DAxis *columnAxis READ columnAxis WRITE setColumnAxis NOTIFY columnAxisChanged)
%%

$prototypeV2=QCategory3DAxis * columnAxis() const

$prototypeV2=void setColumnAxis( QCategory3DAxis * axis )

%%
%% Q_PROPERTY(QValue3DAxis *valueAxis READ valueAxis WRITE setValueAxis NOTIFY valueAxisChanged)
%%

$prototypeV2=QValue3DAxis * valueAxis() const

$prototypeV2=void setValueAxis( QValue3DAxis * axis )

%%
%% Q_PROPERTY(QBar3DSeries *primarySeries READ primarySeries WRITE setPrimarySeries NOTIFY primarySeriesChanged)
%%

$prototypeV2=QBar3DSeries * primarySeries() const

$prototypeV2=void setPrimarySeries( QBar3DSeries * series )

%%
%% Q_PROPERTY(QBar3DSeries *selectedSeries READ selectedSeries NOTIFY selectedSeriesChanged)
%%

$prototypeV2=QBar3DSeries * selectedSeries() const

%%
%% Q_PROPERTY(float floorLevel READ floorLevel WRITE setFloorLevel NOTIFY floorLevelChanged)
%%

$prototypeV2=float floorLevel() const

$prototypeV2=void setFloorLevel( float level )

%%
%%
%%

$prototypeV2=void addSeries( QBar3DSeries * series )

$prototypeV2=void removeSeries( QBar3DSeries * series )

$prototypeV2=void insertSeries( int index, QBar3DSeries * series )

$prototypeV2=QList<QBar3DSeries *> seriesList() const

$prototypeV2=void addAxis( QAbstract3DAxis * axis )

$prototypeV2=void releaseAxis( QAbstract3DAxis * axis )

$prototypeV2=QList<QAbstract3DAxis *> axes() const

%%
%% SIGNALS
%%

$prototype=void multiSeriesUniformChanged( bool uniform )
$signalMethod=|void|multiSeriesUniformChanged|bool

$prototype=void barThicknessChanged( float thicknessRatio )
$signalMethod=|void|barThicknessChanged|float

$prototype=void barSpacingChanged( const QSizeF & spacing )
$signalMethod=|void|barSpacingChanged|const QSizeF &

$prototype=void barSpacingRelativeChanged( bool relative )
$signalMethod=|void|barSpacingRelativeChanged|bool

$prototype=void rowAxisChanged( QCategory3DAxis * axis )
$signalMethod=|void|rowAxisChanged|QCategory3DAxis *

$prototype=void columnAxisChanged( QCategory3DAxis * axis )
$signalMethod=|void|columnAxisChanged|QCategory3DAxis *

$prototype=void valueAxisChanged( QValue3DAxis * axis )
$signalMethod=|void|valueAxisChanged|QValue3DAxis *

$prototype=void primarySeriesChanged( QBar3DSeries * series )
$signalMethod=|void|primarySeriesChanged|QBar3DSeries *

$prototype=void selectedSeriesChanged( QBar3DSeries * series )
$signalMethod=|void|selectedSeriesChanged|QBar3DSeries *

$prototype=void floorLevelChanged( float level )
$signalMethod=|void|floorLevelChanged|float

#pragma ENDDUMP
