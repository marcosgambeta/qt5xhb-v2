//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QDOMATTR
REQUEST QDOMCDATASECTION
REQUEST QDOMCOMMENT
REQUEST QDOMDOCUMENTFRAGMENT
REQUEST QDOMDOCUMENTTYPE
REQUEST QDOMELEMENT
REQUEST QDOMENTITYREFERENCE
REQUEST QDOMIMPLEMENTATION
REQUEST QDOMNODE
REQUEST QDOMNODELIST
REQUEST QDOMPROCESSINGINSTRUCTION
REQUEST QDOMTEXT
#endif

CLASS QDomDocument INHERIT QDomNode

   METHOD new
   METHOD delete
   METHOD createAttribute
   METHOD createAttributeNS
   METHOD createCDATASection
   METHOD createComment
   METHOD createDocumentFragment
   METHOD createElement
   METHOD createElementNS
   METHOD createEntityReference
   METHOD createProcessingInstruction
   METHOD createTextNode
   METHOD doctype
   METHOD documentElement
   METHOD elementById
   METHOD elementsByTagName
   METHOD elementsByTagNameNS
   METHOD implementation
   METHOD importNode
   METHOD nodeType
   METHOD setContent
   METHOD toByteArray
   METHOD toString

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDomDocument
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtXml/QDomDocument>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtXml/QDomDocument>
#endif

HB_FUNC_STATIC(QDOMDOCUMENT_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QDomDocument()
    */
    auto obj = new QDomDocument();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    /*
    QDomDocument(const QString &name)
    */
    auto obj = new QDomDocument(PQSTRING(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQDOMDOCUMENTTYPE(1))
  {
    /*
    QDomDocument(const QDomDocumentType &doctype)
    */
    auto obj = new QDomDocument(*PQDOMDOCUMENTTYPE(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQDOMDOCUMENT(1))
  {
    /*
    QDomDocument(const QDomDocument &x)
    */
    auto obj = new QDomDocument(*PQDOMDOCUMENT(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QDOMDOCUMENT_DELETE)
{
  auto obj = static_cast<QDomDocument *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    delete obj;
    obj = nullptr;
    auto ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QDomAttr createAttribute(const QString &name)
*/
HB_FUNC_STATIC(QDOMDOCUMENT_CREATEATTRIBUTE)
{
  auto obj = static_cast<QDomDocument *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      auto ptr = new QDomAttr(obj->createAttribute(PQSTRING(1)));
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
QDomAttr createAttributeNS(const QString &nsURI, const QString &qName)
*/
HB_FUNC_STATIC(QDOMDOCUMENT_CREATEATTRIBUTENS)
{
  auto obj = static_cast<QDomDocument *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
    {
#endif
      auto ptr = new QDomAttr(obj->createAttributeNS(PQSTRING(1), PQSTRING(2)));
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
QDomCDATASection createCDATASection(const QString &value)
*/
HB_FUNC_STATIC(QDOMDOCUMENT_CREATECDATASECTION)
{
  auto obj = static_cast<QDomDocument *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      auto ptr = new QDomCDATASection(obj->createCDATASection(PQSTRING(1)));
      Qt5xHb::createReturnClass(ptr, "QDOMCDATASECTION", true);
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
QDomComment createComment(const QString &value)
*/
HB_FUNC_STATIC(QDOMDOCUMENT_CREATECOMMENT)
{
  auto obj = static_cast<QDomDocument *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      auto ptr = new QDomComment(obj->createComment(PQSTRING(1)));
      Qt5xHb::createReturnClass(ptr, "QDOMCOMMENT", true);
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
QDomDocumentFragment createDocumentFragment()
*/
HB_FUNC_STATIC(QDOMDOCUMENT_CREATEDOCUMENTFRAGMENT)
{
  auto obj = static_cast<QDomDocument *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QDomDocumentFragment(obj->createDocumentFragment());
      Qt5xHb::createReturnClass(ptr, "QDOMDOCUMENTFRAGMENT", true);
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
QDomElement createElement(const QString &tagName)
*/
HB_FUNC_STATIC(QDOMDOCUMENT_CREATEELEMENT)
{
  auto obj = static_cast<QDomDocument *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      auto ptr = new QDomElement(obj->createElement(PQSTRING(1)));
      Qt5xHb::createReturnClass(ptr, "QDOMELEMENT", true);
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
QDomElement createElementNS(const QString &nsURI, const QString &qName)
*/
HB_FUNC_STATIC(QDOMDOCUMENT_CREATEELEMENTNS)
{
  auto obj = static_cast<QDomDocument *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
    {
#endif
      auto ptr = new QDomElement(obj->createElementNS(PQSTRING(1), PQSTRING(2)));
      Qt5xHb::createReturnClass(ptr, "QDOMELEMENT", true);
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
QDomEntityReference createEntityReference(const QString &name)
*/
HB_FUNC_STATIC(QDOMDOCUMENT_CREATEENTITYREFERENCE)
{
  auto obj = static_cast<QDomDocument *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      auto ptr = new QDomEntityReference(obj->createEntityReference(PQSTRING(1)));
      Qt5xHb::createReturnClass(ptr, "QDOMENTITYREFERENCE", true);
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
QDomProcessingInstruction createProcessingInstruction(const QString &target, const QString &data)
*/
HB_FUNC_STATIC(QDOMDOCUMENT_CREATEPROCESSINGINSTRUCTION)
{
  auto obj = static_cast<QDomDocument *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
    {
#endif
      auto ptr = new QDomProcessingInstruction(obj->createProcessingInstruction(PQSTRING(1), PQSTRING(2)));
      Qt5xHb::createReturnClass(ptr, "QDOMPROCESSINGINSTRUCTION", true);
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
QDomText createTextNode(const QString &value)
*/
HB_FUNC_STATIC(QDOMDOCUMENT_CREATETEXTNODE)
{
  auto obj = static_cast<QDomDocument *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      auto ptr = new QDomText(obj->createTextNode(PQSTRING(1)));
      Qt5xHb::createReturnClass(ptr, "QDOMTEXT", true);
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
QDomDocumentType doctype() const
*/
HB_FUNC_STATIC(QDOMDOCUMENT_DOCTYPE)
{
  auto obj = static_cast<QDomDocument *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QDomDocumentType(obj->doctype());
      Qt5xHb::createReturnClass(ptr, "QDOMDOCUMENTTYPE", true);
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
QDomElement documentElement() const
*/
HB_FUNC_STATIC(QDOMDOCUMENT_DOCUMENTELEMENT)
{
  auto obj = static_cast<QDomDocument *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QDomElement(obj->documentElement());
      Qt5xHb::createReturnClass(ptr, "QDOMELEMENT", true);
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
QDomElement elementById(const QString &elementId)
*/
HB_FUNC_STATIC(QDOMDOCUMENT_ELEMENTBYID)
{
  auto obj = static_cast<QDomDocument *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      auto ptr = new QDomElement(obj->elementById(PQSTRING(1)));
      Qt5xHb::createReturnClass(ptr, "QDOMELEMENT", true);
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
QDomNodeList elementsByTagName(const QString &tagname) const
*/
HB_FUNC_STATIC(QDOMDOCUMENT_ELEMENTSBYTAGNAME)
{
  auto obj = static_cast<QDomDocument *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      auto ptr = new QDomNodeList(obj->elementsByTagName(PQSTRING(1)));
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
QDomNodeList elementsByTagNameNS(const QString &nsURI, const QString &localName)
*/
HB_FUNC_STATIC(QDOMDOCUMENT_ELEMENTSBYTAGNAMENS)
{
  auto obj = static_cast<QDomDocument *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
    {
#endif
      auto ptr = new QDomNodeList(obj->elementsByTagNameNS(PQSTRING(1), PQSTRING(2)));
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
QDomImplementation implementation() const
*/
HB_FUNC_STATIC(QDOMDOCUMENT_IMPLEMENTATION)
{
  auto obj = static_cast<QDomDocument *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QDomImplementation(obj->implementation());
      Qt5xHb::createReturnClass(ptr, "QDOMIMPLEMENTATION", true);
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
QDomNode importNode(const QDomNode &importedNode, bool deep)
*/
HB_FUNC_STATIC(QDOMDOCUMENT_IMPORTNODE)
{
  auto obj = static_cast<QDomDocument *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && ISQDOMNODE(1) && HB_ISLOG(2))
    {
#endif
      auto ptr = new QDomNode(obj->importNode(*PQDOMNODE(1), PBOOL(2)));
      Qt5xHb::createReturnClass(ptr, "QDOMNODE", true);
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
HB_FUNC_STATIC(QDOMDOCUMENT_NODETYPE)
{
  auto obj = static_cast<QDomDocument *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->nodeType());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QDOMDOCUMENT_SETCONTENT)
{
  if (ISBETWEEN(2, 5) && ISQBYTEARRAY(1) && HB_ISLOG(2) && (HB_ISCHAR(3) || HB_ISNIL(3)) &&
      ISNUMORNIL(4) && ISNUMORNIL(5))
  {
    /*
    bool setContent(const QByteArray &data, bool namespaceProcessing, QString * errorMsg = nullptr, int * errorLine =
    nullptr, int * errorColumn = nullptr)
    */
    auto obj = static_cast<QDomDocument *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      int par4;
      int par5;
      RBOOL(obj->setContent(*PQBYTEARRAY(1), PBOOL(2), nullptr, &par4, &par5));
      hb_storni(par4, 4);
      hb_storni(par5, 5);
    }
  }
  else if (ISBETWEEN(2, 5) && HB_ISCHAR(1) && HB_ISLOG(2) && (HB_ISCHAR(3) || HB_ISNIL(3)) &&
           ISNUMORNIL(4) && ISNUMORNIL(5))
  {
    /*
    bool setContent(const QString &text, bool namespaceProcessing, QString * errorMsg = nullptr, int * errorLine =
    nullptr, int * errorColumn = nullptr)
    */
    auto obj = static_cast<QDomDocument *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      int par4;
      int par5;
      RBOOL(obj->setContent(PQSTRING(1), PBOOL(2), nullptr, &par4, &par5));
      hb_storni(par4, 4);
      hb_storni(par5, 5);
    }
  }
  else if (ISBETWEEN(2, 5) && ISQIODEVICE(1) && HB_ISLOG(2) && (HB_ISCHAR(3) || HB_ISNIL(3)) &&
           ISNUMORNIL(4) && ISNUMORNIL(5))
  {
    /*
    bool setContent(QIODevice * dev, bool namespaceProcessing, QString * errorMsg = nullptr, int * errorLine = nullptr,
    int * errorColumn = nullptr)
    */
    auto obj = static_cast<QDomDocument *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      int par4;
      int par5;
      RBOOL(obj->setContent(PQIODEVICE(1), PBOOL(2), nullptr, &par4, &par5));
      hb_storni(par4, 4);
      hb_storni(par5, 5);
    }
  }
  else if (ISBETWEEN(2, 5) && ISQXMLINPUTSOURCE(1) && HB_ISLOG(2) && (HB_ISCHAR(3) || HB_ISNIL(3)) &&
           ISNUMORNIL(4) && ISNUMORNIL(5))
  {
    /*
    bool setContent(QXmlInputSource * source, bool namespaceProcessing, QString * errorMsg = nullptr, int * errorLine =
    nullptr, int * errorColumn = nullptr)
    */
    auto obj = static_cast<QDomDocument *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      int par4;
      int par5;
      RBOOL(obj->setContent(PQXMLINPUTSOURCE(1), PBOOL(2), nullptr, &par4, &par5));
      hb_storni(par4, 4);
      hb_storni(par5, 5);
    }
  }
  else if (ISBETWEEN(1, 4) && HB_ISCHAR(1) && (HB_ISCHAR(2) || HB_ISNIL(2)) && ISNUMORNIL(3) &&
           ISNUMORNIL(4))
  {
    /*
    bool setContent(const QString &text, QString * errorMsg = nullptr, int * errorLine = nullptr, int * errorColumn =
    nullptr)
    */
    auto obj = static_cast<QDomDocument *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      int par3;
      int par4;
      RBOOL(obj->setContent(PQSTRING(1), nullptr, &par3, &par4));
      hb_storni(par3, 3);
      hb_storni(par4, 4);
    }
  }
  else if (ISBETWEEN(1, 4) && ISQBYTEARRAY(1) && (HB_ISCHAR(2) || HB_ISNIL(2)) && ISNUMORNIL(3) &&
           ISNUMORNIL(4))
  {
    /*
    bool setContent(const QByteArray &buffer, QString * errorMsg = nullptr, int * errorLine = nullptr, int *
    errorColumn = nullptr)
    */
    auto obj = static_cast<QDomDocument *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      int par3;
      int par4;
      RBOOL(obj->setContent(*PQBYTEARRAY(1), nullptr, &par3, &par4));
      hb_storni(par3, 3);
      hb_storni(par4, 4);
    }
  }
  else if (ISBETWEEN(1, 4) && ISQIODEVICE(1) && (HB_ISCHAR(2) || HB_ISNIL(2)) && ISNUMORNIL(3) &&
           ISNUMORNIL(4))
  {
    /*
    bool setContent(QIODevice * dev, QString * errorMsg = nullptr, int * errorLine = nullptr, int * errorColumn =
    nullptr)
    */
    auto obj = static_cast<QDomDocument *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      int par3;
      int par4;
      RBOOL(obj->setContent(PQIODEVICE(1), nullptr, &par3, &par4));
      hb_storni(par3, 3);
      hb_storni(par4, 4);
    }
  }
  else if (ISBETWEEN(1, 4) && ISQXMLINPUTSOURCE(1) && (HB_ISCHAR(2) || HB_ISNIL(2)) && ISNUMORNIL(3) &&
           ISNUMORNIL(4))
  {
    /*
    bool setContent(QXmlInputSource * source, QXmlReader * reader, QString * errorMsg = nullptr, int * errorLine =
    nullptr, int * errorColumn = nullptr)
    */
    auto obj = static_cast<QDomDocument *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      int par4;
      int par5;
      RBOOL(obj->setContent(PQXMLINPUTSOURCE(1), PQXMLREADER(2), nullptr, &par4, &par5));
      hb_storni(par4, 4);
      hb_storni(par5, 5);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QByteArray toByteArray(int indent = 1) const
*/
HB_FUNC_STATIC(QDOMDOCUMENT_TOBYTEARRAY)
{
  auto obj = static_cast<QDomDocument *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && ISNUMORNIL(1))
    {
#endif
      auto ptr = new QByteArray(obj->toByteArray(OPINT(1, 1)));
      Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
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
QString toString(int indent = 1) const
*/
HB_FUNC_STATIC(QDOMDOCUMENT_TOSTRING)
{
  auto obj = static_cast<QDomDocument *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && ISNUMORNIL(1))
    {
#endif
      RQSTRING(obj->toString(OPINT(1, 1)));
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
