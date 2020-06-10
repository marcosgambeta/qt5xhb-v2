%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDeclarative

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGraphicsObject,QDeclarativeParserStatus

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDeclarativeItem ( QDeclarativeItem * parent = nullptr )
$constructor=|new|QDeclarativeItem *=nullptr

$deleteMethod

$prototypeV2=qreal baselineOffset() const

$prototype=QDeclarativeItem * childAt ( qreal x, qreal y ) const
$method=|QDeclarativeItem *|childAt|qreal,qreal

$prototypeV2=QRectF childrenRect()

$prototypeV2=bool clip() const

$prototypeV2=void forceActiveFocus()

$prototypeV2=qreal implicitHeight() const

$prototypeV2=qreal implicitWidth() const

$prototypeV2=bool keepMouseGrab() const

$prototype=QScriptValue mapFromItem ( const QScriptValue & item, qreal x, qreal y ) const
$method=|QScriptValue|mapFromItem|const QScriptValue &,qreal,qreal

$prototype=QScriptValue mapToItem ( const QScriptValue & item, qreal x, qreal y ) const
$method=|QScriptValue|mapToItem|const QScriptValue &,qreal,qreal

$prototypeV2=QDeclarativeItem * parentItem() const

$prototype=void setBaselineOffset ( qreal )
$method=|void|setBaselineOffset|qreal

$prototype=void setClip ( bool )
$method=|void|setClip|bool

$prototype=void setKeepMouseGrab ( bool keep )
$method=|void|setKeepMouseGrab|bool

$prototype=void setParentItem ( QDeclarativeItem * parent )
$method=|void|setParentItem|QDeclarativeItem *

$prototype=void setSmooth ( bool smooth )
$method=|void|setSmooth|bool

$prototype=void setTransformOrigin ( TransformOrigin origin )
$method=|void|setTransformOrigin|QDeclarativeItem::TransformOrigin

$prototypeV2=bool smooth() const

$prototypeV2=QDeclarativeItem::TransformOrigin transformOrigin() const

#pragma ENDDUMP
