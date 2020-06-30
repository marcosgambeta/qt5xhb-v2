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

#include <QtCharts/QBarSet>

$prototype=explicit QAbstractBarSeries(QAbstractBarSeriesPrivate &d, QObject *parent = nullptr) [protected]

$prototype=virtual ~QAbstractBarSeries()
$deleteMethod

%%
%% Q_PROPERTY(qreal barWidth READ barWidth WRITE setBarWidth)
%%

$prototypeV2=qreal barWidth() const

$prototypeV2=void setBarWidth( qreal width )

%%
%% Q_PROPERTY(int count READ count NOTIFY countChanged)
%%

$prototypeV2=int count() const

%%
%% Q_PROPERTY(bool labelsVisible READ isLabelsVisible WRITE setLabelsVisible NOTIFY labelsVisibleChanged)
%%

$prototypeV2=bool isLabelsVisible() const

$prototypeV2=void setLabelsVisible( bool visible = true )

%%
%% Q_PROPERTY(QString labelsFormat READ labelsFormat WRITE setLabelsFormat NOTIFY labelsFormatChanged)
%%

$prototypeV2=QString labelsFormat() const

$prototypeV2=void setLabelsFormat( const QString & format )

%%
%% Q_PROPERTY(qreal labelsAngle READ labelsAngle WRITE setLabelsAngle NOTIFY labelsAngleChanged)
%%

$prototypeV2=qreal labelsAngle() const

$prototypeV2=void setLabelsAngle( qreal angle )

%%
%% Q_PROPERTY(LabelsPosition labelsPosition READ labelsPosition WRITE setLabelsPosition NOTIFY labelsPositionChanged)
%%

$prototypeV2=QAbstractBarSeries::LabelsPosition labelsPosition() const

$prototypeV2=void setLabelsPosition( QAbstractBarSeries::LabelsPosition position )

%%
%%
%%

$prototype=bool append(QBarSet *set)
$internalMethod=|bool|append,append1|QBarSet *

$prototype=bool append(QList<QBarSet *> sets)
$internalMethod=|bool|append,append2|QList<QBarSet *>

/*
[1]bool append(QBarSet *set)
[2]bool append(QList<QBarSet *> sets)
*/

HB_FUNC_STATIC( QABSTRACTBARSERIES_APPEND )
{
  if( ISNUMPAR(1) && ISQBARSET(1) )
  {
    QAbstractBarSeries_append1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QAbstractBarSeries_append2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=append

$prototypeV2=bool remove( QBarSet * set )

$prototypeV2=bool take( QBarSet * set )

$prototypeV2=bool insert( int index, QBarSet * set )

$prototypeV2=QList<QBarSet *> barSets() const

$prototypeV2=void clear()

%%
%% SIGNALS
%%

$prototype=void barsetsAdded( QList<QBarSet*> sets )
$signalMethod=|void|barsetsAdded|QList<QBarSet*>

$prototype=void barsetsRemoved( QList<QBarSet*> sets )
$signalMethod=|void|barsetsRemoved|QList<QBarSet*>

$prototype=void clicked( int index, QBarSet * barset )
$signalMethod=|void|clicked|int,QBarSet *

$prototype=void countChanged()
$signalMethod=|void|countChanged|

$prototype=void doubleClicked( int index, QBarSet * barset )
$signalMethod=|void|doubleClicked|int,QBarSet *

$prototype=void hovered( bool status, int index, QBarSet * barset )
$signalMethod=|void|hovered|bool,int,QBarSet *

$prototype=void labelsAngleChanged( qreal angle )
$signalMethod=|void|labelsAngleChanged|qreal

$prototype=void labelsFormatChanged( const QString & format )
$signalMethod=|void|labelsFormatChanged|const QString &

$prototype=void labelsPositionChanged( QAbstractBarSeries::LabelsPosition position )
$signalMethod=|void|labelsPositionChanged|QAbstractBarSeries::LabelsPosition

$prototype=void labelsVisibleChanged()
$signalMethod=|void|labelsVisibleChanged|

$prototype=void pressed( int index, QBarSet * barset )
$signalMethod=|void|pressed|int,QBarSet *

$prototype=void released( int index, QBarSet * barset )
$signalMethod=|void|released|int,QBarSet *

#pragma ENDDUMP
