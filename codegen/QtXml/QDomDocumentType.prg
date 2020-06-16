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

$prototype=QDomDocumentType ()
$internalConstructor=|new1|

$prototype=QDomDocumentType ( const QDomDocumentType & n )
$internalConstructor=|new2|const QDomDocumentType &

/*
[1]QDomDocumentType ()
[2]QDomDocumentType ( const QDomDocumentType & n )
*/

HB_FUNC_STATIC( QDOMDOCUMENTTYPE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomDocumentType_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMDOCUMENTTYPE(1) )
  {
    QDomDocumentType_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QDomNamedNodeMap entities() const

$prototypeV2=QString internalSubset() const

$prototypeV2=QString name() const

$prototypeV2=QDomNode::NodeType nodeType() const

$prototypeV2=QDomNamedNodeMap notations() const

$prototypeV2=QString publicId() const

$prototypeV2=QString systemId() const

#pragma ENDDUMP
