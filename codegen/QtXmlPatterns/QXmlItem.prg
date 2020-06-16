%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtXmlPatterns

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QVariant>

$prototype=QXmlItem ()
$internalConstructor=|new1|

$prototype=QXmlItem ( const QXmlItem & other )
$internalConstructor=|new2|const QXmlItem &

$prototype=QXmlItem ( const QXmlNodeModelIndex & node )
$internalConstructor=|new3|const QXmlNodeModelIndex &

$prototype=QXmlItem ( const QVariant & atomicValue )
$internalConstructor=|new4|const QVariant &

/*
[1]QXmlItem ()
[2]QXmlItem ( const QXmlItem & other )
[3]QXmlItem ( const QXmlNodeModelIndex & node )
[4]QXmlItem ( const QVariant & atomicValue )
*/

HB_FUNC_STATIC( QXMLITEM_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlItem_new1();
  }
  else if( ISNUMPAR(1) && ISQXMLITEM(1) )
  {
    QXmlItem_new2();
  }
  else if( ISNUMPAR(1) && ISQXMLNODEMODELINDEX(1) )
  {
    QXmlItem_new3();
  }
  else if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    QXmlItem_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=bool isAtomicValue() const

$prototypeV2=bool isNode() const

$prototypeV2=bool isNull() const

$prototypeV2=QVariant toAtomicValue() const

$prototypeV2=QXmlNodeModelIndex toNodeModelIndex() const

$extraMethods

#pragma ENDDUMP
