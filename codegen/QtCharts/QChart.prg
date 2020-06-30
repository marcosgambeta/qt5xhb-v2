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

$prototypeV2=void setTheme( QChart::ChartTheme theme )

%%
%% Q_PROPERTY(QString title READ title WRITE setTitle)
%%

$prototypeV2=QString title() const

%%
%% Q_PROPERTY(bool backgroundVisible READ isBackgroundVisible WRITE setBackgroundVisible)
%%

$prototypeV2=bool isBackgroundVisible() const

$prototypeV2=void setBackgroundVisible( bool visible = true )

%%
%% Q_PROPERTY(bool dropShadowEnabled READ isDropShadowEnabled WRITE setDropShadowEnabled)
%%

$prototypeV2=bool isDropShadowEnabled() const

$prototypeV2=void setDropShadowEnabled( bool enabled = true )

%%
%% Q_PROPERTY(qreal backgroundRoundness READ backgroundRoundness WRITE setBackgroundRoundness)
%%

$prototypeV2=qreal backgroundRoundness() const

$prototypeV2=void setBackgroundRoundness( qreal diameter )

%%
%% Q_PROPERTY(QChart::AnimationOptions animationOptions READ animationOptions WRITE setAnimationOptions)
%%

$prototypeV2=QChart::AnimationOptions animationOptions() const

$prototypeV2=void setAnimationOptions( QChart::AnimationOptions options )

%%
%% Q_PROPERTY(int animationDuration READ animationDuration WRITE setAnimationDuration)
%%

$prototypeV2=int animationDuration() const

$prototypeV2=void setAnimationDuration( int msecs )

%%
%% Q_PROPERTY(QEasingCurve animationEasingCurve READ animationEasingCurve WRITE setAnimationEasingCurve)
%%

$prototypeV2=QEasingCurve animationEasingCurve() const

$prototypeV2=void setAnimationEasingCurve( const QEasingCurve & curve )

%%
%% Q_PROPERTY(QMargins margins READ margins WRITE setMargins)
%%

$prototypeV2=QMargins margins() const

$prototypeV2=void setMargins( const QMargins & margins )

%%
%% Q_PROPERTY(QRectF plotArea READ plotArea NOTIFY plotAreaChanged)
%%

$prototypeV2=QRectF plotArea() const

%%
%% Q_PROPERTY(bool plotAreaBackgroundVisible READ isPlotAreaBackgroundVisible WRITE setPlotAreaBackgroundVisible)
%%

$prototypeV2=bool isPlotAreaBackgroundVisible() const

$prototypeV2=void setPlotAreaBackgroundVisible( bool visible = true )

%%
%% Q_PROPERTY(bool localizeNumbers READ localizeNumbers WRITE setLocalizeNumbers)
%%

$prototypeV2=bool localizeNumbers() const

$prototypeV2=void setLocalizeNumbers( bool localize )

%%
%% Q_PROPERTY(QLocale locale READ locale WRITE setLocale)
%%

$prototypeV2=QLocale locale() const

$prototypeV2=void setLocale( const QLocale & locale )

%%
%% Q_PROPERTY(QChart::ChartType chartType READ chartType)
%%

$prototypeV2=QChart::ChartType chartType() const

%%
%%
%%

$prototypeV2=void addSeries( QAbstractSeries * series )

$prototypeV2=void removeSeries( QAbstractSeries * series )

$prototypeV2=void removeAllSeries()

$prototypeV2=QList<QAbstractSeries *> series() const

$prototypeV2=void setAxisX( QAbstractAxis * axis, QAbstractSeries * series = nullptr )
%% DEPRECATED

$prototypeV2=void setAxisY( QAbstractAxis * axis, QAbstractSeries * series = nullptr )
%% DEPRECATED

$prototypeV2=QAbstractAxis * axisX( QAbstractSeries * series = nullptr ) const
%% DEPRECATED

$prototypeV2=QAbstractAxis * axisY( QAbstractSeries * series = nullptr ) const
%% DEPRECATED

$prototypeV2=void addAxis( QAbstractAxis * axis, Qt::Alignment alignment )

$prototypeV2=void removeAxis( QAbstractAxis * axis )

$prototypeV2=QList<QAbstractAxis *> axes( Qt::Orientations orientation = Qt::Horizontal | Qt::Vertical, QAbstractSeries * series = nullptr ) const

$prototypeV2=void createDefaultAxes()

$prototypeV2=void setTitle( const QString & title )

$prototypeV2=void setTitleFont( const QFont & font )

$prototypeV2=QFont titleFont() const

$prototypeV2=void setTitleBrush( const QBrush & brush )

$prototypeV2=QBrush titleBrush() const

$prototypeV2=void setBackgroundBrush( const QBrush & brush )

$prototypeV2=QBrush backgroundBrush() const

$prototypeV2=void setBackgroundPen( const QPen & pen )

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

$prototypeV2=void zoom( qreal factor )

$prototypeV2=void zoomReset()

$prototypeV2=bool isZoomed()

$prototypeV2=void scroll( qreal dx, qreal dy )

$prototypeV2=QLegend * legend() const

$prototypeV2=void setPlotAreaBackgroundBrush( const QBrush & brush )

$prototypeV2=QBrush plotAreaBackgroundBrush() const

$prototypeV2=void setPlotAreaBackgroundPen( const QPen & pen )

$prototypeV2=QPen plotAreaBackgroundPen() const

$prototypeV2=QPointF mapToValue( const QPointF & position, QAbstractSeries * series = nullptr )

$prototypeV2=QPointF mapToPosition( const QPointF & value, QAbstractSeries * series = nullptr )

%%
%% SIGNALS
%%

$prototype=void plotAreaChanged( const QRectF & plotArea )
$signalMethod=|void|plotAreaChanged|const QRectF &

#pragma ENDDUMP
