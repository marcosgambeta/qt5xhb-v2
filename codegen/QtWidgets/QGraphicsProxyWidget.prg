%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGraphicsWidget

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsProxyWidget ( QGraphicsItem * parent = nullptr, Qt::WindowFlags wFlags = 0 )
$constructor=|new|QGraphicsItem *=nullptr,Qt::WindowFlags=0

$deleteMethod

$prototype=QGraphicsProxyWidget * createProxyForChildWidget ( QWidget * child )
$method=|QGraphicsProxyWidget *|createProxyForChildWidget|QWidget *

$prototype=void setWidget ( QWidget * widget )
$method=|void|setWidget|QWidget *

$prototype=QRectF subWidgetRect ( const QWidget * widget ) const
$method=|QRectF|subWidgetRect|const QWidget *

$prototypeV2=QWidget * widget() const

$prototype=virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget )
$virtualMethod=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *

$prototype=virtual void setGeometry ( const QRectF & rect )
$virtualMethod=|void|setGeometry|const QRectF &

$prototypeV2=virtual int type() const

#pragma ENDDUMP
