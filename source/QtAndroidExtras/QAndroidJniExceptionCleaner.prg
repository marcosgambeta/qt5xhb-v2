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
#endif

CLASS QAndroidJniExceptionCleaner

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD clean

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAndroidJniExceptionCleaner
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
#include <QtAndroidExtras/QAndroidJniExceptionCleaner>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
#include <QtAndroidExtras/QAndroidJniExceptionCleaner>
#endif
#endif

    /*
    QAndroidJniExceptionCleaner(QAndroidJniExceptionCleaner::OutputMode outputMode =
    QAndroidJniExceptionCleaner::OutputMode::Silent)
    */
HB_FUNC_STATIC(QANDROIDJNIEXCEPTIONCLEANER_NEW)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  if (ISBETWEEN(0, 1) && (HB_ISNUM(1) || HB_ISNIL(1)))
  {
    auto obj = new QAndroidJniExceptionCleaner(
        HB_ISNIL(1)
            ? static_cast<QAndroidJniExceptionCleaner::OutputMode>(QAndroidJniExceptionCleaner::OutputMode::Silent)
            : static_cast<QAndroidJniExceptionCleaner::OutputMode>(hb_parni(1)));
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
~QAndroidJniExceptionCleaner()
*/
HB_FUNC_STATIC(QANDROIDJNIEXCEPTIONCLEANER_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  auto obj = static_cast<QAndroidJniExceptionCleaner *>(Qt5xHb::itemGetPtrStackSelfItem());

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
void clean()
*/
HB_FUNC_STATIC(QANDROIDJNIEXCEPTIONCLEANER_CLEAN)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  auto obj = static_cast<QAndroidJniExceptionCleaner *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->clean();
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

HB_FUNC_STATIC(QANDROIDJNIEXCEPTIONCLEANER_NEWFROM)
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

HB_FUNC_STATIC(QANDROIDJNIEXCEPTIONCLEANER_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QANDROIDJNIEXCEPTIONCLEANER_NEWFROM);
}

HB_FUNC_STATIC(QANDROIDJNIEXCEPTIONCLEANER_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QANDROIDJNIEXCEPTIONCLEANER_NEWFROM);
}

HB_FUNC_STATIC(QANDROIDJNIEXCEPTIONCLEANER_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QANDROIDJNIEXCEPTIONCLEANER_SETSELFDESTRUCTION)
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
