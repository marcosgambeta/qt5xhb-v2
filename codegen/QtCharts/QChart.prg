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

#include <QtCore/QEasingCurve>
#include <QtCore/QLocale>

$prototype=explicit QChart(QGraphicsItem *parent = nullptr, Qt::WindowFlags wFlags = Qt::WindowFlags())
$constructor=|new|QGraphicsItem *=nullptr,Qt::WindowFlags=Qt::WindowFlags()

$prototype=explicit QChart(QChart::ChartType type, QGraphicsItem *parent, Qt::WindowFlags wFlags) [protected]

$prototype=~QChart()
$deleteMethod

%%
%% Q_PROPERTY(QChart::ChartTheme theme READ theme WRITE setTheme)
%%

$prototypeV2=QChart::ChartTheme theme() const

$prototype=void setTheme(QChart::ChartTheme theme)
$method=|void|setTheme|QChart::ChartTheme

%%
%% Q_PROPERTY(QString title READ title WRITE setTitle)
%%

$prototypeV2=QString title() const

%%
%% Q_PROPERTY(bool backgroundVisible READ isBackgroundVisible WRITE setBackgroundVisible)
%%

$prototypeV2=bool isBackgroundVisible() const

$prototype=void setBackgroundVisible(bool visible = true)
$method=|void|setBackgroundVisible|bool=true

%%
%% Q_PROPERTY(bool dropShadowEnabled READ isDropShadowEnabled WRITE setDropShadowEnabled)
%%

$prototypeV2=bool isDropShadowEnabled() const

$prototype=void setDropShadowEnabled(bool enabled = true)
$method=|void|setDropShadowEnabled|bool=true

%%
%% Q_PROPERTY(qreal backgroundRoundness READ backgroundRoundness WRITE setBackgroundRoundness)
%%

$prototypeV2=qreal backgroundRoundness() const

$prototype=void setBackgroundRoundness(qreal diameter)
$method=|void|setBackgroundRoundness|qreal

%%
%% Q_PROPERTY(QChart::AnimationOptions animationOptions READ animationOptions WRITE setAnimationOptions)
%%

$prototypeV2=QChart::AnimationOptions animationOptions() const

$prototype=void setAnimationOptions(AnimationOptions options)
$method=|void|setAnimationOptions|QChart::AnimationOptions

%%
%% Q_PROPERTY(int animationDuration READ animationDuration WRITE setAnimationDuration)
%%

$prototypeV2=int animationDuration() const

$prototype=void setAnimationDuration(int msecs)
$method=|void|setAnimationDuration|int

%%
%% Q_PROPERTY(QEasingCurve animationEasingCurve READ animationEasingCurve WRITE setAnimationEasingCurve)
%%

$prototypeV2=QEasingCurve animationEasingCurve() const

$prototype=void setAnimationEasingCurve(const QEasingCurve &curve)
$method=|void|setAnimationEasingCurve|const QEasingCurve &

%%
%% Q_PROPERTY(QMargins margins READ margins WRITE setMargins)
%%

$prototypeV2=QMargins margins() const

$prototype=void setMargins(const QMargins &margins)
$method=|void|setMargins|const QMargins &

%%
%% Q_PROPERTY(QRectF plotArea READ plotArea NOTIFY plotAreaChanged)
%%

$prototypeV2=QRectF plotArea() const

%%
%% Q_PROPERTY(bool plotAreaBackgroundVisible READ isPlotAreaBackgroundVisible WRITE setPlotAreaBackgroundVisible)
%%

$prototypeV2=bool isPlotAreaBackgroundVisible() const

$prototype=void setPlotAreaBackgroundVisible(bool visible = true)
$method=|void|setPlotAreaBackgroundVisible|bool=true

%%
%% Q_PROPERTY(bool localizeNumbers READ localizeNumbers WRITE setLocalizeNumbers)
%%

$prototypeV2=bool localizeNumbers() const

$prototype=void setLocalizeNumbers(bool localize)
$method=|void|setLocalizeNumbers|bool

%%
%% Q_PROPERTY(QLocale locale READ locale WRITE setLocale)
%%

$prototypeV2=QLocale locale() const

$prototype=void setLocale(const QLocale &locale)
$method=|void|setLocale|const QLocale &

%%
%% Q_PROPERTY(QChart::ChartType chartType READ chartType)
%%

$prototypeV2=QChart::ChartType chartType() const

%%
%%
%%

$prototype=void addSeries(QAbstractSeries *series)
$method=|void|addSeries|QAbstractSeries *

$prototype=void removeSeries(QAbstractSeries *series)
$method=|void|removeSeries|QAbstractSeries *

$prototypeV2=void removeAllSeries()

$prototype=QList<QAbstractSeries *> series() const
$method=|QList<QAbstractSeries *>|series|

$prototype=void setAxisX(QAbstractAxis *axis, QAbstractSeries *series = nullptr) // DEPRECATED
$method=|void|setAxisX|QAbstractAxis *,QAbstractSeries *=nullptr

$prototype=void setAxisY(QAbstractAxis *axis, QAbstractSeries *series = nullptr) // DEPRECATED
$method=|void|setAxisY|QAbstractAxis *,QAbstractSeries *=nullptr

$prototype=QAbstractAxis *axisX(QAbstractSeries *series = nullptr) const         // DEPRECATED
$method=|QAbstractAxis *|axisX|QAbstractSeries *=nullptr

$prototype=QAbstractAxis *axisY(QAbstractSeries *series = nullptr) const         // DEPRECATED
$method=|QAbstractAxis *|axisY|QAbstractSeries *=nullptr

$prototype=void addAxis(QAbstractAxis *axis, Qt::Alignment alignment)
$method=|void|addAxis|QAbstractAxis *,Qt::Alignment

$prototype=void removeAxis(QAbstractAxis *axis)
$method=|void|removeAxis|QAbstractAxis *

$prototype=QList<QAbstractAxis*> axes(Qt::Orientations orientation = Qt::Horizontal|Qt::Vertical, QAbstractSeries *series = nullptr) const
$method=|QList<QAbstractAxis *>|axes|Qt::Orientations=Qt::Horizontal OR Qt::Vertical,QAbstractSeries *=nullptr

$prototypeV2=void createDefaultAxes()

$prototype=void setTitle(const QString &title)
$method=|void|setTitle|const QString &

$prototype=void setTitleFont(const QFont &font)
$method=|void|setTitleFont|const QFont &

$prototypeV2=QFont titleFont() const

$prototype=void setTitleBrush(const QBrush &brush)
$method=|void|setTitleBrush|const QBrush &

$prototypeV2=QBrush titleBrush() const

$prototype=void setBackgroundBrush(const QBrush &brush)
$method=|void|setBackgroundBrush|const QBrush &

$prototypeV2=QBrush backgroundBrush() const

$prototype=void setBackgroundPen(const QPen &pen)
$method=|void|setBackgroundPen|const QPen &

$prototypeV2=QPen backgroundPen() const

$prototype=void zoomIn()
$internalMethod=|void|zoomIn,zoomIn1|

$prototype=void zoomIn(const QRectF &rect)
$internalMethod=|void|zoomIn,zoomIn2|const QRectF &

/*
[1]void zoomIn()
[2]void zoomIn(const QRectF &rect)
*/

HB_FUNC_STATIC( QCHART_ZOOMIN )
{
  if( ISNUMPAR(0) )
  {
    QChart_zoomIn1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QChart_zoomIn2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=zoomIn

$prototypeV2=void zoomOut()

$prototype=void zoom(qreal factor)
$method=|void|zoom|qreal

$prototypeV2=void zoomReset()

$prototypeV2=bool isZoomed()

$prototype=void scroll(qreal dx, qreal dy)
$method=|void|scroll|qreal,qreal

$prototypeV2=QLegend * legend() const

$prototype=void setPlotAreaBackgroundBrush(const QBrush &brush)
$method=|void|setPlotAreaBackgroundBrush|const QBrush &

$prototypeV2=QBrush plotAreaBackgroundBrush() const

$prototype=void setPlotAreaBackgroundPen(const QPen &pen)
$method=|void|setPlotAreaBackgroundPen|const QPen &

$prototypeV2=QPen plotAreaBackgroundPen() const

$prototype=QPointF mapToValue(const QPointF &position, QAbstractSeries *series = nullptr)
$method=|QPointF|mapToValue|const QPointF &,QAbstractSeries *=nullptr

$prototype=QPointF mapToPosition(const QPointF &value, QAbstractSeries *series = nullptr)
$method=|QPointF|mapToPosition|const QPointF &,QAbstractSeries *=nullptr

%%
%% SIGNALS
%%

$prototype=void plotAreaChanged( const QRectF & plotArea )
$signalMethod=|void|plotAreaChanged|const QRectF &

#pragma ENDDUMP
