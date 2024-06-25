/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIMAGE
REQUEST QPIXMAP
#endif

CLASS QDeclarativeImageProvider

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD imageType
   METHOD requestImage
   METHOD requestPixmap

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDeclarativeImageProvider
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDeclarative/QDeclarativeImageProvider>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtDeclarative/QDeclarativeImageProvider>
#endif

    /*
    QDeclarativeImageProvider(QDeclarativeImageProvider::ImageType type)
    */
HB_FUNC_STATIC(QDECLARATIVEIMAGEPROVIDER_NEW)
{
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    auto obj = new QDeclarativeImageProvider(static_cast<QDeclarativeImageProvider::ImageType>(hb_parni(1)));
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QDECLARATIVEIMAGEPROVIDER_DELETE)
{
  auto obj = static_cast<QDeclarativeImageProvider *>(Qt5xHb::itemGetPtrStackSelfItem());

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
QDeclarativeImageProvider::ImageType imageType() const
*/
HB_FUNC_STATIC(QDECLARATIVEIMAGEPROVIDER_IMAGETYPE)
{
  auto obj = static_cast<QDeclarativeImageProvider *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->imageType());
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
virtual QImage requestImage(const QString & id, QSize * size, const QSize & requestedSize)
*/
HB_FUNC_STATIC(QDECLARATIVEIMAGEPROVIDER_REQUESTIMAGE)
{
  auto obj = static_cast<QDeclarativeImageProvider *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(3) && HB_ISCHAR(1) && ISQSIZE(2) && ISQSIZE(3))
    {
#endif
      auto ptr = new QImage(obj->requestImage(PQSTRING(1), PQSIZE(2), *PQSIZE(3)));
      Qt5xHb::createReturnClass(ptr, "QIMAGE", true);
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
virtual QPixmap requestPixmap(const QString & id, QSize * size, const QSize & requestedSize)
*/
HB_FUNC_STATIC(QDECLARATIVEIMAGEPROVIDER_REQUESTPIXMAP)
{
  auto obj = static_cast<QDeclarativeImageProvider *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(3) && HB_ISCHAR(1) && ISQSIZE(2) && ISQSIZE(3))
    {
#endif
      auto ptr = new QPixmap(obj->requestPixmap(PQSTRING(1), PQSIZE(2), *PQSIZE(3)));
      Qt5xHb::createReturnClass(ptr, "QPIXMAP", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QDECLARATIVEIMAGEPROVIDER_NEWFROM)
{
  auto self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISOBJECT(1))
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if (hb_pcount() == 1 && HB_ISPOINTER(1))
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

HB_FUNC_STATIC(QDECLARATIVEIMAGEPROVIDER_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QDECLARATIVEIMAGEPROVIDER_NEWFROM);
}

HB_FUNC_STATIC(QDECLARATIVEIMAGEPROVIDER_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QDECLARATIVEIMAGEPROVIDER_NEWFROM);
}

HB_FUNC_STATIC(QDECLARATIVEIMAGEPROVIDER_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QDECLARATIVEIMAGEPROVIDER_SETSELFDESTRUCTION)
{
  auto self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISLOG(1))
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
