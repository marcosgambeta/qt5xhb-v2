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

$prototypeV2=void setVisible( bool visible = true )

%%
%% Q_PROPERTY(bool lineVisible READ isLineVisible WRITE setLineVisible NOTIFY lineVisibleChanged)
%%

$prototypeV2=bool isLineVisible() const

$prototypeV2=void setLineVisible( bool visible = true )

%%
%% Q_PROPERTY(QPen linePen READ linePen WRITE setLinePen NOTIFY linePenChanged)
%%

$prototypeV2=QPen linePen() const

$prototypeV2=void setLinePen( const QPen & pen )

%%
%% Q_PROPERTY(QColor color READ linePenColor WRITE setLinePenColor NOTIFY colorChanged)
%%

$prototypeV2=QColor linePenColor() const

$prototypeV2=void setLinePenColor( QColor color )

%%
%% Q_PROPERTY(bool gridVisible READ isGridLineVisible WRITE setGridLineVisible NOTIFY gridVisibleChanged)
%%

$prototypeV2=bool isGridLineVisible() const

$prototypeV2=void setGridLineVisible( bool visible = true )

%%
%% Q_PROPERTY(QPen gridLinePen READ gridLinePen WRITE setGridLinePen NOTIFY gridLinePenChanged)
%%

$prototypeV2=QPen gridLinePen() const

$prototypeV2=void setGridLinePen( const QPen & pen )

%%
%% Q_PROPERTY(bool minorGridVisible READ isMinorGridLineVisible WRITE setMinorGridLineVisible NOTIFY minorGridVisibleChanged)
%%

$prototypeV2=bool isMinorGridLineVisible() const

$prototypeV2=void setMinorGridLineVisible( bool visible = true )

%%
%% Q_PROPERTY(QPen minorGridLinePen READ minorGridLinePen WRITE setMinorGridLinePen NOTIFY minorGridLinePenChanged)
%%

$prototypeV2=QPen minorGridLinePen() const

$prototypeV2=void setMinorGridLinePen( const QPen & pen )

%%
%% Q_PROPERTY(QColor gridLineColor READ gridLineColor WRITE setGridLineColor NOTIFY gridLineColorChanged)
%%

$prototypeV2=QColor gridLineColor()

$prototypeV2=void setGridLineColor( const QColor & color )

%%
%% Q_PROPERTY(QColor minorGridLineColor READ minorGridLineColor WRITE setMinorGridLineColor NOTIFY minorGridLineColorChanged)
%%

$prototypeV2=QColor minorGridLineColor()

$prototypeV2=void setMinorGridLineColor( const QColor & color )

%%
%% Q_PROPERTY(bool labelsVisible READ labelsVisible WRITE setLabelsVisible NOTIFY labelsVisibleChanged)
%%

$prototypeV2=bool labelsVisible() const

$prototypeV2=void setLabelsVisible( bool visible = true )

%%
%% Q_PROPERTY(QBrush labelsBrush READ labelsBrush WRITE setLabelsBrush NOTIFY labelsBrushChanged)
%%

$prototypeV2=QBrush labelsBrush() const

$prototypeV2=void setLabelsBrush( const QBrush & brush )

%%
%% Q_PROPERTY(QFont labelsFont READ labelsFont WRITE setLabelsFont NOTIFY labelsFontChanged)
%%

$prototypeV2=QFont labelsFont() const

$prototypeV2=void setLabelsFont( const QFont & font )

%%
%% Q_PROPERTY(int labelsAngle READ labelsAngle WRITE setLabelsAngle NOTIFY labelsAngleChanged)
%%

$prototypeV2=int labelsAngle() const

$prototypeV2=void setLabelsAngle( int angle )

%%
%% Q_PROPERTY(QColor labelsColor READ labelsColor WRITE setLabelsColor NOTIFY labelsColorChanged)
%%

$prototypeV2=QColor labelsColor() const

$prototypeV2=void setLabelsColor( QColor color )

%%
%% Q_PROPERTY(bool titleVisible READ isTitleVisible WRITE setTitleVisible NOTIFY titleVisibleChanged)
%%

$prototypeV2=bool isTitleVisible() const

$prototypeV2=void setTitleVisible( bool visible = true )

%%
%% Q_PROPERTY(QBrush titleBrush READ titleBrush WRITE setTitleBrush NOTIFY titleBrushChanged)
%%

$prototypeV2=QBrush titleBrush() const

$prototypeV2=void setTitleBrush( const QBrush & brush )

%%
%% Q_PROPERTY(QFont titleFont READ titleFont WRITE setTitleFont NOTIFY titleFontChanged)
%%

$prototypeV2=QFont titleFont() const

$prototypeV2=void setTitleFont( const QFont & font )

%%
%% Q_PROPERTY(QString titleText READ titleText WRITE setTitleText NOTIFY titleTextChanged)
%%

$prototypeV2=QString titleText() const

$prototypeV2=void setTitleText( const QString & title )

%%
%% Q_PROPERTY(bool shadesVisible READ shadesVisible WRITE setShadesVisible NOTIFY shadesVisibleChanged)
%%

$prototypeV2=bool shadesVisible() const

$prototypeV2=void setShadesVisible( bool visible = true )

%%
%% Q_PROPERTY(QPen shadesPen READ shadesPen WRITE setShadesPen NOTIFY shadesPenChanged)
%%

$prototypeV2=QPen shadesPen() const

$prototypeV2=void setShadesPen( const QPen & pen )

%%
%% Q_PROPERTY(QBrush shadesBrush READ shadesBrush WRITE setShadesBrush NOTIFY shadesBrushChanged)
%%

$prototypeV2=QBrush shadesBrush() const

$prototypeV2=void setShadesBrush( const QBrush & brush )

%%
%% Q_PROPERTY(QColor shadesColor READ shadesColor WRITE setShadesColor NOTIFY shadesColorChanged)
%%

$prototypeV2=QColor shadesColor() const

$prototypeV2=void setShadesColor( QColor color )

%%
%% Q_PROPERTY(QColor shadesBorderColor READ shadesBorderColor WRITE setShadesBorderColor NOTIFY shadesBorderColorChanged)
%%

$prototypeV2=QColor shadesBorderColor() const

$prototypeV2=void setShadesBorderColor( QColor color )

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

$prototypeV2=void setReverse( bool reverse = true )

%%
%%
%%

$prototypeV2=virtual QAbstractAxis::AxisType type() const = 0

$prototypeV2=void show()

$prototypeV2=void hide()

$prototypeV2=void setMin( const QVariant & min )

$prototypeV2=void setMax( const QVariant & max )

$prototypeV2=void setRange( const QVariant & min, const QVariant & max )

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
