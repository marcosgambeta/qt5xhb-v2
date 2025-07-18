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

CLASS QAndroidBinder

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD onTransact
   METHOD transact
   METHOD handle

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAndroidBinder
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
#include <QtAndroidExtras/QAndroidBinder>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
#include <QtAndroidExtras/QAndroidBinder>
#endif
#endif

HB_FUNC_STATIC(QANDROIDBINDER_NEW)
{
  if (ISNUMPAR(0))
  {
    // QAndroidBinder()
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
    auto obj = new QAndroidBinder();
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if (ISNUMPAR(1) && ISQANDROIDJNIOBJECT(1))
  {
    // QAndroidBinder(const QAndroidJniObject &binder)
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
    auto obj = new QAndroidBinder(*PQANDROIDJNIOBJECT(1));
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// virtual ~QAndroidBinder()
HB_FUNC_STATIC(QANDROIDBINDER_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  auto obj = static_cast<QAndroidBinder *>(Qt5xHb::itemGetPtrStackSelfItem());

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

// virtual bool onTransact(int code, const QAndroidParcel &data, const QAndroidParcel &reply, QAndroidBinder::CallType flags)
HB_FUNC_STATIC(QANDROIDBINDER_ONTRANSACT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  auto obj = static_cast<QAndroidBinder *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(4) && HB_ISNUM(1) && ISQANDROIDPARCEL(2) && ISQANDROIDPARCEL(3) && HB_ISNUM(4))
    {
#endif
      RBOOL(obj->onTransact(PINT(1), *PQANDROIDPARCEL(2), *PQANDROIDPARCEL(3),
                            static_cast<QAndroidBinder::CallType>(hb_parni(4))));
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

// bool transact(int code, const QAndroidParcel &data, QAndroidParcel * reply = nullptr, QAndroidBinder::CallType flags = CallType::Normal) const
HB_FUNC_STATIC(QANDROIDBINDER_TRANSACT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  auto obj = static_cast<QAndroidBinder *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 4) && HB_ISNUM(1) && ISQANDROIDPARCEL(2) && (ISQANDROIDPARCEL(3) || HB_ISNIL(3)) &&
        ISNUMORNIL(4))
    {
#endif
      RBOOL(obj->transact(PINT(1), *PQANDROIDPARCEL(2),
                          HB_ISNIL(3) ? nullptr : static_cast<QAndroidParcel *>(Qt5xHb::itemGetPtr(3)),
                          HB_ISNIL(4) ? static_cast<QAndroidBinder::CallType>(CallType::Normal)
                                      : static_cast<QAndroidBinder::CallType>(hb_parni(4))));
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

// QAndroidJniObject handle() const
HB_FUNC_STATIC(QANDROIDBINDER_HANDLE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  auto obj = static_cast<QAndroidBinder *>(Qt5xHb::itemGetPtrStackSelfItem());

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

#pragma ENDDUMP
