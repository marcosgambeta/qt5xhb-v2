//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QRECTF
REQUEST QSIZE
REQUEST QSIZEF
#endif

CLASS QPageSize

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD isEquivalentTo
   METHOD isValid
   METHOD key
   METHOD name
   METHOD id
   METHOD windowsId
   METHOD definitionSize
   METHOD definitionUnits
   METHOD size
   METHOD sizePoints
   METHOD sizePixels
   METHOD rect
   METHOD rectPoints
   METHOD rectPixels

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPageSize
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
#include <QtGui/QPageSize>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
#include <QtGui/QPageSize>
#endif
#endif

#include <QtCore/QRectF>
#include <QtCore/QSize>

HB_FUNC_STATIC(QPAGESIZE_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QPageSize()
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
    auto obj = new QPageSize();
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    QPageSize(QPageSize::PageSizeId pageSizeId)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
    auto obj = new QPageSize(static_cast<QPageSize::PageSizeId>(hb_parni(1)));
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if (ISBETWEEN(1, 3) && ISQSIZE(1) && (HB_ISCHAR(2) || HB_ISNIL(2)) && ISNUMORNIL(3))
  {
    /*
    QPageSize(const QSize &pointSize, const QString &name = QString(), QPageSize::SizeMatchPolicy matchPolicy =
    QPageSize::FuzzyMatch)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
    auto obj = new QPageSize(*PQSIZE(1), OPQSTRING(2, QString()),
                             HB_ISNIL(3) ? static_cast<QPageSize::SizeMatchPolicy>(QPageSize::FuzzyMatch)
                                         : static_cast<QPageSize::SizeMatchPolicy>(hb_parni(3)));
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if (ISBETWEEN(2, 4) && ISQSIZEF(1) && HB_ISNUM(2) && (HB_ISCHAR(3) || HB_ISNIL(3)) &&
           ISNUMORNIL(4))
  {
    /*
    QPageSize(const QSizeF &size, QPageSize::Unit units, const QString &name = QString(), QPageSize::SizeMatchPolicy
    matchPolicy = QPageSize::FuzzyMatch)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
    auto obj = new QPageSize(*PQSIZEF(1), static_cast<QPageSize::Unit>(hb_parni(2)), OPQSTRING(3, QString()),
                             HB_ISNIL(4) ? static_cast<QPageSize::SizeMatchPolicy>(QPageSize::FuzzyMatch)
                                         : static_cast<QPageSize::SizeMatchPolicy>(hb_parni(4)));
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if (ISNUMPAR(1) && ISQPAGESIZE(1))
  {
    /*
    QPageSize(const QPageSize &other)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
    auto obj = new QPageSize(*PQPAGESIZE(1));
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QPAGESIZE_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  auto obj = static_cast<QPageSize *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    delete obj;
    obj = nullptr;
    auto ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
void swap(QPageSize &other)
*/
HB_FUNC_STATIC(QPAGESIZE_SWAP)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  auto obj = static_cast<QPageSize *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPAGESIZE(1))
    {
#endif
      obj->swap(*PQPAGESIZE(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
bool isEquivalentTo(const QPageSize &other) const
*/
HB_FUNC_STATIC(QPAGESIZE_ISEQUIVALENTTO)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  auto obj = static_cast<QPageSize *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPAGESIZE(1))
    {
#endif
      RBOOL(obj->isEquivalentTo(*PQPAGESIZE(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
bool isValid() const
*/
HB_FUNC_STATIC(QPAGESIZE_ISVALID)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  auto obj = static_cast<QPageSize *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isValid());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

HB_FUNC_STATIC(QPAGESIZE_KEY)
{
  if (ISNUMPAR(0))
  {
    /*
    QString key() const
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
    auto obj = static_cast<QPageSize *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      RQSTRING(obj->key());
    }
#endif
  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    static QString key(QPageSize::PageSizeId pageSizeId)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))

    RQSTRING(QPageSize::key(static_cast<QPageSize::PageSizeId>(hb_parni(1))));
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QPAGESIZE_NAME)
{
  if (ISNUMPAR(0))
  {
    /*
    QString name() const
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
    auto obj = static_cast<QPageSize *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      RQSTRING(obj->name());
    }
#endif
  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    static QString name(QPageSize::PageSizeId pageSizeId)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))

    RQSTRING(QPageSize::name(static_cast<QPageSize::PageSizeId>(hb_parni(1))));
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QPAGESIZE_ID)
{
  if (ISNUMPAR(0))
  {
    /*
    QPageSize::PageSizeId id() const
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
    auto obj = static_cast<QPageSize *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      RENUM(obj->id());
    }
#endif
  }
  else if (ISBETWEEN(1, 2) && ISQSIZE(1) && ISNUMORNIL(2))
  {
    /*
    static QPageSize::PageSizeId id(const QSize &pointSize, QPageSize::SizeMatchPolicy matchPolicy =
    QPageSize::FuzzyMatch)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))

    RENUM(QPageSize::id(*PQSIZE(1), HB_ISNIL(2) ? static_cast<QPageSize::SizeMatchPolicy>(QPageSize::FuzzyMatch)
                                                : static_cast<QPageSize::SizeMatchPolicy>(hb_parni(2))));
#endif
  }
  else if (ISBETWEEN(2, 3) && ISQSIZEF(1) && HB_ISNUM(2) && ISNUMORNIL(3))
  {
    /*
    static QPageSize::PageSizeId id(const QSizeF &size, QPageSize::Unit units, QPageSize::SizeMatchPolicy matchPolicy =
    QPageSize::FuzzyMatch)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))

    RENUM(QPageSize::id(*PQSIZEF(1), static_cast<QPageSize::Unit>(hb_parni(2)),
                        HB_ISNIL(3) ? static_cast<QPageSize::SizeMatchPolicy>(QPageSize::FuzzyMatch)
                                    : static_cast<QPageSize::SizeMatchPolicy>(hb_parni(3))));
#endif
  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    static QPageSize::PageSizeId id(int windowsId)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))

    RENUM(QPageSize::id(PINT(1)));
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QPAGESIZE_WINDOWSID)
{
  if (ISNUMPAR(0))
  {
    /*
    int windowsId() const
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
    auto obj = static_cast<QPageSize *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      RINT(obj->windowsId());
    }
#endif
  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    static int windowsId(QPageSize::PageSizeId pageSizeId)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))

    RINT(QPageSize::windowsId(static_cast<QPageSize::PageSizeId>(hb_parni(1))));
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QPAGESIZE_DEFINITIONSIZE)
{
  if (ISNUMPAR(0))
  {
    /*
    QSizeF definitionSize() const
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
    auto obj = static_cast<QPageSize *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      auto ptr = new QSizeF(obj->definitionSize());
      Qt5xHb::createReturnClass(ptr, "QSIZEF", true);
    }
#endif
  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    static QSizeF definitionSize(QPageSize::PageSizeId pageSizeId)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))

    auto ptr = new QSizeF(QPageSize::definitionSize(static_cast<QPageSize::PageSizeId>(hb_parni(1))));
    Qt5xHb::createReturnClass(ptr, "QSIZEF", true);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QPAGESIZE_DEFINITIONUNITS)
{
  if (ISNUMPAR(0))
  {
    /*
    QPageSize::Unit definitionUnits() const
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
    auto obj = static_cast<QPageSize *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      RENUM(obj->definitionUnits());
    }
#endif
  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    static QPageSize::Unit definitionUnits(QPageSize::PageSizeId pageSizeId)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))

    RENUM(QPageSize::definitionUnits(static_cast<QPageSize::PageSizeId>(hb_parni(1))));
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QPAGESIZE_SIZE)
{
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    QSizeF size(QPageSize::Unit units) const
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
    auto obj = static_cast<QPageSize *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      auto ptr = new QSizeF(obj->size(static_cast<QPageSize::Unit>(hb_parni(1))));
      Qt5xHb::createReturnClass(ptr, "QSIZEF", true);
    }
#endif
  }
  else if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
    /*
    static QSizeF size(QPageSize::PageSizeId pageSizeId, QPageSize::Unit units)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))

    auto ptr = new QSizeF(
        QPageSize::size(static_cast<QPageSize::PageSizeId>(hb_parni(1)), static_cast<QPageSize::Unit>(hb_parni(2))));
    Qt5xHb::createReturnClass(ptr, "QSIZEF", true);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QPAGESIZE_SIZEPOINTS)
{
  if (ISNUMPAR(0))
  {
    /*
    QSize sizePoints() const
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
    auto obj = static_cast<QPageSize *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      auto ptr = new QSize(obj->sizePoints());
      Qt5xHb::createReturnClass(ptr, "QSIZE", true);
    }
#endif
  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    static QSize sizePoints(QPageSize::PageSizeId pageSizeId)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))

    auto ptr = new QSize(QPageSize::sizePoints(static_cast<QPageSize::PageSizeId>(hb_parni(1))));
    Qt5xHb::createReturnClass(ptr, "QSIZE", true);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QPAGESIZE_SIZEPIXELS)
{
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    QSize sizePixels(int resolution) const
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
    auto obj = static_cast<QPageSize *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      auto ptr = new QSize(obj->sizePixels(PINT(1)));
      Qt5xHb::createReturnClass(ptr, "QSIZE", true);
    }
#endif
  }
  else if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
    /*
    static QSize sizePixels(QPageSize::PageSizeId pageSizeId, int resolution)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))

    auto ptr = new QSize(QPageSize::sizePixels(static_cast<QPageSize::PageSizeId>(hb_parni(1)), PINT(2)));
    Qt5xHb::createReturnClass(ptr, "QSIZE", true);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QRectF rect(QPageSize::Unit units) const
*/
HB_FUNC_STATIC(QPAGESIZE_RECT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  auto obj = static_cast<QPageSize *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      auto ptr = new QRectF(obj->rect(static_cast<QPageSize::Unit>(hb_parni(1))));
      Qt5xHb::createReturnClass(ptr, "QRECTF", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QRect rectPoints() const
*/
HB_FUNC_STATIC(QPAGESIZE_RECTPOINTS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  auto obj = static_cast<QPageSize *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QRect(obj->rectPoints());
      Qt5xHb::createReturnClass(ptr, "QRECT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QRect rectPixels(int resolution) const
*/
HB_FUNC_STATIC(QPAGESIZE_RECTPIXELS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  auto obj = static_cast<QPageSize *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      auto ptr = new QRect(obj->rectPixels(PINT(1)));
      Qt5xHb::createReturnClass(ptr, "QRECT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

HB_FUNC_STATIC(QPAGESIZE_NEWFROM)
{
  auto self = hb_stackSelfItem();

  if (ISNUMPAR(1) && HB_ISOBJECT(1))
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if (ISNUMPAR(1) && HB_ISPOINTER(1))
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC(QPAGESIZE_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QPAGESIZE_NEWFROM);
}

HB_FUNC_STATIC(QPAGESIZE_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QPAGESIZE_NEWFROM);
}

HB_FUNC_STATIC(QPAGESIZE_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QPAGESIZE_SETSELFDESTRUCTION)
{
  auto self = hb_stackSelfItem();

  if (ISNUMPAR(1) && HB_ISLOG(1))
  {
    auto des = hb_itemPutL(nullptr, hb_parl(1));
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
