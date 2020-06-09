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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtCharts;

$prototype=explicit QBarSet(const QString label, QObject *parent = nullptr)
$constructor=|new|const QString &,QObject *=nullptr

$prototype=virtual ~QBarSet()
$deleteMethod

%%
%% Q_PROPERTY(QString label READ label WRITE setLabel NOTIFY labelChanged)
%%

$prototypeV2=QString label() const

$prototype=void setLabel(const QString label)
$method=|void|setLabel|const QString &

%%
%% Q_PROPERTY(QPen pen READ pen WRITE setPen NOTIFY penChanged)
%%

$prototypeV2=QPen pen() const

$prototype=void setPen(const QPen &pen)
$method=|void|setPen|const QPen &

%%
%% Q_PROPERTY(QBrush brush READ brush WRITE setBrush NOTIFY brushChanged)
%%

$prototypeV2=QBrush brush() const

$prototype=void setBrush(const QBrush &brush)
$method=|void|setBrush|const QBrush &

%%
%% Q_PROPERTY(QBrush labelBrush READ labelBrush WRITE setLabelBrush NOTIFY labelBrushChanged)
%%

$prototypeV2=QBrush labelBrush() const

$prototype=void setLabelBrush(const QBrush &brush)
$method=|void|setLabelBrush|const QBrush &

%%
%% Q_PROPERTY(QFont labelFont READ labelFont WRITE setLabelFont NOTIFY labelFontChanged)
%%

$prototypeV2=QFont labelFont() const

$prototype=void setLabelFont(const QFont &font)
$method=|void|setLabelFont|const QFont &

%%
%% Q_PROPERTY(QColor color READ color WRITE setColor NOTIFY colorChanged)
%%

$prototypeV2=QColor color()

$prototype=void setColor(QColor color)
$method=|void|setColor|QColor

%%
%% Q_PROPERTY(QColor borderColor READ borderColor WRITE setBorderColor NOTIFY borderColorChanged)
%%

$prototypeV2=QColor borderColor()

$prototype=void setBorderColor(QColor color)
$method=|void|setBorderColor|QColor

%%
%% Q_PROPERTY(QColor labelColor READ labelColor WRITE setLabelColor NOTIFY labelColorChanged)
%%

$prototypeV2=QColor labelColor()

$prototype=void setLabelColor(QColor color)
$method=|void|setLabelColor|QColor

%%
%%
%%

$prototype=void append(const qreal value)
$internalMethod=|void|append,append1|const qreal

$prototype=void append(const QList<qreal> &values)
$internalMethod=|void|append,append2|const QList<qreal> &

/*
[1]void append(const qreal value)
[2]void append(const QList<qreal> &values)
*/

HB_FUNC_STATIC( QBARSET_APPEND )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QBarSet_append1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QBarSet_append2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=append

$prototype=void insert(const int index, const qreal value)
$method=|void|insert|const int,const qreal

$prototype=void remove(const int index, const int count = 1)
$method=|void|remove|const int,const int=1

$prototype=void replace(const int index, const qreal value)
$method=|void|replace|const int,const qreal

$prototype=qreal at(const int index) const
$method=|qreal|at|const int

$prototypeV2=int count() const

$prototypeV2=qreal sum() const

%%
%% SIGNALS
%%

$prototype=void borderColorChanged( QColor color )
$signalMethod=|void|borderColorChanged|QColor

$prototype=void brushChanged()
$signalMethod=|void|brushChanged|

$prototype=void clicked( int index )
$signalMethod=|void|clicked|int

$prototype=void colorChanged( QColor color )
$signalMethod=|void|colorChanged|QColor

$prototype=void doubleClicked( int index )
$signalMethod=|void|doubleClicked|int

$prototype=void hovered( bool status, int index )
$signalMethod=|void|hovered|bool,int

$prototype=void labelBrushChanged()
$signalMethod=|void|labelBrushChanged|

$prototype=void labelChanged()
$signalMethod=|void|labelChanged|

$prototype=void labelColorChanged( QColor color )
$signalMethod=|void|labelColorChanged|QColor

$prototype=void labelFontChanged()
$signalMethod=|void|labelFontChanged|

$prototype=void penChanged()
$signalMethod=|void|penChanged|

$prototype=void pressed( int index )
$signalMethod=|void|pressed|int

$prototype=void released( int index )
$signalMethod=|void|released|int

$prototype=void valueChanged( int index )
$signalMethod=|void|valueChanged|int

$prototype=void valuesAdded( int index, int count )
$signalMethod=|void|valuesAdded|int,int

$prototype=void valuesRemoved( int index, int count )
$signalMethod=|void|valuesRemoved|int,int

#pragma ENDDUMP
