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

using namespace QtCharts;

$prototype=explicit QXYSeries(QXYSeriesPrivate &d, QObject *parent = nullptr) [protected]

$prototype=~QXYSeries()
$deleteMethod=5,7,0

%%
%% Q_PROPERTY(bool pointsVisible READ pointsVisible WRITE setPointsVisible)
%%

$prototype=bool pointsVisible() const
$method=5,7,0|bool|pointsVisible|

$prototype=void setPointsVisible(bool visible = true)
$method=5,7,0|void|setPointsVisible|bool=true

%%
%% Q_PROPERTY(QColor color READ color WRITE setColor NOTIFY colorChanged)
%%

$prototype=virtual QColor color() const
$virtualMethod=5,7,0|QColor|color|

$prototype=virtual void setColor(const QColor &color)
$virtualMethod=5,7,0|void|setColor|const QColor &

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

$prototype=void append(qreal x, qreal y)
$internalMethod=5,7,0|void|append,append1|qreal,qreal

$prototype=void append(const QPointF &point)
$internalMethod=5,7,0|void|append,append2|const QPointF &

$prototype=void append(const QList<QPointF> &points)
$internalMethod=5,7,0|void|append,append3|const QList<QPointF> &

//[1]void append(qreal x, qreal y)
//[2]void append(const QPointF &point)
//[3]void append(const QList<QPointF> &points)

HB_FUNC_STATIC( QXYSERIES_APPEND )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QXYSeries_append1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QXYSeries_append2();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QXYSeries_append3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=append

$prototype=void replace(qreal oldX, qreal oldY, qreal newX, qreal newY)
$internalMethod=5,7,0|void|replace,replace1|qreal,qreal,qreal,qreal

$prototype=void replace(const QPointF &oldPoint, const QPointF &newPoint)
$internalMethod=5,7,0|void|replace,replace2|const QPointF &,const QPointF &

$prototype=void replace(int index, qreal newX, qreal newY)
$internalMethod=5,7,0|void|replace,replace3|int,qreal,qreal

$prototype=void replace(int index, const QPointF &newPoint)
$internalMethod=5,7,0|void|replace,replace4|int,const QPointF &

$prototype=void replace(QList<QPointF> points)
$internalMethod=5,7,0|void|replace,replace5|QList<QPointF>

$prototype=void replace(QVector<QPointF> points)
$internalMethod=5,7,0|void|replace,replace6|QVector<QPointF>

//[1]void replace(qreal oldX, qreal oldY, qreal newX, qreal newY)
//[2]void replace(const QPointF &oldPoint, const QPointF &newPoint)
//[3]void replace(int index, qreal newX, qreal newY)
//[4]void replace(int index, const QPointF &newPoint)
//[5]void replace(QList<QPointF> points)
//[6]void replace(QVector<QPointF> points)

%% TODO: conflict between [5] and [6]

HB_FUNC_STATIC( QXYSERIES_REPLACE )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QXYSeries_replace1();
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISQPOINTF(2) )
  {
    QXYSeries_replace2();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QXYSeries_replace3();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQPOINTF(2) )
  {
    QXYSeries_replace4();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QXYSeries_replace5();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QXYSeries_replace6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=replace

$prototype=void remove(qreal x, qreal y)
$internalMethod=5,7,0|void|remove,remove1|qreal,qreal

$prototype=void remove(const QPointF &point)
$internalMethod=5,7,0|void|remove,remove2|const QPointF &

$prototype=void remove(int index)
$internalMethod=5,7,0|void|remove,remove3|int

//[1]void remove(qreal x, qreal y)
//[2]void remove(const QPointF &point)
//[3]void remove(int index)

HB_FUNC_STATIC( QXYSERIES_REMOVE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QXYSeries_remove1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QXYSeries_remove2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QXYSeries_remove3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=remove

$prototype=void removePoints(int index, int count)
$method=5,7,0|void|removePoints|int,int

$prototype=void insert(int index, const QPointF &point)
$method=5,7,0|void|insert|int,const QPointF &

$prototype=void clear()
$method=5,7,0|void|clear|

$prototype=int count() const
$method=5,7,0|int|count|

$prototype=QList<QPointF> points() const
$method=5,7,0|QList<QPointF>|points|

$prototype=QVector<QPointF> pointsVector() const
$method=5,7,0|QVector<QPointF>|pointsVector|

$prototype=const QPointF &at(int index) const
$method=5,7,0|const QPointF &|at|int

$prototype=virtual void setPen(const QPen &pen)
$virtualMethod=5,7,0|void|setPen|const QPen &

$prototype=QPen pen() const
$method=5,7,0|QPen|pen|

$prototype=virtual void setBrush(const QBrush &brush)
$virtualMethod=5,7,0|void|setBrush|const QBrush &

$prototype=QBrush brush() const
$method=5,7,0|QBrush|brush|

%%
%% SIGNALS
%%

using namespace QtCharts;

$prototype=void clicked( const QPointF & point )
$signalMethod=5,7,0|void|clicked|const QPointF &

$prototype=void colorChanged( QColor color )
$signalMethod=5,7,0|void|colorChanged|QColor

$prototype=void doubleClicked( const QPointF & point )
$signalMethod=5,7,0|void|doubleClicked|const QPointF &

$prototype=void hovered( const QPointF & point, bool state )
$signalMethod=5,7,0|void|hovered|const QPointF &,bool

$prototype=void penChanged( const QPen & pen )
$signalMethod=5,7,0|void|penChanged|const QPen &

$prototype=void pointAdded( int index )
$signalMethod=5,7,0|void|pointAdded|int

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

$prototype=void pointRemoved( int index )
$signalMethod=5,7,0|void|pointRemoved|int

$prototype=void pointReplaced( int index )
$signalMethod=5,7,0|void|pointReplaced|int

$prototype=void pointsRemoved( int index, int count )
$signalMethod=5,7,0|void|pointsRemoved|int,int

$prototype=void pointsReplaced()
$signalMethod=5,7,0|void|pointsReplaced|

$prototype=void pressed( const QPointF & point )
$signalMethod=5,7,0|void|pressed|const QPointF &

$prototype=void released( const QPointF & point )
$signalMethod=5,7,0|void|released|const QPointF &

#pragma ENDDUMP
