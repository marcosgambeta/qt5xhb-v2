//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QANDROIDJNIOBJECT
#endif

CLASS QAndroidServiceConnection

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD onServiceConnected
   METHOD onServiceDisconnected
   METHOD handle

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAndroidServiceConnection
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
#include <QtAndroidExtras/QAndroidServiceConnection>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
#include <QtAndroidExtras/QAndroidServiceConnection>
#endif
#endif

HB_FUNC_STATIC(QANDROIDSERVICECONNECTION_NEW)
{
  if (ISNUMPAR(0))
  {
    // QAndroidServiceConnection()
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
    auto obj = new QAndroidServiceConnection();
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if (ISNUMPAR(1) && ISQANDROIDJNIOBJECT(1))
  {
    // QAndroidServiceConnection(const QAndroidJniObject &serviceConnection)
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
    auto obj = new QAndroidServiceConnection(*PQANDROIDJNIOBJECT(1));
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// virtual ~QAndroidServiceConnection()
HB_FUNC_STATIC(QANDROIDSERVICECONNECTION_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  auto obj = static_cast<QAndroidServiceConnection *>(Qt5xHb::itemGetPtrStackSelfItem());

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

// virtual void onServiceConnected(const QString &name, const QAndroidBinder &serviceBinder) = 0
HB_FUNC_STATIC(QANDROIDSERVICECONNECTION_ONSERVICECONNECTED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  auto obj = static_cast<QAndroidServiceConnection *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISCHAR(1) && ISQANDROIDBINDER(2))
    {
#endif
      obj->onServiceConnected(PQSTRING(1), *PQANDROIDBINDER(2));
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

// virtual void onServiceDisconnected(const QString &name) = 0
HB_FUNC_STATIC(QANDROIDSERVICECONNECTION_ONSERVICEDISCONNECTED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  auto obj = static_cast<QAndroidServiceConnection *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->onServiceDisconnected(PQSTRING(1));
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

// QAndroidJniObject handle() const
HB_FUNC_STATIC(QANDROIDSERVICECONNECTION_HANDLE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  auto obj = static_cast<QAndroidServiceConnection *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QAndroidJniObject(obj->handle());
      Qt5xHb::createReturnClass(ptr, "QANDROIDJNIOBJECT", true);
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

HB_FUNC_STATIC(QANDROIDSERVICECONNECTION_NEWFROM)
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

HB_FUNC_STATIC(QANDROIDSERVICECONNECTION_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QANDROIDSERVICECONNECTION_NEWFROM);
}

HB_FUNC_STATIC(QANDROIDSERVICECONNECTION_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QANDROIDSERVICECONNECTION_NEWFROM);
}

HB_FUNC_STATIC(QANDROIDSERVICECONNECTION_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QANDROIDSERVICECONNECTION_SETSELFDESTRUCTION)
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
