//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBLUETOOTHDEVICEINFO
REQUEST QBLUETOOTHUUID
REQUEST QVARIANT
#endif

CLASS QBluetoothServiceInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD isComplete
   METHOD setDevice
   METHOD device
   METHOD setAttribute
   METHOD attribute
   METHOD attributes
   METHOD contains
   METHOD removeAttribute
   METHOD setServiceName
   METHOD serviceName
   METHOD setServiceDescription
   METHOD serviceDescription
   METHOD setServiceProvider
   METHOD serviceProvider
   METHOD socketProtocol
   METHOD protocolServiceMultiplexer
   METHOD serverChannel
   METHOD setServiceAvailability
   METHOD serviceAvailability
   METHOD setServiceUuid
   METHOD serviceUuid
   METHOD serviceClassUuids
   METHOD isRegistered
   METHOD registerService
   METHOD unregisterService

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QBluetoothServiceInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#include <QtBluetooth/QBluetoothServiceInfo>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#include <QtBluetooth/QBluetoothServiceInfo>
#endif
#endif

#include <QtBluetooth/QBluetoothDeviceInfo>

HB_FUNC_STATIC(QBLUETOOTHSERVICEINFO_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QBluetoothServiceInfo()
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
    auto obj = new QBluetoothServiceInfo();
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if (ISNUMPAR(1) && ISQBLUETOOTHSERVICEINFO(1))
  {
    /*
    QBluetoothServiceInfo(const QBluetoothServiceInfo &other)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
    auto obj = new QBluetoothServiceInfo(*PQBLUETOOTHSERVICEINFO(1));
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QBLUETOOTHSERVICEINFO_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = static_cast<QBluetoothServiceInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

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
bool isValid() const
*/
HB_FUNC_STATIC(QBLUETOOTHSERVICEINFO_ISVALID)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = static_cast<QBluetoothServiceInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

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

/*
bool isComplete() const
*/
HB_FUNC_STATIC(QBLUETOOTHSERVICEINFO_ISCOMPLETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = static_cast<QBluetoothServiceInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isComplete());
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
void setDevice(const QBluetoothDeviceInfo &info)
*/
HB_FUNC_STATIC(QBLUETOOTHSERVICEINFO_SETDEVICE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = static_cast<QBluetoothServiceInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQBLUETOOTHDEVICEINFO(1))
    {
#endif
      obj->setDevice(*PQBLUETOOTHDEVICEINFO(1));
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
QBluetoothDeviceInfo device() const
*/
HB_FUNC_STATIC(QBLUETOOTHSERVICEINFO_DEVICE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = static_cast<QBluetoothServiceInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QBluetoothDeviceInfo(obj->device());
      Qt5xHb::createReturnClass(ptr, "QBLUETOOTHDEVICEINFO", true);
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

HB_FUNC_STATIC(QBLUETOOTHSERVICEINFO_SETATTRIBUTE)
{
  if (ISNUMPAR(2) && HB_ISNUM(1) && ISQVARIANT(2))
  {
    /*
    void setAttribute(quint16 attributeId, const QVariant &value)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
    auto obj = static_cast<QBluetoothServiceInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->setAttribute(PQUINT16(1), *PQVARIANT(2));
    }

    hb_itemReturn(hb_stackSelfItem());
#endif
  }
  else if (ISNUMPAR(2) && HB_ISNUM(1) && ISQBLUETOOTHUUID(2))
  {
    /*
    void setAttribute(quint16 attributeId, const QBluetoothUuid &value)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
    auto obj = static_cast<QBluetoothServiceInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->setAttribute(PQUINT16(1), *PQBLUETOOTHUUID(2));
    }

    hb_itemReturn(hb_stackSelfItem());
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QVariant attribute(quint16 attributeId) const
*/
HB_FUNC_STATIC(QBLUETOOTHSERVICEINFO_ATTRIBUTE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = static_cast<QBluetoothServiceInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      auto ptr = new QVariant(obj->attribute(PQUINT16(1)));
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
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
QList<quint16> attributes() const
*/
HB_FUNC_STATIC(QBLUETOOTHSERVICEINFO_ATTRIBUTES)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = static_cast<QBluetoothServiceInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto list = obj->attributes();
      Qt5xHb::convert_qlist_quint16_to_array(list);
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
bool contains(quint16 attributeId) const
*/
HB_FUNC_STATIC(QBLUETOOTHSERVICEINFO_CONTAINS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = static_cast<QBluetoothServiceInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->contains(PQUINT16(1)));
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
void removeAttribute(quint16 attributeId)
*/
HB_FUNC_STATIC(QBLUETOOTHSERVICEINFO_REMOVEATTRIBUTE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = static_cast<QBluetoothServiceInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->removeAttribute(PQUINT16(1));
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
void setServiceName(const QString &name)
*/
HB_FUNC_STATIC(QBLUETOOTHSERVICEINFO_SETSERVICENAME)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = static_cast<QBluetoothServiceInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setServiceName(PQSTRING(1));
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
QString serviceName() const
*/
HB_FUNC_STATIC(QBLUETOOTHSERVICEINFO_SERVICENAME)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = static_cast<QBluetoothServiceInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->serviceName());
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
void setServiceDescription(const QString &description)
*/
HB_FUNC_STATIC(QBLUETOOTHSERVICEINFO_SETSERVICEDESCRIPTION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = static_cast<QBluetoothServiceInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setServiceDescription(PQSTRING(1));
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
QString serviceDescription() const
*/
HB_FUNC_STATIC(QBLUETOOTHSERVICEINFO_SERVICEDESCRIPTION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = static_cast<QBluetoothServiceInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->serviceDescription());
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
void setServiceProvider(const QString &provider)
*/
HB_FUNC_STATIC(QBLUETOOTHSERVICEINFO_SETSERVICEPROVIDER)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = static_cast<QBluetoothServiceInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setServiceProvider(PQSTRING(1));
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
QString serviceProvider() const
*/
HB_FUNC_STATIC(QBLUETOOTHSERVICEINFO_SERVICEPROVIDER)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = static_cast<QBluetoothServiceInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->serviceProvider());
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
QBluetoothServiceInfo::Protocol socketProtocol() const
*/
HB_FUNC_STATIC(QBLUETOOTHSERVICEINFO_SOCKETPROTOCOL)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = static_cast<QBluetoothServiceInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->socketProtocol());
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
int protocolServiceMultiplexer() const
*/
HB_FUNC_STATIC(QBLUETOOTHSERVICEINFO_PROTOCOLSERVICEMULTIPLEXER)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = static_cast<QBluetoothServiceInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->protocolServiceMultiplexer());
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
int serverChannel() const
*/
HB_FUNC_STATIC(QBLUETOOTHSERVICEINFO_SERVERCHANNEL)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = static_cast<QBluetoothServiceInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->serverChannel());
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
void setServiceAvailability(quint8 availability)
*/
HB_FUNC_STATIC(QBLUETOOTHSERVICEINFO_SETSERVICEAVAILABILITY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = static_cast<QBluetoothServiceInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setServiceAvailability(PQUINT8(1));
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
quint8 serviceAvailability() const
*/
HB_FUNC_STATIC(QBLUETOOTHSERVICEINFO_SERVICEAVAILABILITY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = static_cast<QBluetoothServiceInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQUINT8(obj->serviceAvailability());
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
void setServiceUuid(const QBluetoothUuid &uuid)
*/
HB_FUNC_STATIC(QBLUETOOTHSERVICEINFO_SETSERVICEUUID)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = static_cast<QBluetoothServiceInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQBLUETOOTHUUID(1))
    {
#endif
      obj->setServiceUuid(*PQBLUETOOTHUUID(1));
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
QBluetoothUuid serviceUuid() const
*/
HB_FUNC_STATIC(QBLUETOOTHSERVICEINFO_SERVICEUUID)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = static_cast<QBluetoothServiceInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QBluetoothUuid(obj->serviceUuid());
      Qt5xHb::createReturnClass(ptr, "QBLUETOOTHUUID", true);
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
QList<QBluetoothUuid> serviceClassUuids() const
*/
HB_FUNC_STATIC(QBLUETOOTHSERVICEINFO_SERVICECLASSUUIDS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = static_cast<QBluetoothServiceInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto list = obj->serviceClassUuids();
      auto pDynSym = hb_dynsymFindName("QBLUETOOTHUUID");
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
          auto pItem = hb_itemPutPtr(nullptr, new QBluetoothUuid(item));
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
        hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QBLUETOOTHUUID", HB_ERR_ARGS_BASEPARAMS);
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

/*
bool isRegistered() const
*/
HB_FUNC_STATIC(QBLUETOOTHSERVICEINFO_ISREGISTERED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = static_cast<QBluetoothServiceInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isRegistered());
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
bool registerService(const QBluetoothAddress &localAdapter = QBluetoothAddress())
*/
HB_FUNC_STATIC(QBLUETOOTHSERVICEINFO_REGISTERSERVICE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = static_cast<QBluetoothServiceInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (ISQBLUETOOTHADDRESS(1) || HB_ISNIL(1)))
    {
#endif
      RBOOL(obj->registerService(HB_ISNIL(1) ? QBluetoothAddress()
                                             : *static_cast<QBluetoothAddress *>(Qt5xHb::itemGetPtr(1))));
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
bool unregisterService()
*/
HB_FUNC_STATIC(QBLUETOOTHSERVICEINFO_UNREGISTERSERVICE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = static_cast<QBluetoothServiceInfo *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->unregisterService());
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

HB_FUNC_STATIC(QBLUETOOTHSERVICEINFO_NEWFROM)
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

HB_FUNC_STATIC(QBLUETOOTHSERVICEINFO_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QBLUETOOTHSERVICEINFO_NEWFROM);
}

HB_FUNC_STATIC(QBLUETOOTHSERVICEINFO_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QBLUETOOTHSERVICEINFO_NEWFROM);
}

HB_FUNC_STATIC(QBLUETOOTHSERVICEINFO_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QBLUETOOTHSERVICEINFO_SETSELFDESTRUCTION)
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
