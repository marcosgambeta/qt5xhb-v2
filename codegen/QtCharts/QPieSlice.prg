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

#include <QtCharts/QPieSeries>

$prototype=explicit QPieSlice(QObject *parent = nullptr)
$internalConstructor=|new1|QObject *=nullptr

$prototype=QPieSlice(QString label, qreal value, QObject *parent = nullptr)
$internalConstructor=|new2|QString,qreal,QObject *=nullptr

/*
[1]explicit QPieSlice(QObject *parent = nullptr)
[2]QPieSlice(QString label, qreal value, QObject *parent = nullptr)
*/

HB_FUNC_STATIC( QPIESLICE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QPieSlice_new1();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    QPieSlice_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual ~QPieSlice();
$deleteMethod

%%
%% Q_PROPERTY(QString label READ label WRITE setLabel NOTIFY labelChanged)
%%

$prototypeV2=QString label() const

$prototypeV2=void setLabel( QString label )

%%
%% Q_PROPERTY(qreal value READ value WRITE setValue NOTIFY valueChanged)
%%

$prototypeV2=qreal value() const

$prototypeV2=void setValue( qreal value )

%%
%% Q_PROPERTY(bool labelVisible READ isLabelVisible WRITE setLabelVisible NOTIFY labelVisibleChanged)
%%

$prototypeV2=bool isLabelVisible() const

$prototypeV2=void setLabelVisible( bool visible = true )

%%
%% Q_PROPERTY(LabelPosition labelPosition READ labelPosition WRITE setLabelPosition)
%%

$prototypeV2=QPieSlice::LabelPosition labelPosition()

$prototypeV2=void setLabelPosition( QPieSlice::LabelPosition position )

%%
%% Q_PROPERTY(bool exploded READ isExploded WRITE setExploded)
%%

$prototypeV2=bool isExploded() const

$prototypeV2=void setExploded( bool exploded = true )

%%
%% Q_PROPERTY(QPen pen READ pen WRITE setPen NOTIFY penChanged)
%%

$prototypeV2=QPen pen() const

$prototypeV2=void setPen( const QPen & pen )

%%
%% Q_PROPERTY(QColor borderColor READ borderColor WRITE setBorderColor NOTIFY borderColorChanged)
%%

$prototypeV2=QColor borderColor()

$prototypeV2=void setBorderColor( QColor color )

%%
%% Q_PROPERTY(int borderWidth READ borderWidth WRITE setBorderWidth NOTIFY borderWidthChanged)
%%

$prototypeV2=int borderWidth()

$prototypeV2=void setBorderWidth( int width )

%%
%% Q_PROPERTY(QBrush brush READ brush WRITE setBrush NOTIFY brushChanged)
%%

$prototypeV2=QBrush brush() const

$prototypeV2=void setBrush( const QBrush & brush )

%%
%% Q_PROPERTY(QColor color READ color WRITE setColor NOTIFY colorChanged)
%%

$prototypeV2=QColor color()

$prototypeV2=void setColor( QColor color )

%%
%% Q_PROPERTY(QBrush labelBrush READ labelBrush WRITE setLabelBrush NOTIFY labelBrushChanged)
%%

$prototypeV2=QBrush labelBrush() const

$prototypeV2=void setLabelBrush( const QBrush & brush )

%%
%% Q_PROPERTY(QColor labelColor READ labelColor WRITE setLabelColor NOTIFY labelColorChanged)
%%

$prototypeV2=QColor labelColor()

$prototypeV2=void setLabelColor( QColor color )

%%
%% Q_PROPERTY(QFont labelFont READ labelFont WRITE setLabelFont NOTIFY labelFontChanged)
%%

$prototypeV2=QFont labelFont() const

$prototypeV2=void setLabelFont( const QFont & font )

%%
%% Q_PROPERTY(qreal labelArmLengthFactor READ labelArmLengthFactor WRITE setLabelArmLengthFactor)
%%

$prototypeV2=qreal labelArmLengthFactor() const

$prototypeV2=void setLabelArmLengthFactor( qreal factor )

%%
%% Q_PROPERTY(qreal explodeDistanceFactor READ explodeDistanceFactor WRITE setExplodeDistanceFactor)
%%

$prototypeV2=qreal explodeDistanceFactor() const

$prototypeV2=void setExplodeDistanceFactor( qreal factor )

%%
%% Q_PROPERTY(qreal percentage READ percentage NOTIFY percentageChanged)
%%

$prototypeV2=qreal percentage() const

%%
%% Q_PROPERTY(qreal startAngle READ startAngle NOTIFY startAngleChanged)
%%

$prototypeV2=qreal startAngle() const

%%
%% Q_PROPERTY(qreal angleSpan READ angleSpan NOTIFY angleSpanChanged)
%%

$prototypeV2=qreal angleSpan() const

%%
%%
%%

$prototypeV2=QPieSeries * series() const

%%
%% SIGNALS
%%

$prototype=void angleSpanChanged()
$signalMethod=|void|angleSpanChanged|

$prototype=void borderColorChanged()
$signalMethod=|void|borderColorChanged|

$prototype=void borderWidthChanged()
$signalMethod=|void|borderWidthChanged|

$prototype=void brushChanged()
$signalMethod=|void|brushChanged|

$prototype=void clicked()
$signalMethod=|void|clicked|

$prototype=void colorChanged()
$signalMethod=|void|colorChanged|

$prototype=void doubleClicked()
$signalMethod=|void|doubleClicked|

$prototype=void hovered( bool state )
$signalMethod=|void|hovered|bool

$prototype=void labelBrushChanged()
$signalMethod=|void|labelBrushChanged|

$prototype=void labelChanged()
$signalMethod=|void|labelChanged|

$prototype=void labelColorChanged()
$signalMethod=|void|labelColorChanged|

$prototype=void labelFontChanged()
$signalMethod=|void|labelFontChanged|

$prototype=void labelVisibleChanged()
$signalMethod=|void|labelVisibleChanged|

$prototype=void penChanged()
$signalMethod=|void|penChanged|

$prototype=void percentageChanged()
$signalMethod=|void|percentageChanged|

$prototype=void pressed()
$signalMethod=|void|pressed|

$prototype=void released()
$signalMethod=|void|released|

$prototype=void startAngleChanged()
$signalMethod=|void|startAngleChanged|

$prototype=void valueChanged()
$signalMethod=|void|valueChanged|

#pragma ENDDUMP
