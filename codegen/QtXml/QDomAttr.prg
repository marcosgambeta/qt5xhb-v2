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

$prototype=QDomAttr ()
$internalConstructor=|new1|

$prototype=QDomAttr ( const QDomAttr & x )
$internalConstructor=|new2|const QDomAttr &

/*
[1]QDomAttr ()
[2]QDomAttr ( const QDomAttr & x )
*/

HB_FUNC_STATIC( QDOMATTR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomAttr_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMATTR(1) )
  {
    QDomAttr_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QString name() const

$prototypeV2=QDomNode::NodeType nodeType() const

$prototypeV2=QDomElement ownerElement() const

$prototype=void setValue ( const QString & v )
$method=|void|setValue|const QString &

$prototypeV2=bool specified() const

$prototypeV2=QString value() const

#pragma ENDDUMP
