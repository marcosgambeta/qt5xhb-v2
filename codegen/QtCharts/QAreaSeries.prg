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

$beginClassFrom=QAbstractSeries

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCharts/QLineSeries>

using namespace QtCharts;

$prototype=explicit QAreaSeries(QObject *parent = nullptr)
$internalConstructor=|new1|QObject *=nullptr

$prototype=explicit QAreaSeries(QLineSeries *upperSeries, QLineSeries *lowerSeries = nullptr)
$internalConstructor=|new2|QLineSeries *,QLineSeries *=nullptr

/*
[1]explicit QAreaSeries(QObject *parent = nullptr)
[2]explicit QAreaSeries(QLineSeries *upperSeries, QLineSeries *lowerSeries = nullptr)
*/

HB_FUNC_STATIC( QAREASERIES_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QAreaSeries_new1();
  }
  else if( ISBETWEEN(1,2) && ISQLINESERIES(1) && (ISQLINESERIES(2)||ISNIL(2)) )
  {
    QAreaSeries_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QAreaSeries()
$deleteMethod

%%
%% Q_PROPERTY(QLineSeries *upperSeries READ upperSeries)
%%

$prototype=QLineSeries *upperSeries() const
$method=|QLineSeries *|upperSeries|

%%
%% Q_PROPERTY(QLineSeries *lowerSeries READ lowerSeries)
%%

$prototype=QLineSeries *lowerSeries() const
$method=|QLineSeries *|lowerSeries|

%%
%% Q_PROPERTY(QColor color READ color WRITE setColor NOTIFY colorChanged)
%%

$prototype=QColor color() const
$method=|QColor|color|

$prototype=void setColor(const QColor &color)
$method=|void|setColor|const QColor &

%%
%% Q_PROPERTY(QColor borderColor READ borderColor WRITE setBorderColor NOTIFY borderColorChanged)
%%

$prototype=QColor borderColor() const
$method=|QColor|borderColor|

$prototype=void setBorderColor(const QColor &color)
$method=|void|setBorderColor|const QColor &

%%
%% Q_PROPERTY(QString pointLabelsFormat READ pointLabelsFormat WRITE setPointLabelsFormat NOTIFY pointLabelsFormatChanged)
%%

$prototype=QString pointLabelsFormat() const
$method=|QString|pointLabelsFormat|

$prototype=void setPointLabelsFormat(const QString &format)
$method=|void|setPointLabelsFormat|const QString &

%%
%% Q_PROPERTY(bool pointLabelsVisible READ pointLabelsVisible WRITE setPointLabelsVisible NOTIFY pointLabelsVisibilityChanged)
%%

$prototype=bool pointLabelsVisible() const
$method=|bool|pointLabelsVisible|

$prototype=void setPointLabelsVisible(bool visible = true)
$method=|void|setPointLabelsVisible|bool=true

%%
%% Q_PROPERTY(QFont pointLabelsFont READ pointLabelsFont WRITE setPointLabelsFont NOTIFY pointLabelsFontChanged)
%%

$prototype=QFont pointLabelsFont() const
$method=|QFont|pointLabelsFont|

$prototype=void setPointLabelsFont(const QFont &font)
$method=|void|setPointLabelsFont|const QFont &

%%
%% Q_PROPERTY(QColor pointLabelsColor READ pointLabelsColor WRITE setPointLabelsColor NOTIFY pointLabelsColorChanged)
%%

$prototype=QColor pointLabelsColor() const
$method=|QColor|pointLabelsColor|

$prototype=void setPointLabelsColor(const QColor &color)
$method=|void|setPointLabelsColor|const QColor &

%%
%% Q_PROPERTY(bool pointLabelsClipping READ pointLabelsClipping WRITE setPointLabelsClipping NOTIFY pointLabelsClippingChanged)
%%

$prototype=bool pointLabelsClipping() const
$method=|bool|pointLabelsClipping|

$prototype=void setPointLabelsClipping(bool enabled = true)
$method=|void|setPointLabelsClipping|bool=true

%%
%%
%%

$prototype=QAbstractSeries::SeriesType type() const
$method=|QAbstractSeries::SeriesType|type|

$prototype=void setUpperSeries(QLineSeries *series)
$method=|void|setUpperSeries|QLineSeries *

$prototype=void setLowerSeries(QLineSeries *series)
$method=|void|setLowerSeries|QLineSeries *

$prototype=void setPen(const QPen &pen)
$method=|void|setPen|const QPen &

$prototype=QPen pen() const
$method=|QPen|pen|

$prototype=void setBrush(const QBrush &brush)
$method=|void|setBrush|const QBrush &

$prototype=QBrush brush() const
$method=|QBrush|brush|

$prototype=void setPointsVisible(bool visible = true)
$method=|void|setPointsVisible|bool=true

$prototype=bool pointsVisible() const
$method=|bool|pointsVisible|

%%
%% SIGNALS
%%

%% using namespace QtCharts;

$prototype=void borderColorChanged( QColor color )
$signalMethod=|void|borderColorChanged|QColor

$prototype=void clicked( const QPointF & point )
$signalMethod=|void|clicked|const QPointF &

$prototype=void colorChanged( QColor color )
$signalMethod=|void|colorChanged|QColor

$prototype=void doubleClicked( const QPointF & point )
$signalMethod=|void|doubleClicked|const QPointF &

$prototype=void hovered( const QPointF & point, bool state )
$signalMethod=|void|hovered|const QPointF &,bool

$prototype=void pointLabelsClippingChanged( bool clipping )
$signalMethod=|void|pointLabelsClippingChanged|bool

$prototype=void pointLabelsColorChanged( const QColor & color )
$signalMethod=|void|pointLabelsColorChanged|const QColor &

$prototype=void pointLabelsFontChanged( const QFont & font )
$signalMethod=|void|pointLabelsFontChanged|const QFont &

$prototype=void pointLabelsFormatChanged( const QString & format )
$signalMethod=|void|pointLabelsFormatChanged|const QString &

$prototype=void pointLabelsVisibilityChanged( bool visible )
$signalMethod=|void|pointLabelsVisibilityChanged|bool

$prototype=void pressed( const QPointF & point )
$signalMethod=|void|pressed|const QPointF &

$prototype=void released( const QPointF & point )
$signalMethod=|void|released|const QPointF &

$prototype=void selected()
$signalMethod=|void|selected|

#pragma ENDDUMP
