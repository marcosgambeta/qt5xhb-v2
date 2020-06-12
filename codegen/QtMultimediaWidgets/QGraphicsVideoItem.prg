%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimediaWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGraphicsObject,QMediaBindableInterface

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsVideoItem(QGraphicsItem *parent = nullptr)
$constructor=|new|QGraphicsItem *=nullptr

$deleteMethod

$prototypeV2=QMediaObject * mediaObject() const

$prototypeV2=Qt::AspectRatioMode aspectRatioMode() const

$prototype=void setAspectRatioMode(Qt::AspectRatioMode mode)
$method=|void|setAspectRatioMode|Qt::AspectRatioMode

$prototypeV2=QPointF offset() const

$prototype=void setOffset(const QPointF &offset)
$method=|void|setOffset|const QPointF &

$prototypeV2=QSizeF size() const

$prototype=void setSize(const QSizeF &size)
$method=|void|setSize|const QSizeF &

$prototypeV2=QSizeF nativeSize() const

$prototypeV2=QRectF boundingRect() const

$prototype=void paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget = nullptr)
$method=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *=nullptr

%%
%% SIGNALS
%%

$prototype=void nativeSizeChanged( const QSizeF & size )
$signalMethod=|void|nativeSizeChanged|const QSizeF &

#pragma ENDDUMP
