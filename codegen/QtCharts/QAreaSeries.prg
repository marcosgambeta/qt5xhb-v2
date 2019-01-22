%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractSeries

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,7,0

#include <QLineSeries>

using namespace QtCharts;

$prototype=explicit QAreaSeries(QObject *parent = nullptr)
$internalConstructor=5,7,0|new1|QObject *=nullptr

$prototype=explicit QAreaSeries(QLineSeries *upperSeries, QLineSeries *lowerSeries = nullptr)
$internalConstructor=5,7,0|new2|QLineSeries *,QLineSeries *=nullptr

//[1]explicit QAreaSeries(QObject *parent = nullptr)
//[2]explicit QAreaSeries(QLineSeries *upperSeries, QLineSeries *lowerSeries = nullptr)

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
$deleteMethod=5,7,0

%%
%% Q_PROPERTY(QLineSeries *upperSeries READ upperSeries)
%%

$prototype=QLineSeries *upperSeries() const
$method=5,7,0|QLineSeries *|upperSeries|

%%
%% Q_PROPERTY(QLineSeries *lowerSeries READ lowerSeries)
%%

$prototype=QLineSeries *lowerSeries() const
$method=5,7,0|QLineSeries *|lowerSeries|

%%
%% Q_PROPERTY(QColor color READ color WRITE setColor NOTIFY colorChanged)
%%

$prototype=QColor color() const
$method=5,7,0|QColor|color|

$prototype=void setColor(const QColor &color)
$method=5,7,0|void|setColor|const QColor &

%%
%% Q_PROPERTY(QColor borderColor READ borderColor WRITE setBorderColor NOTIFY borderColorChanged)
%%

$prototype=QColor borderColor() const
$method=5,7,0|QColor|borderColor|

$prototype=void setBorderColor(const QColor &color)
$method=5,7,0|void|setBorderColor|const QColor &

%%
%% Q_PROPERTY(QString pointLabelsFormat READ pointLabelsFormat WRITE setPointLabelsFormat NOTIFY pointLabelsFormatChanged)
%%

$prototype=QString pointLabelsFormat() const
$method=5,7,0|QString|pointLabelsFormat|

$prototype=void setPointLabelsFormat(const QString &format)
$method=5,7,0|void|setPointLabelsFormat|const QString &

%%
%% Q_PROPERTY(bool pointLabelsVisible READ pointLabelsVisible WRITE setPointLabelsVisible NOTIFY pointLabelsVisibilityChanged)
%%

$prototype=bool pointLabelsVisible() const
$method=5,7,0|bool|pointLabelsVisible|

$prototype=void setPointLabelsVisible(bool visible = true)
$method=5,7,0|void|setPointLabelsVisible|bool=true

%%
%% Q_PROPERTY(QFont pointLabelsFont READ pointLabelsFont WRITE setPointLabelsFont NOTIFY pointLabelsFontChanged)
%%

$prototype=QFont pointLabelsFont() const
$method=5,7,0|QFont|pointLabelsFont|

$prototype=void setPointLabelsFont(const QFont &font)
$method=5,7,0|void|setPointLabelsFont|const QFont &

%%
%% Q_PROPERTY(QColor pointLabelsColor READ pointLabelsColor WRITE setPointLabelsColor NOTIFY pointLabelsColorChanged)
%%

$prototype=QColor pointLabelsColor() const
$method=5,7,0|QColor|pointLabelsColor|

$prototype=void setPointLabelsColor(const QColor &color)
$method=5,7,0|void|setPointLabelsColor|const QColor &

%%
%% Q_PROPERTY(bool pointLabelsClipping READ pointLabelsClipping WRITE setPointLabelsClipping NOTIFY pointLabelsClippingChanged)
%%

$prototype=bool pointLabelsClipping() const
$method=5,7,0|bool|pointLabelsClipping|

$prototype=void setPointLabelsClipping(bool enabled = true)
$method=5,7,0|void|setPointLabelsClipping|bool=true

%%
%%
%%

$prototype=QAbstractSeries::SeriesType type() const
$method=5,7,0|QAbstractSeries::SeriesType|type|

$prototype=void setUpperSeries(QLineSeries *series)
$method=5,7,0|void|setUpperSeries|QLineSeries *

$prototype=void setLowerSeries(QLineSeries *series)
$method=5,7,0|void|setLowerSeries|QLineSeries *

$prototype=void setPen(const QPen &pen)
$method=5,7,0|void|setPen|const QPen &

$prototype=QPen pen() const
$method=5,7,0|QPen|pen|

$prototype=void setBrush(const QBrush &brush)
$method=5,7,0|void|setBrush|const QBrush &

$prototype=QBrush brush() const
$method=5,7,0|QBrush|brush|

$prototype=void setPointsVisible(bool visible = true)
$method=5,7,0|void|setPointsVisible|bool=true

$prototype=bool pointsVisible() const
$method=5,7,0|bool|pointsVisible|

%%
%% SIGNALS
%%

using namespace QtCharts;

$prototype=void borderColorChanged( QColor color )
$signalMethod=5,7,0|void|borderColorChanged|QColor

$prototype=void clicked( const QPointF & point )
$signalMethod=5,7,0|void|clicked|const QPointF &

$prototype=void colorChanged( QColor color )
$signalMethod=5,7,0|void|colorChanged|QColor

$prototype=void doubleClicked( const QPointF & point )
$signalMethod=5,7,0|void|doubleClicked|const QPointF &

$prototype=void hovered( const QPointF & point, bool state )
$signalMethod=5,7,0|void|hovered|const QPointF &,bool

$prototype=void pointLabelsClippingChanged( bool clipping )
$signalMethod=5,7,0|void|pointLabelsClippingChanged|bool

$prototype=void pointLabelsColorChanged( const QColor & color )
$signalMethod=5,7,0|void|pointLabelsColorChanged|const QColor &

$prototype=void pointLabelsFontChanged( const QFont & font )
$signalMethod=5,7,0|void|pointLabelsFontChanged|const QFont &

$prototype=void pointLabelsFormatChanged( const QString & format )
$signalMethod=5,7,0|void|pointLabelsFormatChanged|const QString &

$prototype=void pointLabelsVisibilityChanged( bool visible )
$signalMethod=5,7,0|void|pointLabelsVisibilityChanged|bool

$prototype=void pressed( const QPointF & point )
$signalMethod=5,7,0|void|pressed|const QPointF &

$prototype=void released( const QPointF & point )
$signalMethod=5,7,0|void|released|const QPointF &

$prototype=void selected()
$signalMethod=5,7,0|void|selected|

#pragma ENDDUMP
