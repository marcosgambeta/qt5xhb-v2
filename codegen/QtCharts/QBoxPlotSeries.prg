%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
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

$prototype=explicit QBoxPlotSeries(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=~QBoxPlotSeries()
$deleteMethod

%%
%% Q_PROPERTY(int count READ count NOTIFY countChanged REVISION 1)
%%

$prototype=int count() const
$method=|int|count|

%%
%% Q_PROPERTY(bool boxOutlineVisible READ boxOutlineVisible WRITE setBoxOutlineVisible NOTIFY boxOutlineVisibilityChanged)
%%

$prototype=bool boxOutlineVisible()
$method=|bool|boxOutlineVisible|

$prototype=void setBoxOutlineVisible(bool visible)
$method=|void|setBoxOutlineVisible|bool

%%
%% Q_PROPERTY(qreal boxWidth READ boxWidth WRITE setBoxWidth NOTIFY boxWidthChanged)
%%

$prototype=qreal boxWidth()
$method=|qreal|boxWidth|

$prototype=void setBoxWidth(qreal width)
$method=|void|setBoxWidth|qreal

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

$prototype=bool append(QBoxSet *box)
$internalMethod=|bool|append,append1|QBoxSet *

$prototype=bool append(QList<QBoxSet *> boxes)
$internalMethod=|bool|append,append2|QList<QBoxSet *>

//[1]bool append(QBoxSet *box)
//[2]bool append(QList<QBoxSet *> boxes)

HB_FUNC_STATIC( QBOXPLOTSERIES_APPEND )
{
  if( ISNUMPAR(1) && ISQBOXSET(1) )
  {
    QBoxPlotSeries_append1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QBoxPlotSeries_append2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=append

$prototype=bool remove(QBoxSet *box)
$method=|bool|remove|QBoxSet *

$prototype=bool take(QBoxSet *box)
$method=|bool|take|QBoxSet *

$prototype=bool insert(int index, QBoxSet *box)
$method=|bool|insert|int,QBoxSet *

$prototype=QList<QBoxSet *> boxSets() const
$method=|QList<QBoxSet *>|boxSets|

$prototype=void clear()
$method=|void|clear|

$prototype=QAbstractSeries::SeriesType type() const
$method=|QAbstractSeries::SeriesType|type|

%%
%% SIGNALS
%%

%% using namespace QtCharts;

$prototype=void boxOutlineVisibilityChanged()
$signalMethod=|void|boxOutlineVisibilityChanged|

$prototype=void boxsetsAdded( QList<QBoxSet*> sets )
$signalMethod=|void|boxsetsAdded|QList<QBoxSet*>

$prototype=void boxsetsRemoved( QList<QBoxSet*> sets )
$signalMethod=|void|boxsetsRemoved|QList<QBoxSet*>

$prototype=void boxWidthChanged()
$signalMethod=|void|boxWidthChanged|

$prototype=void brushChanged()
$signalMethod=|void|brushChanged|

$prototype=void clicked( QBoxSet * boxset )
$signalMethod=|void|clicked|QBoxSet *

$prototype=void countChanged()
$signalMethod=|void|countChanged|

$prototype=void doubleClicked( QBoxSet * boxset )
$signalMethod=|void|doubleClicked|QBoxSet *

$prototype=void hovered( bool status, QBoxSet * boxset )
$signalMethod=|void|hovered|bool,QBoxSet *

$prototype=void penChanged()
$signalMethod=|void|penChanged|

$prototype=void pressed( QBoxSet * boxset )
$signalMethod=|void|pressed|QBoxSet *

$prototype=void released( QBoxSet * boxset )
$signalMethod=|void|released|QBoxSet *

#pragma ENDDUMP
