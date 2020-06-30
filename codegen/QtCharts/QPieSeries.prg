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

$prototype=explicit QPieSeries(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=virtual ~QPieSeries()
$deleteMethod

%%
%% Q_PROPERTY(qreal horizontalPosition READ horizontalPosition WRITE setHorizontalPosition)
%%

$prototypeV2=qreal horizontalPosition() const

$prototypeV2=void setHorizontalPosition( qreal relativePosition )

%%
%% Q_PROPERTY(qreal verticalPosition READ verticalPosition WRITE setVerticalPosition)
%%

$prototypeV2=qreal verticalPosition() const

$prototypeV2=void setVerticalPosition( qreal relativePosition )

%%
%% Q_PROPERTY(qreal size READ pieSize WRITE setPieSize)
%%

$prototypeV2=qreal pieSize() const

$prototypeV2=void setPieSize( qreal relativeSize )

%%
%% Q_PROPERTY(qreal startAngle READ pieStartAngle WRITE setPieStartAngle)
%%

$prototypeV2=qreal pieStartAngle() const

$prototypeV2=void setPieStartAngle( qreal startAngle )

%%
%% Q_PROPERTY(qreal endAngle READ pieEndAngle WRITE setPieEndAngle)
%%

$prototypeV2=qreal pieEndAngle() const

$prototypeV2=void setPieEndAngle( qreal endAngle )

%%
%% Q_PROPERTY(int count READ count NOTIFY countChanged)
%%

$prototypeV2=int count() const

%%
%% Q_PROPERTY(qreal sum READ sum NOTIFY sumChanged)
%%

$prototypeV2=qreal sum() const

%%
%% Q_PROPERTY(qreal holeSize READ holeSize WRITE setHoleSize)
%%

$prototypeV2=qreal holeSize() const

$prototypeV2=void setHoleSize( qreal holeSize )

%%
%%
%%

$prototypeV2=QAbstractSeries::SeriesType type() const

$prototype=bool append(QPieSlice *slice)
$internalMethod=|bool|append,append1|QPieSlice *

$prototype=bool append(QList<QPieSlice *> slices)
$internalMethod=|bool|append,append2|QList<QPieSlice *>

$prototype=QPieSlice *append(QString label, qreal value)
$internalMethod=|QPieSlice *|append,append3|QString,qreal

/*
[1]bool append(QPieSlice *slice)
[2]bool append(QList<QPieSlice *> slices)
[3]QPieSlice *append(QString label, qreal value)
*/

HB_FUNC_STATIC( QPIESERIES_APPEND )
{
  if( ISNUMPAR(1) && ISQPIESLICE(1) )
  {
    QPieSeries_append1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QPieSeries_append2();
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISNUM(2) )
  {
    QPieSeries_append3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=append

$prototypeV2=bool insert( int index, QPieSlice * slice )

$prototypeV2=bool remove( QPieSlice * slice )

$prototypeV2=bool take( QPieSlice * slice )

$prototypeV2=void clear()

$prototypeV2=QList<QPieSlice *> slices() const

$prototypeV2=bool isEmpty() const

$prototypeV2=void setLabelsVisible( bool visible = true )

$prototypeV2=void setLabelsPosition( QPieSlice::LabelPosition position )

%%
%% SIGNALS
%%

$prototype=void added( QList<QPieSlice*> slices )
$signalMethod=|void|added|QList<QPieSlice*>

$prototype=void clicked( QPieSlice * slice )
$signalMethod=|void|clicked|QPieSlice *

$prototype=void countChanged()
$signalMethod=|void|countChanged|

$prototype=void doubleClicked( QPieSlice * slice )
$signalMethod=|void|doubleClicked|QPieSlice *

$prototype=void hovered( QPieSlice * slice, bool state )
$signalMethod=|void|hovered|QPieSlice *,bool

$prototype=void pressed( QPieSlice * slice )
$signalMethod=|void|pressed|QPieSlice *

$prototype=void released( QPieSlice * slice )
$signalMethod=|void|released|QPieSlice *

$prototype=void removed( QList<QPieSlice*> slices )
$signalMethod=|void|removed|QList<QPieSlice*>

$prototype=void sumChanged()
$signalMethod=|void|sumChanged|

#pragma ENDDUMP
