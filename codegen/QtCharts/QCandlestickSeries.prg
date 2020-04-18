%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts
$added=5,8,0

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

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
using namespace QtCharts;
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtCharts/QCandlestickSet>
#endif

$prototype=explicit QCandlestickSeries(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=~QCandlestickSeries()
$deleteMethod

%%
%% Q_PROPERTY(int count READ count NOTIFY countChanged)
%%

$prototype=int count() const
$method=|int|count|

%%
%% Q_PROPERTY(qreal maximumColumnWidth READ maximumColumnWidth WRITE setMaximumColumnWidth NOTIFY maximumColumnWidthChanged)
%%

$prototype=qreal maximumColumnWidth() const
$method=|qreal|maximumColumnWidth|

$prototype=void setMaximumColumnWidth(qreal maximumColumnWidth)
$method=|void|setMaximumColumnWidth|qreal

%%
%% Q_PROPERTY(qreal minimumColumnWidth READ minimumColumnWidth WRITE setMinimumColumnWidth NOTIFY minimumColumnWidthChanged)
%%

$prototype=qreal minimumColumnWidth() const
$method=|qreal|minimumColumnWidth|

$prototype=void setMinimumColumnWidth(qreal minimumColumnWidth)
$method=|void|setMinimumColumnWidth|qreal

%%
%% Q_PROPERTY(qreal bodyWidth READ bodyWidth WRITE setBodyWidth NOTIFY bodyWidthChanged)
%%

$prototype=qreal bodyWidth() const
$method=|qreal|bodyWidth|

$prototype=void setBodyWidth(qreal bodyWidth)
$method=|void|setBodyWidth|qreal

%%
%% Q_PROPERTY(bool bodyOutlineVisible READ bodyOutlineVisible WRITE setBodyOutlineVisible NOTIFY bodyOutlineVisibilityChanged)
%%

$prototype=bool bodyOutlineVisible() const
$method=|bool|bodyOutlineVisible|

$prototype=void setBodyOutlineVisible(bool bodyOutlineVisible)
$method=|void|setBodyOutlineVisible|bool

%%
%% Q_PROPERTY(qreal capsWidth READ capsWidth WRITE setCapsWidth NOTIFY capsWidthChanged)
%%

$prototype=qreal capsWidth() const
$method=|qreal|capsWidth|

$prototype=void setCapsWidth(qreal capsWidth)
$method=|void|setCapsWidth|qreal

%%
%% Q_PROPERTY(bool capsVisible READ capsVisible WRITE setCapsVisible NOTIFY capsVisibilityChanged)
%%

$prototype=bool capsVisible() const
$method=|bool|capsVisible|

$prototype=void setCapsVisible(bool capsVisible)
$method=|void|setCapsVisible|bool

%%
%% Q_PROPERTY(QColor increasingColor READ increasingColor WRITE setIncreasingColor NOTIFY increasingColorChanged)
%%

$prototype=QColor increasingColor() const
$method=|QColor|increasingColor|

$prototype=void setIncreasingColor(const QColor &increasingColor)
$method=|void|setIncreasingColor|const QColor &

%%
%% Q_PROPERTY(QColor decreasingColor READ decreasingColor WRITE setDecreasingColor NOTIFY decreasingColorChanged)
%%

$prototype=QColor decreasingColor() const
$method=|QColor|decreasingColor|

$prototype=void setDecreasingColor(const QColor &decreasingColor)
$method=|void|setDecreasingColor|const QColor &

%%
%% Q_PROPERTY(QBrush brush READ brush WRITE setBrush NOTIFY brushChanged)
%%

$prototype=QBrush brush() const
$method=|QBrush|brush|

$prototype=void setBrush(const QBrush &brush)
$method=|void|setBrush|const QBrush &

%%
%% Q_PROPERTY(QPen pen READ pen WRITE setPen NOTIFY penChanged)
%%

$prototype=QPen pen() const
$method=|QPen|pen|

$prototype=void setPen(const QPen &pen)
$method=|void|setPen|const QPen &

%%
%%
%%

$prototype=bool append(QCandlestickSet *set)
$internalMethod=|bool|append,append1|const QList<QCandlestickSet *> &

$prototype=bool append(const QList<QCandlestickSet *> &sets)
$internalMethod=|bool|append,append2|const QList<QCandlestickSet *> &

/*
[1]bool append(QCandlestickSet *set)
[2]bool append(const QList<QCandlestickSet *> &sets)
*/

HB_FUNC_STATIC( QCANDLESTICKSERIES_APPEND )
{
  if( ISNUMPAR(1) && ISQCANDLESTICKSET(1) )
  {
    QCandlestickSeries_append1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QCandlestickSeries_append2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=append

$prototype=bool remove(QCandlestickSet *set)
$internalMethod=|bool|remove,remove1|QCandlestickSet *

$prototype=bool remove(const QList<QCandlestickSet *> &sets)
$internalMethod=|bool|remove,remove2|const QList<QCandlestickSet *> &

/*
[1]bool remove(QCandlestickSet *set)
[2]bool remove(const QList<QCandlestickSet *> &sets)
*/

HB_FUNC_STATIC( QCANDLESTICKSERIES_REMOVE )
{
  if( ISNUMPAR(1) && ISQCANDLESTICKSET(1) )
  {
    QCandlestickSeries_remove1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QCandlestickSeries_remove2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=remove

$prototype=bool insert(int index, QCandlestickSet *set)
$method=|bool|insert|int,QCandlestickSet *

$prototype=bool take(QCandlestickSet *set)
$method=|bool|take|QCandlestickSet *

$prototype=void clear()
$method=|void|clear|

$prototype=QList<QCandlestickSet *> sets() const
$method=|QList<QCandlestickSet *>|sets|

$prototype=QAbstractSeries::SeriesType type() const
$method=|QAbstractSeries::SeriesType|type|

%%
%% SIGNALS
%%

$prototype=void bodyOutlineVisibilityChanged()
$signalMethod=|void|bodyOutlineVisibilityChanged|

$prototype=void bodyWidthChanged()
$signalMethod=|void|bodyWidthChanged|

$prototype=void brushChanged()
$signalMethod=|void|brushChanged|

$prototype=void candlestickSetsAdded( const QList<QCandlestickSet*> & sets )
$signalMethod=|void|candlestickSetsAdded|const QList<QCandlestickSet*> &

$prototype=void candlestickSetsRemoved( const QList<QCandlestickSet*> & sets )
$signalMethod=|void|candlestickSetsRemoved|const QList<QCandlestickSet*> &

$prototype=void capsVisibilityChanged()
$signalMethod=|void|capsVisibilityChanged|

$prototype=void capsWidthChanged()
$signalMethod=|void|capsWidthChanged|

$prototype=void clicked( QCandlestickSet * set )
$signalMethod=|void|clicked|QCandlestickSet *

$prototype=void countChanged()
$signalMethod=|void|countChanged|

$prototype=void decreasingColorChanged()
$signalMethod=|void|decreasingColorChanged|

$prototype=void doubleClicked( QCandlestickSet * set )
$signalMethod=|void|doubleClicked|QCandlestickSet *

$prototype=void hovered( bool status, QCandlestickSet * set )
$signalMethod=|void|hovered|bool,QCandlestickSet *

$prototype=void increasingColorChanged()
$signalMethod=|void|increasingColorChanged|

$prototype=void maximumColumnWidthChanged()
$signalMethod=|void|maximumColumnWidthChanged|

$prototype=void minimumColumnWidthChanged()
$signalMethod=|void|minimumColumnWidthChanged|

$prototype=void penChanged()
$signalMethod=|void|penChanged|

$prototype=void pressed( QCandlestickSet * set )
$signalMethod=|void|pressed|QCandlestickSet *

$prototype=void released( QCandlestickSet * set )
$signalMethod=|void|released|QCandlestickSet *

#pragma ENDDUMP
