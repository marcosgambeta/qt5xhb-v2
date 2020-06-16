%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtXml

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QDomNode

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDomEntity ()
$internalConstructor=|new1|

$prototype=QDomEntity ( const QDomEntity & x )
$internalConstructor=|new2|const QDomEntity &

/*
[1]QDomEntity ()
[2]QDomEntity ( const QDomEntity & x )
*/

HB_FUNC_STATIC( QDOMENTITY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomEntity_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMENTITY(1) )
  {
    QDomEntity_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QDomNode::NodeType nodeType() const

$prototypeV2=QString notationName() const

$prototypeV2=QString publicId() const

$prototypeV2=QString systemId() const

#pragma ENDDUMP
