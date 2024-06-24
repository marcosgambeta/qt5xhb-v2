/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QAbstractNativeEventFilter INHERIT QObject

   METHOD delete
   METHOD nativeEventFilter

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAbstractNativeEventFilter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QAbstractNativeEventFilter>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtCore/QAbstractNativeEventFilter>
#endif

HB_FUNC_STATIC(QABSTRACTNATIVEEVENTFILTER_DELETE)
{
  auto obj = static_cast<QAbstractNativeEventFilter*>(Qt5xHb::itemGetPtrStackSelfItem());

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
virtual bool nativeEventFilter(const QByteArray & eventType, void * message, long * result) = 0
*/
HB_FUNC_STATIC(QABSTRACTNATIVEEVENTFILTER_NATIVEEVENTFILTER)
{
  auto obj = static_cast<QAbstractNativeEventFilter*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(3) && ISQBYTEARRAY(1) && HB_ISPOINTER(2) && HB_ISNUM(3))
    {
#endif
      long par3;
      RBOOL(obj->nativeEventFilter(*PQBYTEARRAY(1), static_cast< void*>(hb_parptr(2)), &par3));
      hb_stornl(par3, 3);
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
