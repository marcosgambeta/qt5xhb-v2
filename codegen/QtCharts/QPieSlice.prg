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

#include <QtCharts/QPieSeries>

using namespace QtCharts;

$prototype=explicit QPieSlice(QObject *parent = nullptr)
$internalConstructor=|new1|QObject *=nullptr

$prototype=QPieSlice(QString label, qreal value, QObject *parent = nullptr)
$internalConstructor=|new2|QString,qreal,QObject *=nullptr

//[1]explicit QPieSlice(QObject *parent = nullptr)
//[2]QPieSlice(QString label, qreal value, QObject *parent = nullptr)

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
$deleteMethod

%%
%% Q_PROPERTY(QString label READ label WRITE setLabel NOTIFY labelChanged)
%%

$prototype=QString label() const
$method=|QString|label|

$prototype=void setLabel(QString label)
$method=|void|setLabel|QString

%%
%% Q_PROPERTY(qreal value READ value WRITE setValue NOTIFY valueChanged)
%%

$prototype=qreal value() const
$method=|qreal|value|

$prototype=void setValue(qreal value)
$method=|void|setValue|qreal

%%
%% Q_PROPERTY(bool labelVisible READ isLabelVisible WRITE setLabelVisible NOTIFY labelVisibleChanged)
%%

$prototype=bool isLabelVisible() const
$method=|bool|isLabelVisible|

$prototype=void setLabelVisible(bool visible = true)
$method=|void|setLabelVisible|bool=true

%%
%% Q_PROPERTY(LabelPosition labelPosition READ labelPosition WRITE setLabelPosition)
%%

$prototype=LabelPosition labelPosition()
$method=|QPieSlice::LabelPosition|labelPosition|

$prototype=void setLabelPosition(LabelPosition position)
$method=|void|setLabelPosition|QPieSlice::LabelPosition

%%
%% Q_PROPERTY(bool exploded READ isExploded WRITE setExploded)
%%

$prototype=bool isExploded() const
$method=|bool|isExploded|

$prototype=void setExploded(bool exploded = true)
$method=|void|setExploded|bool=true

%%
%% Q_PROPERTY(QPen pen READ pen WRITE setPen NOTIFY penChanged)
%%

$prototype=QPen pen() const
$method=|QPen|pen|

$prototype=void setPen(const QPen &pen)
$method=|void|setPen|const QPen &

%%
%% Q_PROPERTY(QColor borderColor READ borderColor WRITE setBorderColor NOTIFY borderColorChanged)
%%

$prototype=QColor borderColor()
$method=|QColor|borderColor|

$prototype=void setBorderColor(QColor color)
$method=|void|setBorderColor|QColor

%%
%% Q_PROPERTY(int borderWidth READ borderWidth WRITE setBorderWidth NOTIFY borderWidthChanged)
%%

$prototype=int borderWidth()
$method=|int|borderWidth|

$prototype=void setBorderWidth(int width)
$method=|void|setBorderWidth|int

%%
%% Q_PROPERTY(QBrush brush READ brush WRITE setBrush NOTIFY brushChanged)
%%

$prototype=QBrush brush() const
$method=|QBrush|brush|

$prototype=void setBrush(const QBrush &brush)
$method=|void|setBrush|const QBrush &

%%
%% Q_PROPERTY(QColor color READ color WRITE setColor NOTIFY colorChanged)
%%

$prototype=QColor color()
$method=|QColor|color|

$prototype=void setColor(QColor color)
$method=|void|setColor|QColor

%%
%% Q_PROPERTY(QBrush labelBrush READ labelBrush WRITE setLabelBrush NOTIFY labelBrushChanged)
%%

$prototype=QBrush labelBrush() const
$method=|QBrush|labelBrush|

$prototype=void setLabelBrush(const QBrush &brush)
$method=|void|setLabelBrush|const QBrush &

%%
%% Q_PROPERTY(QColor labelColor READ labelColor WRITE setLabelColor NOTIFY labelColorChanged)
%%

$prototype=QColor labelColor()
$method=|QColor|labelColor|

$prototype=void setLabelColor(QColor color)
$method=|void|setLabelColor|QColor

%%
%% Q_PROPERTY(QFont labelFont READ labelFont WRITE setLabelFont NOTIFY labelFontChanged)
%%

$prototype=QFont labelFont() const
$method=|QFont|labelFont|

$prototype=void setLabelFont(const QFont &font)
$method=|void|setLabelFont|const QFont &

%%
%% Q_PROPERTY(qreal labelArmLengthFactor READ labelArmLengthFactor WRITE setLabelArmLengthFactor)
%%

$prototype=qreal labelArmLengthFactor() const
$method=|qreal|labelArmLengthFactor|

$prototype=void setLabelArmLengthFactor(qreal factor)
$method=|void|setLabelArmLengthFactor|qreal

%%
%% Q_PROPERTY(qreal explodeDistanceFactor READ explodeDistanceFactor WRITE setExplodeDistanceFactor)
%%

$prototype=qreal explodeDistanceFactor() const
$method=|qreal|explodeDistanceFactor|

$prototype=void setExplodeDistanceFactor(qreal factor)
$method=|void|setExplodeDistanceFactor|qreal

%%
%% Q_PROPERTY(qreal percentage READ percentage NOTIFY percentageChanged)
%%

$prototype=qreal percentage() const
$method=|qreal|percentage|

%%
%% Q_PROPERTY(qreal startAngle READ startAngle NOTIFY startAngleChanged)
%%

$prototype=qreal startAngle() const
$method=|qreal|startAngle|

%%
%% Q_PROPERTY(qreal angleSpan READ angleSpan NOTIFY angleSpanChanged)
%%

$prototype=qreal angleSpan() const
$method=|qreal|angleSpan|

%%
%%
%%

$prototype=QPieSeries *series() const
$method=|QPieSeries *|series|

%%
%% SIGNALS
%%

%% using namespace QtCharts;

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
