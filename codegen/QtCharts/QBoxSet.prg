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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtCharts;

$prototype=explicit QBoxSet(const QString label = QString(), QObject *parent = nullptr)
$internalConstructor=|new1|const QString &=QString(),QObject *=nullptr

$prototype=explicit QBoxSet(const qreal le, const qreal lq, const qreal m, const qreal uq, const qreal ue, const QString label = QString(), QObject *parent = nullptr)
$internalConstructor=|new2|const qreal,const qreal,const qreal,const qreal,const qreal,const QString &=QString(),QObject *=nullptr

//[1]explicit QBoxSet(const QString label = QString(), QObject *parent = nullptr)
//[2]explicit QBoxSet(const qreal le, const qreal lq, const qreal m, const qreal uq, const qreal ue, const QString label = QString(), QObject *parent = nullptr)

HB_FUNC_STATIC( QBOXSET_NEW )
{
  if( ISBETWEEN(0,2) && (ISCHAR(1)||ISNIL(1)) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QBoxSet_new1();
  }
  else if( ISBETWEEN(5,7) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && (ISCHAR(6)||ISNIL(6)) && (ISQOBJECT(7)||ISNIL(7)) )
  {
    QBoxSet_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual ~QBoxSet()
$deleteMethod

%%
%% Q_PROPERTY(QPen pen READ pen WRITE setPen NOTIFY penChanged)
%%

$prototype=QPen pen() const
$method=|QPen|pen|

$prototype=void setPen(const QPen &pen)
$method=|void|setPen|const QPen &

%%
%% Q_PROPERTY(QBrush brush READ brush WRITE setBrush NOTIFY brushChanged)
%%

$prototype=QBrush brush() const
$method=|QBrush|brush|

$prototype=void setBrush(const QBrush &brush)
$method=|void|setBrush|const QBrush &

%%
%%
%%

$prototype=void append(const qreal value)
$internalMethod=|void|append,append1|const qreal

$prototype=void append(const QList<qreal> &values)
$internalMethod=|void|append,append2|const QList<qreal> &

//[1]void append(const qreal value)
//[2]void append(const QList<qreal> &values)

HB_FUNC_STATIC( QBOXSET_APPEND )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QBoxSet_append1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QBoxSet_append2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=append

$prototype=void clear()
$method=|void|clear|

$prototype=void setLabel(const QString label)
$method=|void|setLabel|const QString &

$prototype=QString label() const
$method=|QString|label|

$prototype=void setValue(const int index, const qreal value)
$method=|void|setValue|const int,const qreal

$prototype=qreal at(const int index) const
$method=|qreal|at|const int

$prototype=int count() const
$method=|int|count|

%%
%% SIGNALS
%%

%% using namespace QtCharts;

$prototype=void brushChanged()
$signalMethod=|void|brushChanged|

$prototype=void cleared()
$signalMethod=|void|cleared|

$prototype=void clicked()
$signalMethod=|void|clicked|

$prototype=void doubleClicked()
$signalMethod=|void|doubleClicked|

$prototype=void hovered( bool status )
$signalMethod=|void|hovered|bool

$prototype=void penChanged()
$signalMethod=|void|penChanged|

$prototype=void pressed()
$signalMethod=|void|pressed|

$prototype=void released()
$signalMethod=|void|released|

$prototype=void valueChanged( int index )
$signalMethod=|void|valueChanged|int

$prototype=void valuesChanged()
$signalMethod=|void|valuesChanged|

#pragma ENDDUMP
