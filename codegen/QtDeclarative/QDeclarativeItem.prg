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

$prototypeV2=QDeclarativeItem * childAt( qreal x, qreal y ) const

$prototypeV2=QRectF childrenRect()

$prototypeV2=bool clip() const

$prototypeV2=void forceActiveFocus()

$prototypeV2=qreal implicitHeight() const

$prototypeV2=qreal implicitWidth() const

$prototypeV2=bool keepMouseGrab() const

$prototypeV2=QScriptValue mapFromItem( const QScriptValue & item, qreal x, qreal y ) const

$prototypeV2=QScriptValue mapToItem( const QScriptValue & item, qreal x, qreal y ) const

$prototypeV2=QDeclarativeItem * parentItem() const

$prototypeV2=void setBaselineOffset( qreal )

$prototypeV2=void setClip( bool )

$prototypeV2=void setKeepMouseGrab( bool keep )

$prototypeV2=void setParentItem( QDeclarativeItem * parent )

$prototypeV2=void setSmooth( bool smooth )

$prototypeV2=void setTransformOrigin( QDeclarativeItem::TransformOrigin origin )

$prototypeV2=bool smooth() const

$prototypeV2=QDeclarativeItem::TransformOrigin transformOrigin() const

#pragma ENDDUMP
