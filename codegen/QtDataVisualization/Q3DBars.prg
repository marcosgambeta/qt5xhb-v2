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

$prototype=void setMultiSeriesUniform(bool uniform)
$method=|void|setMultiSeriesUniform|bool

%%
%% Q_PROPERTY(float barThickness READ barThickness WRITE setBarThickness NOTIFY barThicknessChanged)
%%

$prototypeV2=float barThickness() const

$prototype=void setBarThickness(float thicknessRatio)
$method=|void|setBarThickness|float

%%
%% Q_PROPERTY(QSizeF barSpacing READ barSpacing WRITE setBarSpacing NOTIFY barSpacingChanged)
%%

$prototypeV2=QSizeF barSpacing() const

$prototype=void setBarSpacing(const QSizeF &spacing)
$method=|void|setBarSpacing|const QSizeF &

%%
%% Q_PROPERTY(bool barSpacingRelative READ isBarSpacingRelative WRITE setBarSpacingRelative NOTIFY barSpacingRelativeChanged)
%%

$prototypeV2=bool isBarSpacingRelative() const

$prototype=void setBarSpacingRelative(bool relative)
$method=|void|setBarSpacingRelative|bool

%%
%% Q_PROPERTY(QCategory3DAxis *rowAxis READ rowAxis WRITE setRowAxis NOTIFY rowAxisChanged)
%%

$prototypeV2=QCategory3DAxis * rowAxis() const

$prototype=void setRowAxis(QCategory3DAxis *axis)
$method=|void|setRowAxis|QCategory3DAxis *

%%
%% Q_PROPERTY(QCategory3DAxis *columnAxis READ columnAxis WRITE setColumnAxis NOTIFY columnAxisChanged)
%%

$prototypeV2=QCategory3DAxis * columnAxis() const

$prototype=void setColumnAxis(QCategory3DAxis *axis)
$method=|void|setColumnAxis|QCategory3DAxis *

%%
%% Q_PROPERTY(QValue3DAxis *valueAxis READ valueAxis WRITE setValueAxis NOTIFY valueAxisChanged)
%%

$prototypeV2=QValue3DAxis * valueAxis() const

$prototype=void setValueAxis(QValue3DAxis *axis)
$method=|void|setValueAxis|QValue3DAxis *

%%
%% Q_PROPERTY(QBar3DSeries *primarySeries READ primarySeries WRITE setPrimarySeries NOTIFY primarySeriesChanged)
%%

$prototypeV2=QBar3DSeries * primarySeries() const

$prototype=void setPrimarySeries(QBar3DSeries *series)
$method=|void|setPrimarySeries|QBar3DSeries *

%%
%% Q_PROPERTY(QBar3DSeries *selectedSeries READ selectedSeries NOTIFY selectedSeriesChanged)
%%

$prototypeV2=QBar3DSeries * selectedSeries() const

%%
%% Q_PROPERTY(float floorLevel READ floorLevel WRITE setFloorLevel NOTIFY floorLevelChanged)
%%

$prototypeV2=float floorLevel() const

$prototype=void setFloorLevel(float level)
$method=|void|setFloorLevel|float

%%
%%
%%

$prototype=void addSeries(QBar3DSeries *series)
$method=|void|addSeries|QBar3DSeries *

$prototype=void removeSeries(QBar3DSeries *series)
$method=|void|removeSeries|QBar3DSeries *

$prototype=void insertSeries(int index, QBar3DSeries *series)
$method=|void|insertSeries|int,QBar3DSeries *

$prototype=QList<QBar3DSeries *> seriesList() const
$method=|QList<QBar3DSeries *>|seriesList|

$prototype=void addAxis(QAbstract3DAxis *axis)
$method=|void|addAxis|QAbstract3DAxis *

$prototype=void releaseAxis(QAbstract3DAxis *axis)
$method=|void|releaseAxis|QAbstract3DAxis *

$prototype=QList<QAbstract3DAxis *> axes() const
$method=|QList<QAbstract3DAxis *>|axes|

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
