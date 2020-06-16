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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDomNode ()
$internalConstructor=|new1|

$prototype=QDomNode ( const QDomNode & n )
$internalConstructor=|new2|const QDomNode &

/*
[1]QDomNode ()
[2]QDomNode ( const QDomNode & n )
*/

HB_FUNC_STATIC( QDOMNODE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomNode_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMNODE(1) )
  {
    QDomNode_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QDomNode appendChild ( const QDomNode & newChild )
$method=|QDomNode|appendChild|const QDomNode &

$prototypeV2=QDomNamedNodeMap attributes() const

$prototypeV2=QDomNodeList childNodes() const

$prototypeV2=void clear()

$prototype=QDomNode cloneNode ( bool deep = true ) const
$method=|QDomNode|cloneNode|bool=true

$prototypeV2=int columnNumber() const

$prototypeV2=QDomNode firstChild() const

$prototype=QDomElement firstChildElement ( const QString & tagName = QString() ) const
$method=|QDomElement|firstChildElement|const QString &=QString()

$prototypeV2=bool hasAttributes() const

$prototypeV2=bool hasChildNodes() const

$prototype=QDomNode insertAfter ( const QDomNode & newChild, const QDomNode & refChild )
$method=|QDomNode|insertAfter|const QDomNode &,const QDomNode &

$prototype=QDomNode insertBefore ( const QDomNode & newChild, const QDomNode & refChild )
$method=|QDomNode|insertBefore|const QDomNode &,const QDomNode &

$prototypeV2=bool isAttr() const

$prototypeV2=bool isCDATASection() const

$prototypeV2=bool isCharacterData() const

$prototypeV2=bool isComment() const

$prototypeV2=bool isDocument() const

$prototypeV2=bool isDocumentFragment() const

$prototypeV2=bool isDocumentType() const

$prototypeV2=bool isElement() const

$prototypeV2=bool isEntity() const

$prototypeV2=bool isEntityReference() const

$prototypeV2=bool isNotation() const

$prototypeV2=bool isNull() const

$prototypeV2=bool isProcessingInstruction() const

$prototype=bool isSupported ( const QString & feature, const QString & version ) const
$method=|bool|isSupported|const QString &,const QString &

$prototypeV2=bool isText() const

$prototypeV2=QDomNode lastChild() const

$prototype=QDomElement lastChildElement ( const QString & tagName = QString() ) const
$method=|QDomElement|lastChildElement|const QString &=QString()

$prototypeV2=int lineNumber() const

$prototypeV2=QString localName() const

$prototype=QDomNode namedItem ( const QString & name ) const
$method=|QDomNode|namedItem|const QString &

$prototypeV2=QString namespaceURI() const

$prototypeV2=QDomNode nextSibling() const

$prototype=QDomElement nextSiblingElement ( const QString & tagName = QString() ) const
$method=|QDomElement|nextSiblingElement|const QString &=QString()

$prototypeV2=QString nodeName() const

$prototypeV2=QDomNode::NodeType nodeType() const

$prototypeV2=QString nodeValue() const

$prototypeV2=void normalize()

$prototypeV2=QDomDocument ownerDocument() const

$prototypeV2=QDomNode parentNode() const

$prototypeV2=QString prefix() const

$prototypeV2=QDomNode previousSibling() const

$prototype=QDomElement previousSiblingElement ( const QString & tagName = QString() ) const
$method=|QDomElement|previousSiblingElement|const QString &=QString()

$prototype=QDomNode removeChild ( const QDomNode & oldChild )
$method=|QDomNode|removeChild|const QDomNode &

$prototype=QDomNode replaceChild ( const QDomNode & newChild, const QDomNode & oldChild )
$method=|QDomNode|replaceChild|const QDomNode &,const QDomNode &

$prototype=void save ( QTextStream & str, int indent ) const
$internalMethod=|void|save,save1|QTextStream &,int

$prototype=void save ( QTextStream & str, int indent, EncodingPolicy encodingPolicy ) const
$internalMethod=|void|save,save2|QTextStream &,int,QDomNode::EncodingPolicy

/*
[1]void save ( QTextStream & str, int indent ) const
[2]void save ( QTextStream & str, int indent, EncodingPolicy encodingPolicy ) const
*/

HB_FUNC_STATIC( QDOMNODE_SAVE )
{
  if( ISNUMPAR(2) && ISQTEXTSTREAM(1) && ISNUM(2) )
  {
    QDomNode_save1();
  }
  else if( ISNUMPAR(3) && ISQTEXTSTREAM(1) && ISNUM(2) && ISNUM(3) )
  {
    QDomNode_save2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=save

$prototype=void setNodeValue ( const QString & v )
$method=|void|setNodeValue|const QString &

$prototype=void setPrefix ( const QString & pre )
$method=|void|setPrefix|const QString &

$prototypeV2=QDomAttr toAttr() const

$prototypeV2=QDomCDATASection toCDATASection() const

$prototypeV2=QDomCharacterData toCharacterData() const

$prototypeV2=QDomComment toComment() const

$prototypeV2=QDomDocument toDocument() const

$prototypeV2=QDomDocumentFragment toDocumentFragment() const

$prototypeV2=QDomDocumentType toDocumentType() const

$prototypeV2=QDomElement toElement() const

$prototypeV2=QDomEntity toEntity() const

$prototypeV2=QDomEntityReference toEntityReference() const

$prototypeV2=QDomNotation toNotation() const

$prototypeV2=QDomProcessingInstruction toProcessingInstruction() const

$prototypeV2=QDomText toText() const

$extraMethods

#pragma ENDDUMP
