%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization
$added=5,7,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=QScatterDataItem()
$internalConstructor=|new1|

$prototype=QScatterDataItem(const QVector3D &position)
$internalConstructor=|new2|const QVector3D &

$prototype=QScatterDataItem(const QVector3D &position, const QQuaternion &rotation)
$internalConstructor=|new3|const QVector3D &,const QQuaternion &

$prototype=QScatterDataItem(const QScatterDataItem &other)
$internalConstructor=|new4|const QScatterDataItem &

/*
[1]QScatterDataItem()
[2]QScatterDataItem(const QVector3D &position)
[3]QScatterDataItem(const QVector3D &position, const QQuaternion &rotation)
[4]QScatterDataItem(const QScatterDataItem &other)
*/

HB_FUNC_STATIC( QSCATTERDATAITEM_NEW )
{
  if( ISNUMPAR(0) )
  {
    QScatterDataItem_new1();
  }
  else if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    QScatterDataItem_new2();
  }
  else if( ISNUMPAR(2) && ISQVECTOR3D(1) && ISQQUATERNION(2) )
  {
    QScatterDataItem_new3();
  }
  else if( ISNUMPAR(1) && ISQSCATTERDATAITEM(1) )
  {
    QScatterDataItem_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QScatterDataItem()
$deleteMethod

$prototypeV2=void setPosition( const QVector3D & pos )

$prototypeV2=QVector3D position() const

$prototypeV2=void setRotation( const QQuaternion & rot )

$prototypeV2=QQuaternion rotation() const

$prototypeV2=void setX( float value )

$prototypeV2=void setY( float value )

$prototypeV2=void setZ( float value )

$prototypeV2=float x() const

$prototypeV2=float y() const

$prototypeV2=float z() const

$prototype=void createExtraData() [protected]

$extraMethods

#pragma ENDDUMP
