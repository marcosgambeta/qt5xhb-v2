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

$beginClassFrom=QGraphicsLayoutItem

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=void activate()

$prototypeV2=virtual int count() const = 0

$prototypeV2=virtual void invalidate()

$prototypeV2=bool isActivated() const

$prototype=virtual QGraphicsLayoutItem * itemAt ( int i ) const = 0
$virtualMethod=|QGraphicsLayoutItem *|itemAt|int

$prototype=virtual void removeAt ( int index ) = 0
$virtualMethod=|void|removeAt|int

$prototype=void setContentsMargins ( qreal left, qreal top, qreal right, qreal bottom )
$method=|void|setContentsMargins|qreal,qreal,qreal,qreal

$prototype=virtual void widgetEvent ( QEvent * e )
$virtualMethod=|void|widgetEvent|QEvent *

$prototype=virtual void getContentsMargins ( qreal * left, qreal * top, qreal * right, qreal * bottom ) const
$virtualMethod=|void|getContentsMargins|qreal *,qreal *,qreal *,qreal *

$prototypeV2=virtual void updateGeometry()

$prototypeV2=static bool instantInvalidatePropagation()

$prototype=static void setInstantInvalidatePropagation ( bool enable )
$staticMethod=|void|setInstantInvalidatePropagation|bool

#pragma ENDDUMP
