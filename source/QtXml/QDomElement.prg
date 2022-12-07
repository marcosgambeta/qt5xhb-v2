/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDOMATTR
REQUEST QDOMNAMEDNODEMAP
REQUEST QDOMNODELIST
#endif

CLASS QDomElement INHERIT QDomNode

   METHOD new
   METHOD delete
   METHOD attribute
   METHOD attributeNS
   METHOD attributeNode
   METHOD attributeNodeNS
   METHOD attributes
   METHOD elementsByTagName
   METHOD elementsByTagNameNS
   METHOD hasAttribute
   METHOD hasAttributeNS
   METHOD nodeType
   METHOD removeAttribute
   METHOD removeAttributeNS
   METHOD removeAttributeNode
   METHOD setAttribute1
   METHOD setAttribute2
   METHOD setAttribute3
   METHOD setAttribute4
   METHOD setAttribute5
   METHOD setAttribute6
   METHOD setAttribute7
   METHOD setAttribute
   METHOD setAttributeNS1
   METHOD setAttributeNS2
   METHOD setAttributeNS3
   METHOD setAttributeNS4
   METHOD setAttributeNS5
   METHOD setAttributeNS6
   METHOD setAttributeNS
   METHOD setAttributeNode
   METHOD setAttributeNodeNS
   METHOD setTagName
   METHOD tagName
   METHOD text

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDomElement
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtXml/QDomElement>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtXml/QDomElement>
#endif

HB_FUNC_STATIC( QDOMELEMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QDomElement()
    */
    auto obj = new QDomElement();
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISNUMPAR(1) && ISQDOMELEMENT(1) )
  {
    /*
    QDomElement( const QDomElement & x )
    */
    auto obj = new QDomElement( *PQDOMELEMENT(1) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QDOMELEMENT_DELETE )
{
  auto obj = static_cast<QDomElement*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QString attribute( const QString & name, const QString & defValue = QString() ) const
*/
HB_FUNC_STATIC( QDOMELEMENT_ATTRIBUTE )
{
  auto obj = static_cast<QDomElement*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && HB_ISCHAR(1) && ( HB_ISCHAR(2) || HB_ISNIL(2) ) )
    {
#endif
      RQSTRING( obj->attribute( PQSTRING(1), OPQSTRING( 2, QString() ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QString attributeNS( const QString nsURI, const QString & localName, const QString & defValue = QString() ) const
*/
HB_FUNC_STATIC( QDOMELEMENT_ATTRIBUTENS )
{
  auto obj = static_cast<QDomElement*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2, 3) && HB_ISCHAR(1) && HB_ISCHAR(2) && ( HB_ISCHAR(3) || HB_ISNIL(3) ) )
    {
#endif
      RQSTRING( obj->attributeNS( PQSTRING(1), PQSTRING(2), OPQSTRING( 3, QString() ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QDomAttr attributeNode( const QString & name )
*/
HB_FUNC_STATIC( QDOMELEMENT_ATTRIBUTENODE )
{
  auto obj = static_cast<QDomElement*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      auto ptr = new QDomAttr( obj->attributeNode( PQSTRING(1) ) );
      Qt5xHb::createReturnClass(ptr, "QDOMATTR", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QDomAttr attributeNodeNS( const QString & nsURI, const QString & localName )
*/
HB_FUNC_STATIC( QDOMELEMENT_ATTRIBUTENODENS )
{
  auto obj = static_cast<QDomElement*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2) )
    {
#endif
      auto ptr = new QDomAttr( obj->attributeNodeNS( PQSTRING(1), PQSTRING(2) ) );
      Qt5xHb::createReturnClass(ptr, "QDOMATTR", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QDomNamedNodeMap attributes() const
*/
HB_FUNC_STATIC( QDOMELEMENT_ATTRIBUTES )
{
  auto obj = static_cast<QDomElement*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QDomNamedNodeMap( obj->attributes() );
      Qt5xHb::createReturnClass(ptr, "QDOMNAMEDNODEMAP", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QDomNodeList elementsByTagName( const QString & tagname ) const
*/
HB_FUNC_STATIC( QDOMELEMENT_ELEMENTSBYTAGNAME )
{
  auto obj = static_cast<QDomElement*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      auto ptr = new QDomNodeList( obj->elementsByTagName( PQSTRING(1) ) );
      Qt5xHb::createReturnClass(ptr, "QDOMNODELIST", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QDomNodeList elementsByTagNameNS( const QString & nsURI, const QString & localName ) const
*/
HB_FUNC_STATIC( QDOMELEMENT_ELEMENTSBYTAGNAMENS )
{
  auto obj = static_cast<QDomElement*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2) )
    {
#endif
      auto ptr = new QDomNodeList( obj->elementsByTagNameNS( PQSTRING(1), PQSTRING(2) ) );
      Qt5xHb::createReturnClass(ptr, "QDOMNODELIST", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool hasAttribute( const QString & name ) const
*/
HB_FUNC_STATIC( QDOMELEMENT_HASATTRIBUTE )
{
  auto obj = static_cast<QDomElement*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RBOOL( obj->hasAttribute( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool hasAttributeNS( const QString & nsURI, const QString & localName ) const
*/
HB_FUNC_STATIC( QDOMELEMENT_HASATTRIBUTENS )
{
  auto obj = static_cast<QDomElement*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2) )
    {
#endif
      RBOOL( obj->hasAttributeNS( PQSTRING(1), PQSTRING(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QDomNode::NodeType nodeType() const
*/
HB_FUNC_STATIC( QDOMELEMENT_NODETYPE )
{
  auto obj = static_cast<QDomElement*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->nodeType() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void removeAttribute( const QString & name )
*/
HB_FUNC_STATIC( QDOMELEMENT_REMOVEATTRIBUTE )
{
  auto obj = static_cast<QDomElement*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->removeAttribute( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void removeAttributeNS( const QString & nsURI, const QString & localName )
*/
HB_FUNC_STATIC( QDOMELEMENT_REMOVEATTRIBUTENS )
{
  auto obj = static_cast<QDomElement*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2) )
    {
#endif
      obj->removeAttributeNS( PQSTRING(1), PQSTRING(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QDomAttr removeAttributeNode( const QDomAttr & oldAttr )
*/
HB_FUNC_STATIC( QDOMELEMENT_REMOVEATTRIBUTENODE )
{
  auto obj = static_cast<QDomElement*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDOMATTR(1) )
    {
#endif
      auto ptr = new QDomAttr( obj->removeAttributeNode( *PQDOMATTR(1) ) );
      Qt5xHb::createReturnClass(ptr, "QDOMATTR", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setAttribute( const QString & name, const QString & value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTE1 )
{
  auto obj = static_cast<QDomElement*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2) )
    {
#endif
      obj->setAttribute( PQSTRING(1), PQSTRING(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setAttribute( const QString & name, int value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTE2 )
{
  auto obj = static_cast<QDomElement*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2) )
    {
#endif
      obj->setAttribute( PQSTRING(1), PINT(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setAttribute( const QString & name, uint value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTE3 )
{
  auto obj = static_cast<QDomElement*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2) )
    {
#endif
      obj->setAttribute( PQSTRING(1), PUINT(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setAttribute( const QString & name, qlonglong value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTE4 )
{
  auto obj = static_cast<QDomElement*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2) )
    {
#endif
      obj->setAttribute( PQSTRING(1), PQLONGLONG(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setAttribute( const QString & name, qulonglong value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTE5 )
{
  auto obj = static_cast<QDomElement*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2) )
    {
#endif
      obj->setAttribute( PQSTRING(1), PQULONGLONG(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setAttribute( const QString & name, float value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTE6 )
{
  auto obj = static_cast<QDomElement*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2) )
    {
#endif
      obj->setAttribute( PQSTRING(1), PFLOAT(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setAttribute( const QString & name, double value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTE7 )
{
  auto obj = static_cast<QDomElement*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2) )
    {
#endif
      obj->setAttribute( PQSTRING(1), PDOUBLE(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTE )
{
  if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2) )
  {
    HB_FUNC_EXEC( QDOMELEMENT_SETATTRIBUTE1 );
  }
  else if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2) )
  {
    HB_FUNC_EXEC( QDOMELEMENT_SETATTRIBUTE2 );
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setAttributeNS( const QString nsURI, const QString & qName, const QString & value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTENS1 )
{
  auto obj = static_cast<QDomElement*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && HB_ISCHAR(1) && HB_ISCHAR(2) && HB_ISCHAR(3) )
    {
#endif
      obj->setAttributeNS( PQSTRING(1), PQSTRING(2), PQSTRING(3) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setAttributeNS( const QString nsURI, const QString & qName, int value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTENS2 )
{
  auto obj = static_cast<QDomElement*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && HB_ISCHAR(1) && HB_ISCHAR(2) && HB_ISNUM(3) )
    {
#endif
      obj->setAttributeNS( PQSTRING(1), PQSTRING(2), PINT(3) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setAttributeNS( const QString nsURI, const QString & qName, uint value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTENS3 )
{
  auto obj = static_cast<QDomElement*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && HB_ISCHAR(1) && HB_ISCHAR(2) && HB_ISNUM(3) )
    {
#endif
      obj->setAttributeNS( PQSTRING(1), PQSTRING(2), PUINT(3) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setAttributeNS( const QString nsURI, const QString & qName, qlonglong value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTENS4 )
{
  auto obj = static_cast<QDomElement*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && HB_ISCHAR(1) && HB_ISCHAR(2) && HB_ISNUM(3) )
    {
#endif
      obj->setAttributeNS( PQSTRING(1), PQSTRING(2), PQLONGLONG(3) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setAttributeNS( const QString nsURI, const QString & qName, qulonglong value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTENS5 )
{
  auto obj = static_cast<QDomElement*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && HB_ISCHAR(1) && HB_ISCHAR(2) && HB_ISNUM(3) )
    {
#endif
      obj->setAttributeNS( PQSTRING(1), PQSTRING(2), PQULONGLONG(3) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setAttributeNS( const QString nsURI, const QString & qName, double value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTENS6 )
{
  auto obj = static_cast<QDomElement*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && HB_ISCHAR(1) && HB_ISCHAR(2) && HB_ISNUM(3) )
    {
#endif
      obj->setAttributeNS( PQSTRING(1), PQSTRING(2), PDOUBLE(3) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTENS )
{
  if( ISNUMPAR(3) && HB_ISCHAR(1) && HB_ISCHAR(2) && HB_ISCHAR(3) )
  {
    HB_FUNC_EXEC( QDOMELEMENT_SETATTRIBUTENS1 );
  }
  else if( ISNUMPAR(3) && HB_ISCHAR(1) && HB_ISCHAR(2) && HB_ISNUM(3) )
  {
    HB_FUNC_EXEC( QDOMELEMENT_SETATTRIBUTENS2 );
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QDomAttr setAttributeNode( const QDomAttr & newAttr )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTENODE )
{
  auto obj = static_cast<QDomElement*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDOMATTR(1) )
    {
#endif
      auto ptr = new QDomAttr( obj->setAttributeNode( *PQDOMATTR(1) ) );
      Qt5xHb::createReturnClass(ptr, "QDOMATTR", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QDomAttr setAttributeNodeNS( const QDomAttr & newAttr )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTENODENS )
{
  auto obj = static_cast<QDomElement*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDOMATTR(1) )
    {
#endif
      auto ptr = new QDomAttr( obj->setAttributeNodeNS( *PQDOMATTR(1) ) );
      Qt5xHb::createReturnClass(ptr, "QDOMATTR", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setTagName( const QString & name )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETTAGNAME )
{
  auto obj = static_cast<QDomElement*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setTagName( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QString tagName() const
*/
HB_FUNC_STATIC( QDOMELEMENT_TAGNAME )
{
  auto obj = static_cast<QDomElement*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->tagName() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QString text() const
*/
HB_FUNC_STATIC( QDOMELEMENT_TEXT )
{
  auto obj = static_cast<QDomElement*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->text() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP
