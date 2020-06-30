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

$prototypeV2=void setLabel( const QString label )

%%
%% Q_PROPERTY(QPen pen READ pen WRITE setPen NOTIFY penChanged)
%%

$prototypeV2=QPen pen() const

$prototypeV2=void setPen( const QPen & pen )

%%
%% Q_PROPERTY(QBrush brush READ brush WRITE setBrush NOTIFY brushChanged)
%%

$prototypeV2=QBrush brush() const

$prototypeV2=void setBrush( const QBrush & brush )

%%
%% Q_PROPERTY(QBrush labelBrush READ labelBrush WRITE setLabelBrush NOTIFY labelBrushChanged)
%%

$prototypeV2=QBrush labelBrush() const

$prototypeV2=void setLabelBrush( const QBrush & brush )

%%
%% Q_PROPERTY(QFont labelFont READ labelFont WRITE setLabelFont NOTIFY labelFontChanged)
%%

$prototypeV2=QFont labelFont() const

$prototypeV2=void setLabelFont( const QFont & font )

%%
%% Q_PROPERTY(QColor color READ color WRITE setColor NOTIFY colorChanged)
%%

$prototypeV2=QColor color()

$prototypeV2=void setColor( QColor color )

%%
%% Q_PROPERTY(QColor borderColor READ borderColor WRITE setBorderColor NOTIFY borderColorChanged)
%%

$prototypeV2=QColor borderColor()

$prototypeV2=void setBorderColor( QColor color )

%%
%% Q_PROPERTY(QColor labelColor READ labelColor WRITE setLabelColor NOTIFY labelColorChanged)
%%

$prototypeV2=QColor labelColor()

$prototypeV2=void setLabelColor( QColor color )

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

$prototypeV2=void insert( const int index, const qreal value )

$prototypeV2=void remove( const int index, const int count = 1 )

$prototypeV2=void replace( const int index, const qreal value )

$prototypeV2=qreal at( const int index ) const

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
