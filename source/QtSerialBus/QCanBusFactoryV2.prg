//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCANBUSDEVICE
REQUEST QCANBUSDEVICEINFO
#endif

CLASS QCanBusFactoryV2 INHERIT QCanBusFactory

   METHOD createDevice
   METHOD availableDevices

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCanBusFactoryV2
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
#include <QtSerialBus/QCanBusFactoryV2>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
#include <QtSerialBus/QCanBusFactoryV2>
#endif
#endif

    /*
    virtual QCanBusDevice * createDevice(const QString &interfaceName, QString * errorMessage) const = 0
    */
HB_FUNC_STATIC(QCANBUSFACTORYV2_CREATEDEVICE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  auto obj = static_cast<QCanBusFactoryV2 *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISCHAR(1))
    {
#endif
      auto ptr = obj->createDevice(PQSTRING(1), nullptr);
      Qt5xHb::createReturnQObjectClass(ptr, "QCANBUSDEVICE");
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
virtual QList<QCanBusDeviceInfo> availableDevices(QString * errorMessage) const = 0
*/
HB_FUNC_STATIC(QCANBUSFACTORYV2_AVAILABLEDEVICES)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  auto obj = static_cast<QCanBusFactoryV2 *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1))
    {
#endif
      auto list = obj->availableDevices(nullptr);
      auto pDynSym = hb_dynsymFindName("QCANBUSDEVICEINFO");
      auto pArray = hb_itemArrayNew(0);
      if (pDynSym != nullptr)
      {
        for (const auto &item : list)
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          auto pObject = hb_itemNew(nullptr);
          hb_itemCopy(pObject, hb_stackReturnItem());
          auto pItem = hb_itemPutPtr(nullptr, new QCanBusDeviceInfo(item));
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          auto pDestroy = hb_itemPutL(nullptr, true);
          hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
          hb_itemRelease(pDestroy);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QCANBUSDEVICEINFO", HB_ERR_ARGS_BASEPARAMS);
      }
      hb_itemReturnRelease(pArray);
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
