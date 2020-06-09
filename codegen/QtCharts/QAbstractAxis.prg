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

$prototype=QAbstractAxis(QAbstractAxisPrivate &d, QObject *parent = nullptr) [protected]

$prototype=~QAbstractAxis()
$deleteMethod

%%
%% Q_PROPERTY(bool visible READ isVisible WRITE setVisible NOTIFY visibleChanged)
%%

$prototypeV2=bool isVisible() const

$prototype=void setVisible(bool visible = true)
$method=|void|setVisible|bool=true

%%
%% Q_PROPERTY(bool lineVisible READ isLineVisible WRITE setLineVisible NOTIFY lineVisibleChanged)
%%

$prototypeV2=bool isLineVisible() const

$prototype=void setLineVisible(bool visible = true)
$method=|void|setLineVisible|bool=true

%%
%% Q_PROPERTY(QPen linePen READ linePen WRITE setLinePen NOTIFY linePenChanged)
%%

$prototypeV2=QPen linePen() const

$prototype=void setLinePen(const QPen &pen)
$method=|void|setLinePen|const QPen &

%%
%% Q_PROPERTY(QColor color READ linePenColor WRITE setLinePenColor NOTIFY colorChanged)
%%

$prototypeV2=QColor linePenColor() const

$prototype=void setLinePenColor(QColor color)
$method=|void|setLinePenColor|QColor

%%
%% Q_PROPERTY(bool gridVisible READ isGridLineVisible WRITE setGridLineVisible NOTIFY gridVisibleChanged)
%%

$prototypeV2=bool isGridLineVisible() const

$prototype=void setGridLineVisible(bool visible = true)
$method=|void|setGridLineVisible|bool=true

%%
%% Q_PROPERTY(QPen gridLinePen READ gridLinePen WRITE setGridLinePen NOTIFY gridLinePenChanged)
%%

$prototypeV2=QPen gridLinePen() const

$prototype=void setGridLinePen(const QPen &pen)
$method=|void|setGridLinePen|const QPen &

%%
%% Q_PROPERTY(bool minorGridVisible READ isMinorGridLineVisible WRITE setMinorGridLineVisible NOTIFY minorGridVisibleChanged)
%%

$prototypeV2=bool isMinorGridLineVisible() const

$prototype=void setMinorGridLineVisible(bool visible = true)
$method=|void|setMinorGridLineVisible|bool=true

%%
%% Q_PROPERTY(QPen minorGridLinePen READ minorGridLinePen WRITE setMinorGridLinePen NOTIFY minorGridLinePenChanged)
%%

$prototypeV2=QPen minorGridLinePen() const

$prototype=void setMinorGridLinePen(const QPen &pen)
$method=|void|setMinorGridLinePen|const QPen &

%%
%% Q_PROPERTY(QColor gridLineColor READ gridLineColor WRITE setGridLineColor NOTIFY gridLineColorChanged)
%%

$prototypeV2=QColor gridLineColor()

$prototype=void setGridLineColor(const QColor &color)
$method=|void|setGridLineColor|const QColor &

%%
%% Q_PROPERTY(QColor minorGridLineColor READ minorGridLineColor WRITE setMinorGridLineColor NOTIFY minorGridLineColorChanged)
%%

$prototypeV2=QColor minorGridLineColor()

$prototype=void setMinorGridLineColor(const QColor &color)
$method=|void|setMinorGridLineColor|const QColor &

%%
%% Q_PROPERTY(bool labelsVisible READ labelsVisible WRITE setLabelsVisible NOTIFY labelsVisibleChanged)
%%

$prototypeV2=bool labelsVisible() const

$prototype=void setLabelsVisible(bool visible = true)
$method=|void|setLabelsVisible|bool=true

%%
%% Q_PROPERTY(QBrush labelsBrush READ labelsBrush WRITE setLabelsBrush NOTIFY labelsBrushChanged)
%%

$prototypeV2=QBrush labelsBrush() const

$prototype=void setLabelsBrush(const QBrush &brush)
$method=|void|setLabelsBrush|const QBrush &

%%
%% Q_PROPERTY(QFont labelsFont READ labelsFont WRITE setLabelsFont NOTIFY labelsFontChanged)
%%

$prototypeV2=QFont labelsFont() const

$prototype=void setLabelsFont(const QFont &font)
$method=|void|setLabelsFont|const QFont &

%%
%% Q_PROPERTY(int labelsAngle READ labelsAngle WRITE setLabelsAngle NOTIFY labelsAngleChanged)
%%

$prototypeV2=int labelsAngle() const

$prototype=void setLabelsAngle(int angle)
$method=|void|setLabelsAngle|int

%%
%% Q_PROPERTY(QColor labelsColor READ labelsColor WRITE setLabelsColor NOTIFY labelsColorChanged)
%%

$prototypeV2=QColor labelsColor() const

$prototype=void setLabelsColor(QColor color)
$method=|void|setLabelsColor|QColor

%%
%% Q_PROPERTY(bool titleVisible READ isTitleVisible WRITE setTitleVisible NOTIFY titleVisibleChanged)
%%

$prototypeV2=bool isTitleVisible() const

$prototype=void setTitleVisible(bool visible = true)
$method=|void|setTitleVisible|bool=true

%%
%% Q_PROPERTY(QBrush titleBrush READ titleBrush WRITE setTitleBrush NOTIFY titleBrushChanged)
%%

$prototypeV2=QBrush titleBrush() const

$prototype=void setTitleBrush(const QBrush &brush)
$method=|void|setTitleBrush|const QBrush &

%%
%% Q_PROPERTY(QFont titleFont READ titleFont WRITE setTitleFont NOTIFY titleFontChanged)
%%

$prototypeV2=QFont titleFont() const

$prototype=void setTitleFont(const QFont &font)
$method=|void|setTitleFont|const QFont &

%%
%% Q_PROPERTY(QString titleText READ titleText WRITE setTitleText NOTIFY titleTextChanged)
%%

$prototypeV2=QString titleText() const

$prototype=void setTitleText(const QString &title)
$method=|void|setTitleText|const QString &

%%
%% Q_PROPERTY(bool shadesVisible READ shadesVisible WRITE setShadesVisible NOTIFY shadesVisibleChanged)
%%

$prototypeV2=bool shadesVisible() const

$prototype=void setShadesVisible(bool visible = true)
$method=|void|setShadesVisible|bool=true

%%
%% Q_PROPERTY(QPen shadesPen READ shadesPen WRITE setShadesPen NOTIFY shadesPenChanged)
%%

$prototypeV2=QPen shadesPen() const

$prototype=void setShadesPen(const QPen &pen)
$method=|void|setShadesPen|const QPen &

%%
%% Q_PROPERTY(QBrush shadesBrush READ shadesBrush WRITE setShadesBrush NOTIFY shadesBrushChanged)
%%

$prototypeV2=QBrush shadesBrush() const

$prototype=void setShadesBrush(const QBrush &brush)
$method=|void|setShadesBrush|const QBrush &

%%
%% Q_PROPERTY(QColor shadesColor READ shadesColor WRITE setShadesColor NOTIFY shadesColorChanged)
%%

$prototypeV2=QColor shadesColor() const

$prototype=void setShadesColor(QColor color)
$method=|void|setShadesColor|QColor

%%
%% Q_PROPERTY(QColor shadesBorderColor READ shadesBorderColor WRITE setShadesBorderColor NOTIFY shadesBorderColorChanged)
%%

$prototypeV2=QColor shadesBorderColor() const

$prototype=void setShadesBorderColor(QColor color)
$method=|void|setShadesBorderColor|QColor

%%
%% Q_PROPERTY(Qt::Orientation orientation READ orientation)
%%

$prototypeV2=Qt::Orientation orientation() const

%%
%% Q_PROPERTY(Qt::Alignment alignment READ alignment)
%%

$prototypeV2=Qt::Alignment alignment() const

%%
%% Q_PROPERTY(bool reverse READ isReverse WRITE setReverse NOTIFY reverseChanged)
%%

$prototypeV2=bool isReverse() const

$prototype=void setReverse(bool reverse = true)
$method=|void|setReverse|bool=true

%%
%%
%%

$prototypeV2=virtual QAbstractAxis::AxisType type() const = 0

$prototypeV2=void show()

$prototypeV2=void hide()

$prototype=void setMin(const QVariant &min)
$method=|void|setMin|const QVariant &

$prototype=void setMax(const QVariant &max)
$method=|void|setMax|const QVariant &

$prototype=void setRange(const QVariant &min, const QVariant &max)
$method=|void|setRange|const QVariant &,const QVariant &

%%
%% SIGNALS
%%

$prototype=void colorChanged( QColor color )
$signalMethod=|void|colorChanged|QColor

$prototype=void gridLineColorChanged( const QColor & color )
$signalMethod=|void|gridLineColorChanged|const QColor &

$prototype=void gridLinePenChanged( const QPen & pen )
$signalMethod=|void|gridLinePenChanged|const QPen &

$prototype=void gridVisibleChanged( bool visible )
$signalMethod=|void|gridVisibleChanged|bool

$prototype=void labelsAngleChanged( int angle )
$signalMethod=|void|labelsAngleChanged|int

$prototype=void labelsBrushChanged( const QBrush & brush )
$signalMethod=|void|labelsBrushChanged|const QBrush &

$prototype=void labelsColorChanged( QColor color )
$signalMethod=|void|labelsColorChanged|QColor

$prototype=void labelsFontChanged( const QFont & pen )
$signalMethod=|void|labelsFontChanged|const QFont &

$prototype=void labelsVisibleChanged( bool visible )
$signalMethod=|void|labelsVisibleChanged|bool

$prototype=void linePenChanged( const QPen & pen )
$signalMethod=|void|linePenChanged|const QPen &

$prototype=void lineVisibleChanged( bool visible )
$signalMethod=|void|lineVisibleChanged|bool

$prototype=void minorGridLineColorChanged( const QColor & color )
$signalMethod=|void|minorGridLineColorChanged|const QColor &

$prototype=void minorGridLinePenChanged( const QPen & pen )
$signalMethod=|void|minorGridLinePenChanged|const QPen &

$prototype=void minorGridVisibleChanged( bool visible )
$signalMethod=|void|minorGridVisibleChanged|bool

$prototype=void reverseChanged( bool reverse )
$signalMethod=|void|reverseChanged|bool

$prototype=void shadesBorderColorChanged( QColor color )
$signalMethod=|void|shadesBorderColorChanged|QColor

$prototype=void shadesBrushChanged( const QBrush & brush )
$signalMethod=|void|shadesBrushChanged|const QBrush &

$prototype=void shadesColorChanged( QColor color )
$signalMethod=|void|shadesColorChanged|QColor

$prototype=void shadesPenChanged( const QPen & pen )
$signalMethod=|void|shadesPenChanged|const QPen &

$prototype=void shadesVisibleChanged( bool visible )
$signalMethod=|void|shadesVisibleChanged|bool

$prototype=void titleBrushChanged( const QBrush & brush )
$signalMethod=|void|titleBrushChanged|const QBrush &

$prototype=void titleFontChanged( const QFont & font )
$signalMethod=|void|titleFontChanged|const QFont &

$prototype=void titleTextChanged( const QString & title )
$signalMethod=|void|titleTextChanged|const QString &

$prototype=void titleVisibleChanged( bool visible )
$signalMethod=|void|titleVisibleChanged|bool

$prototype=void visibleChanged( bool visible )
$signalMethod=|void|visibleChanged|bool

#pragma ENDDUMP
