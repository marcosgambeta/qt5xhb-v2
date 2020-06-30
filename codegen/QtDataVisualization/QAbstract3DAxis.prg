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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit QAbstract3DAxis(QAbstract3DAxisPrivate *d, QObject *parent = nullptr) [protected]

$prototype=virtual ~QAbstract3DAxis()
$deleteMethod

%%
%% Q_PROPERTY(QString title READ title WRITE setTitle NOTIFY titleChanged)
%%

$prototypeV2=QString title() const

$prototypeV2=void setTitle( const QString & title )

%%
%% Q_PROPERTY(QStringList labels READ labels WRITE setLabels NOTIFY labelsChanged)
%%

$prototypeV2=QStringList labels() const

$prototypeV2=void setLabels( const QStringList & labels )

%%
%% Q_PROPERTY(AxisOrientation orientation READ orientation NOTIFY orientationChanged)
%%

$prototypeV2=QAbstract3DAxis::AxisOrientation orientation() const

%%
%% Q_PROPERTY(AxisType type READ type CONSTANT)
%%

$prototypeV2=QAbstract3DAxis::AxisType type() const

%%
%% Q_PROPERTY(float min READ min WRITE setMin NOTIFY minChanged)
%%

$prototypeV2=float min() const

$prototypeV2=void setMin( float min )

%%
%% Q_PROPERTY(float max READ max WRITE setMax NOTIFY maxChanged)
%%

$prototypeV2=float max() const

$prototypeV2=void setMax( float max )

%%
%% Q_PROPERTY(bool autoAdjustRange READ isAutoAdjustRange WRITE setAutoAdjustRange NOTIFY autoAdjustRangeChanged)
%%

$prototypeV2=bool isAutoAdjustRange() const

$prototypeV2=void setAutoAdjustRange( bool autoAdjust )

%%
%% Q_PROPERTY(float labelAutoRotation READ labelAutoRotation WRITE setLabelAutoRotation NOTIFY labelAutoRotationChanged REVISION 1)
%%

$prototypeV2=float labelAutoRotation() const

$prototypeV2=void setLabelAutoRotation( float angle )

%%
%% Q_PROPERTY(bool titleVisible READ isTitleVisible WRITE setTitleVisible NOTIFY titleVisibilityChanged REVISION 1)
%%

$prototypeV2=bool isTitleVisible() const

$prototypeV2=void setTitleVisible( bool visible )

%%
%% Q_PROPERTY(bool titleFixed READ isTitleFixed WRITE setTitleFixed NOTIFY titleFixedChanged REVISION 1)
%%

$prototypeV2=bool isTitleFixed() const

$prototypeV2=void setTitleFixed( bool fixed )

%%
%%
%%

$prototypeV2=void setRange( float min, float max )

%%
%% SIGNALS
%%

$prototype=void titleChanged( const QString & newTitle )
$signalMethod=|void|titleChanged|const QString &

$prototype=void labelsChanged()
$signalMethod=|void|labelsChanged|

$prototype=void orientationChanged( QAbstract3DAxis::AxisOrientation orientation )
$signalMethod=|void|orientationChanged|QAbstract3DAxis::AxisOrientation

$prototype=void minChanged( float value )
$signalMethod=|void|minChanged|float

$prototype=void maxChanged( float value )
$signalMethod=|void|maxChanged|float

$prototype=void rangeChanged( float min, float max )
$signalMethod=|void|rangeChanged|float,float

$prototype=void autoAdjustRangeChanged( bool autoAdjust )
$signalMethod=|void|autoAdjustRangeChanged|bool

$prototype=void labelAutoRotationChanged( float angle )
$signalMethod=|void|labelAutoRotationChanged|float

$prototype=void titleVisibilityChanged( bool visible )
$signalMethod=|void|titleVisibilityChanged|bool

$prototype=void titleFixedChanged( bool fixed )
$signalMethod=|void|titleFixedChanged|bool

#pragma ENDDUMP
