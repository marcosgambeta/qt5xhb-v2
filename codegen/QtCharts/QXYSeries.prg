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

using namespace QtCharts;

$prototype=explicit QXYSeries(QXYSeriesPrivate &d, QObject *parent = nullptr) [protected]

$prototype=~QXYSeries()
$deleteMethod

%%
%% Q_PROPERTY(bool pointsVisible READ pointsVisible WRITE setPointsVisible)
%%

$prototypeV2=bool pointsVisible() const

$prototypeV2=void setPointsVisible( bool visible = true )

%%
%% Q_PROPERTY(QColor color READ color WRITE setColor NOTIFY colorChanged)
%%

$prototypeV2=virtual QColor color() const

$prototypeV2=virtual void setColor( const QColor & color )

%%
%% Q_PROPERTY(QString pointLabelsFormat READ pointLabelsFormat WRITE setPointLabelsFormat NOTIFY pointLabelsFormatChanged)
%%

$prototypeV2=QString pointLabelsFormat() const

$prototypeV2=void setPointLabelsFormat( const QString & format )

%%
%% Q_PROPERTY(bool pointLabelsVisible READ pointLabelsVisible WRITE setPointLabelsVisible NOTIFY pointLabelsVisibilityChanged)
%%

$prototypeV2=bool pointLabelsVisible() const

$prototypeV2=void setPointLabelsVisible( bool visible = true )

%%
%% Q_PROPERTY(QFont pointLabelsFont READ pointLabelsFont WRITE setPointLabelsFont NOTIFY pointLabelsFontChanged)
%%

$prototypeV2=QFont pointLabelsFont() const

$prototypeV2=void setPointLabelsFont( const QFont & font )

%%
%% Q_PROPERTY(QColor pointLabelsColor READ pointLabelsColor WRITE setPointLabelsColor NOTIFY pointLabelsColorChanged)
%%

$prototypeV2=QColor pointLabelsColor() const

$prototypeV2=void setPointLabelsColor( const QColor & color )

%%
%% Q_PROPERTY(bool pointLabelsClipping READ pointLabelsClipping WRITE setPointLabelsClipping NOTIFY pointLabelsClippingChanged)
%%

$prototypeV2=bool pointLabelsClipping() const

$prototypeV2=void setPointLabelsClipping( bool enabled = true )

%%
%%
%%

$prototype=void append(qreal x, qreal y)
$internalMethod=|void|append,append1|qreal,qreal

$prototype=void append(const QPointF &point)
$internalMethod=|void|append,append2|const QPointF &

$prototype=void append(const QList<QPointF> &points)
$internalMethod=|void|append,append3|const QList<QPointF> &

/*
[1]void append(qreal x, qreal y)
[2]void append(const QPointF &point)
[3]void append(const QList<QPointF> &points)
*/

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
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=append

$prototype=void replace(qreal oldX, qreal oldY, qreal newX, qreal newY)
$internalMethod=|void|replace,replace1|qreal,qreal,qreal,qreal

$prototype=void replace(const QPointF &oldPoint, const QPointF &newPoint)
$internalMethod=|void|replace,replace2|const QPointF &,const QPointF &

$prototype=void replace(int index, qreal newX, qreal newY)
$internalMethod=|void|replace,replace3|int,qreal,qreal

$prototype=void replace(int index, const QPointF &newPoint)
$internalMethod=|void|replace,replace4|int,const QPointF &

$prototype=void replace(QList<QPointF> points)
$internalMethod=|void|replace,replace5|QList<QPointF>

$prototype=void replace(QVector<QPointF> points)
$internalMethod=|void|replace,replace6|QVector<QPointF>

/*
[1]void replace(qreal oldX, qreal oldY, qreal newX, qreal newY)
[2]void replace(const QPointF &oldPoint, const QPointF &newPoint)
[3]void replace(int index, qreal newX, qreal newY)
[4]void replace(int index, const QPointF &newPoint)
[5]void replace(QList<QPointF> points)
[6]void replace(QVector<QPointF> points)
*/

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
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=replace

$prototype=void remove(qreal x, qreal y)
$internalMethod=|void|remove,remove1|qreal,qreal

$prototype=void remove(const QPointF &point)
$internalMethod=|void|remove,remove2|const QPointF &

$prototype=void remove(int index)
$internalMethod=|void|remove,remove3|int

/*
[1]void remove(qreal x, qreal y)
[2]void remove(const QPointF &point)
[3]void remove(int index)
*/

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
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=remove

$prototypeV2=void removePoints( int index, int count )

$prototypeV2=void insert( int index, const QPointF & point )

$prototypeV2=void clear()

$prototypeV2=int count() const

$prototypeV2=QList<QPointF> points() const

$prototypeV2=QVector<QPointF> pointsVector() const

$prototypeV2=const QPointF & at( int index ) const

$prototypeV2=virtual void setPen( const QPen & pen )

$prototypeV2=QPen pen() const

$prototypeV2=virtual void setBrush( const QBrush & brush )

$prototypeV2=QBrush brush() const

%%
%% SIGNALS
%%

$prototype=void clicked( const QPointF & point )
$signalMethod=|void|clicked|const QPointF &

$prototype=void colorChanged( QColor color )
$signalMethod=|void|colorChanged|QColor

$prototype=void doubleClicked( const QPointF & point )
$signalMethod=|void|doubleClicked|const QPointF &

$prototype=void hovered( const QPointF & point, bool state )
$signalMethod=|void|hovered|const QPointF &,bool

$prototype=void penChanged( const QPen & pen )
$signalMethod=|void|penChanged|const QPen &

$prototype=void pointAdded( int index )
$signalMethod=|void|pointAdded|int

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

$prototype=void pointRemoved( int index )
$signalMethod=|void|pointRemoved|int

$prototype=void pointReplaced( int index )
$signalMethod=|void|pointReplaced|int

$prototype=void pointsRemoved( int index, int count )
$signalMethod=|void|pointsRemoved|int,int

$prototype=void pointsReplaced()
$signalMethod=|void|pointsReplaced|

$prototype=void pressed( const QPointF & point )
$signalMethod=|void|pressed|const QPointF &

$prototype=void released( const QPointF & point )
$signalMethod=|void|released|const QPointF &

#pragma ENDDUMP
