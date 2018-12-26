%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,7,0

#include <QPieSeries>

using namespace QtCharts;

$prototype=explicit QPieSlice(QObject *parent = Q_NULLPTR)
$internalConstructor=5,7,0|new1|QObject *=Q_NULLPTR

$prototype=QPieSlice(QString label, qreal value, QObject *parent = Q_NULLPTR)
$internalConstructor=5,7,0|new2|QString,qreal,QObject *=Q_NULLPTR

//[1]explicit QPieSlice(QObject *parent = Q_NULLPTR)
//[2]QPieSlice(QString label, qreal value, QObject *parent = Q_NULLPTR)

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
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual ~QPieSlice();
$deleteMethod=5,7,0

%%
%% Q_PROPERTY(QString label READ label WRITE setLabel NOTIFY labelChanged)
%%

$prototype=QString label() const
$method=5,7,0|QString|label|

$prototype=void setLabel(QString label)
$method=5,7,0|void|setLabel|QString

%%
%% Q_PROPERTY(qreal value READ value WRITE setValue NOTIFY valueChanged)
%%

$prototype=qreal value() const
$method=5,7,0|qreal|value|

$prototype=void setValue(qreal value)
$method=5,7,0|void|setValue|qreal

%%
%% Q_PROPERTY(bool labelVisible READ isLabelVisible WRITE setLabelVisible NOTIFY labelVisibleChanged)
%%

$prototype=bool isLabelVisible() const
$method=5,7,0|bool|isLabelVisible|

$prototype=void setLabelVisible(bool visible = true)
$method=5,7,0|void|setLabelVisible|bool=true

%%
%% Q_PROPERTY(LabelPosition labelPosition READ labelPosition WRITE setLabelPosition)
%%

$prototype=LabelPosition labelPosition()
$method=5,7,0|QPieSlice::LabelPosition|labelPosition|

$prototype=void setLabelPosition(LabelPosition position)
$method=5,7,0|void|setLabelPosition|QPieSlice::LabelPosition

%%
%% Q_PROPERTY(bool exploded READ isExploded WRITE setExploded)
%%

$prototype=bool isExploded() const
$method=5,7,0|bool|isExploded|

$prototype=void setExploded(bool exploded = true)
$method=5,7,0|void|setExploded|bool=true

%%
%% Q_PROPERTY(QPen pen READ pen WRITE setPen NOTIFY penChanged)
%%

$prototype=QPen pen() const
$method=5,7,0|QPen|pen|

$prototype=void setPen(const QPen &pen)
$method=5,7,0|void|setPen|const QPen &

%%
%% Q_PROPERTY(QColor borderColor READ borderColor WRITE setBorderColor NOTIFY borderColorChanged)
%%

$prototype=QColor borderColor()
$method=5,7,0|QColor|borderColor|

$prototype=void setBorderColor(QColor color)
$method=5,7,0|void|setBorderColor|QColor

%%
%% Q_PROPERTY(int borderWidth READ borderWidth WRITE setBorderWidth NOTIFY borderWidthChanged)
%%

$prototype=int borderWidth()
$method=5,7,0|int|borderWidth|

$prototype=void setBorderWidth(int width)
$method=5,7,0|void|setBorderWidth|int

%%
%% Q_PROPERTY(QBrush brush READ brush WRITE setBrush NOTIFY brushChanged)
%%

$prototype=QBrush brush() const
$method=5,7,0|QBrush|brush|

$prototype=void setBrush(const QBrush &brush)
$method=5,7,0|void|setBrush|const QBrush &

%%
%% Q_PROPERTY(QColor color READ color WRITE setColor NOTIFY colorChanged)
%%

$prototype=QColor color()
$method=5,7,0|QColor|color|

$prototype=void setColor(QColor color)
$method=5,7,0|void|setColor|QColor

%%
%% Q_PROPERTY(QBrush labelBrush READ labelBrush WRITE setLabelBrush NOTIFY labelBrushChanged)
%%

$prototype=QBrush labelBrush() const
$method=5,7,0|QBrush|labelBrush|

$prototype=void setLabelBrush(const QBrush &brush)
$method=5,7,0|void|setLabelBrush|const QBrush &

%%
%% Q_PROPERTY(QColor labelColor READ labelColor WRITE setLabelColor NOTIFY labelColorChanged)
%%

$prototype=QColor labelColor()
$method=5,7,0|QColor|labelColor|

$prototype=void setLabelColor(QColor color)
$method=5,7,0|void|setLabelColor|QColor

%%
%% Q_PROPERTY(QFont labelFont READ labelFont WRITE setLabelFont NOTIFY labelFontChanged)
%%

$prototype=QFont labelFont() const
$method=5,7,0|QFont|labelFont|

$prototype=void setLabelFont(const QFont &font)
$method=5,7,0|void|setLabelFont|const QFont &

%%
%% Q_PROPERTY(qreal labelArmLengthFactor READ labelArmLengthFactor WRITE setLabelArmLengthFactor)
%%

$prototype=qreal labelArmLengthFactor() const
$method=5,7,0|qreal|labelArmLengthFactor|

$prototype=void setLabelArmLengthFactor(qreal factor)
$method=5,7,0|void|setLabelArmLengthFactor|qreal

%%
%% Q_PROPERTY(qreal explodeDistanceFactor READ explodeDistanceFactor WRITE setExplodeDistanceFactor)
%%

$prototype=qreal explodeDistanceFactor() const
$method=5,7,0|qreal|explodeDistanceFactor|

$prototype=void setExplodeDistanceFactor(qreal factor)
$method=5,7,0|void|setExplodeDistanceFactor|qreal

%%
%% Q_PROPERTY(qreal percentage READ percentage NOTIFY percentageChanged)
%%

$prototype=qreal percentage() const
$method=5,7,0|qreal|percentage|

%%
%% Q_PROPERTY(qreal startAngle READ startAngle NOTIFY startAngleChanged)
%%

$prototype=qreal startAngle() const
$method=5,7,0|qreal|startAngle|

%%
%% Q_PROPERTY(qreal angleSpan READ angleSpan NOTIFY angleSpanChanged)
%%

$prototype=qreal angleSpan() const
$method=5,7,0|qreal|angleSpan|

%%
%%
%%

$prototype=QPieSeries *series() const
$method=5,7,0|QPieSeries *|series|

%%
%% SIGNALS
%%

using namespace QtCharts;

$prototype=void angleSpanChanged()
$signalMethod=5,7,0|void|angleSpanChanged|

$prototype=void borderColorChanged()
$signalMethod=5,7,0|void|borderColorChanged|

$prototype=void borderWidthChanged()
$signalMethod=5,7,0|void|borderWidthChanged|

$prototype=void brushChanged()
$signalMethod=5,7,0|void|brushChanged|

$prototype=void clicked()
$signalMethod=5,7,0|void|clicked|

$prototype=void colorChanged()
$signalMethod=5,7,0|void|colorChanged|

$prototype=void doubleClicked()
$signalMethod=5,7,0|void|doubleClicked|

$prototype=void hovered( bool state )
$signalMethod=5,7,0|void|hovered|bool

$prototype=void labelBrushChanged()
$signalMethod=5,7,0|void|labelBrushChanged|

$prototype=void labelChanged()
$signalMethod=5,7,0|void|labelChanged|

$prototype=void labelColorChanged()
$signalMethod=5,7,0|void|labelColorChanged|

$prototype=void labelFontChanged()
$signalMethod=5,7,0|void|labelFontChanged|

$prototype=void labelVisibleChanged()
$signalMethod=5,7,0|void|labelVisibleChanged|

$prototype=void penChanged()
$signalMethod=5,7,0|void|penChanged|

$prototype=void percentageChanged()
$signalMethod=5,7,0|void|percentageChanged|

$prototype=void pressed()
$signalMethod=5,7,0|void|pressed|

$prototype=void released()
$signalMethod=5,7,0|void|released|

$prototype=void startAngleChanged()
$signalMethod=5,7,0|void|startAngleChanged|

$prototype=void valueChanged()
$signalMethod=5,7,0|void|valueChanged|

#pragma ENDDUMP
