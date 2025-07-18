//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBLUETOOTHADDRESS
REQUEST QBLUETOOTHHOSTINFO
#endif

CLASS QBluetoothLocalDevice INHERIT QObject

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD requestPairing
   METHOD pairingStatus
   METHOD setHostMode
   METHOD hostMode
   METHOD powerOn
   METHOD name
   METHOD address
   METHOD pairingConfirmation
   METHOD allDevices

   METHOD onHostModeStateChanged
   METHOD onPairingFinished
   METHOD onPairingDisplayPinCode
   METHOD onPairingDisplayConfirmation
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QBluetoothLocalDevice
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#include <QtBluetooth/QBluetoothLocalDevice>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#include <QtBluetooth/QBluetoothLocalDevice>
#endif
#endif

HB_FUNC_STATIC(QBLUETOOTHLOCALDEVICE_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    /*
    QBluetoothLocalDevice(QObject * parent = nullptr)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
    auto obj = new QBluetoothLocalDevice(OPQOBJECT(1, nullptr));
    Qt5xHb::returnNewObject(obj, false);
#endif
  }
  else if (ISBETWEEN(1, 2) && ISQBLUETOOTHADDRESS(1) && (ISQOBJECT(2) || HB_ISNIL(2)))
  {
    /*
    QBluetoothLocalDevice(const QBluetoothAddress &address, QObject * parent = nullptr)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
    auto obj = new QBluetoothLocalDevice(*PQBLUETOOTHADDRESS(1), OPQOBJECT(2, nullptr));
    Qt5xHb::returnNewObject(obj, false);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QBLUETOOTHLOCALDEVICE_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = qobject_cast<QBluetoothLocalDevice *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
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
HB_FUNC_STATIC(QBLUETOOTHLOCALDEVICE_ISVALID)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = qobject_cast<QBluetoothLocalDevice *>(Qt5xHb::getQObjectPointerFromSelfItem());

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
void requestPairing(const QBluetoothAddress &address, QBluetoothLocalDevice::Pairing pairing)
*/
HB_FUNC_STATIC(QBLUETOOTHLOCALDEVICE_REQUESTPAIRING)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = qobject_cast<QBluetoothLocalDevice *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && ISQBLUETOOTHADDRESS(1) && HB_ISNUM(2))
    {
#endif
      obj->requestPairing(*PQBLUETOOTHADDRESS(1), static_cast<QBluetoothLocalDevice::Pairing>(hb_parni(2)));
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
QBluetoothLocalDevice::Pairing pairingStatus(const QBluetoothAddress &address) const
*/
HB_FUNC_STATIC(QBLUETOOTHLOCALDEVICE_PAIRINGSTATUS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = qobject_cast<QBluetoothLocalDevice *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQBLUETOOTHADDRESS(1))
    {
#endif
      RENUM(obj->pairingStatus(*PQBLUETOOTHADDRESS(1)));
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
void setHostMode(QBluetoothLocalDevice::HostMode mode)
*/
HB_FUNC_STATIC(QBLUETOOTHLOCALDEVICE_SETHOSTMODE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = qobject_cast<QBluetoothLocalDevice *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setHostMode(static_cast<QBluetoothLocalDevice::HostMode>(hb_parni(1)));
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
QBluetoothLocalDevice::HostMode hostMode() const
*/
HB_FUNC_STATIC(QBLUETOOTHLOCALDEVICE_HOSTMODE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = qobject_cast<QBluetoothLocalDevice *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->hostMode());
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
void powerOn()
*/
HB_FUNC_STATIC(QBLUETOOTHLOCALDEVICE_POWERON)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = qobject_cast<QBluetoothLocalDevice *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->powerOn();
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
QString name() const
*/
HB_FUNC_STATIC(QBLUETOOTHLOCALDEVICE_NAME)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = qobject_cast<QBluetoothLocalDevice *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->name());
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
QBluetoothAddress address() const
*/
HB_FUNC_STATIC(QBLUETOOTHLOCALDEVICE_ADDRESS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = qobject_cast<QBluetoothLocalDevice *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QBluetoothAddress(obj->address());
      Qt5xHb::createReturnClass(ptr, "QBLUETOOTHADDRESS", true);
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
void pairingConfirmation(bool confirmation)
*/
HB_FUNC_STATIC(QBLUETOOTHLOCALDEVICE_PAIRINGCONFIRMATION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = qobject_cast<QBluetoothLocalDevice *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->pairingConfirmation(PBOOL(1));
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
static QList<QBluetoothHostInfo> allDevices()
*/
HB_FUNC_STATIC(QBLUETOOTHLOCALDEVICE_ALLDEVICES)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    auto list = QBluetoothLocalDevice::allDevices();
    auto pDynSym = hb_dynsymFindName("QBLUETOOTHHOSTINFO");
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
        auto pItem = hb_itemPutPtr(nullptr, new QBluetoothHostInfo(item));
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
      hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QBLUETOOTHHOSTINFO", HB_ERR_ARGS_BASEPARAMS);
    }
    hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
void hostModeStateChanged(QBluetoothLocalDevice::HostMode state)
*/
HB_FUNC_STATIC(QBLUETOOTHLOCALDEVICE_ONHOSTMODESTATECHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto sender = qobject_cast<QBluetoothLocalDevice *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("hostModeStateChanged(QBluetoothLocalDevice::HostMode)");
    auto indexOfCodeBlock = -1;

    if (ISNUMPAR(1) && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender, &QBluetoothLocalDevice::hostModeStateChanged,
                                           [sender, indexOfCodeBlock](QBluetoothLocalDevice::HostMode arg1) {
                                             auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

                                             if (cb != nullptr)
                                             {
                                               auto pSender =
                                                   Qt5xHb::Signals_return_qobject(sender, "QBLUETOOTHLOCALDEVICE");
                                               auto pArg1 = hb_itemPutNI(nullptr, static_cast<int>(arg1));
                                               hb_vmEvalBlockV(cb, 2, pSender, pArg1);
                                               hb_itemRelease(pSender);
                                               hb_itemRelease(pArg1);
                                             }
                                           });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (ISNUMPAR(0))
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void pairingFinished(const QBluetoothAddress &address, QBluetoothLocalDevice::Pairing pairing)
*/
HB_FUNC_STATIC(QBLUETOOTHLOCALDEVICE_ONPAIRINGFINISHED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto sender = qobject_cast<QBluetoothLocalDevice *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal =
        sender->metaObject()->indexOfSignal("pairingFinished(QBluetoothAddress,QBluetoothLocalDevice::Pairing)");
    auto indexOfCodeBlock = -1;

    if (ISNUMPAR(1) && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(
            sender, &QBluetoothLocalDevice::pairingFinished,
            [sender, indexOfCodeBlock](const QBluetoothAddress &arg1, QBluetoothLocalDevice::Pairing arg2) {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QBLUETOOTHLOCALDEVICE");
                auto pArg1 = Qt5xHb::Signals_return_object((void *)&arg1, "QBLUETOOTHADDRESS");
                auto pArg2 = hb_itemPutNI(nullptr, static_cast<int>(arg2));
                hb_vmEvalBlockV(cb, 3, pSender, pArg1, pArg2);
                hb_itemRelease(pSender);
                hb_itemRelease(pArg1);
                hb_itemRelease(pArg2);
              }
            });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (ISNUMPAR(0))
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void pairingDisplayPinCode(const QBluetoothAddress &address, QString pin)
*/
HB_FUNC_STATIC(QBLUETOOTHLOCALDEVICE_ONPAIRINGDISPLAYPINCODE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto sender = qobject_cast<QBluetoothLocalDevice *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("pairingDisplayPinCode(QBluetoothAddress,QString)");
    auto indexOfCodeBlock = -1;

    if (ISNUMPAR(1) && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection =
            QObject::connect(sender, &QBluetoothLocalDevice::pairingDisplayPinCode,
                             [sender, indexOfCodeBlock](const QBluetoothAddress &arg1, QString arg2) {
                               auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

                               if (cb != nullptr)
                               {
                                 auto pSender = Qt5xHb::Signals_return_qobject(sender, "QBLUETOOTHLOCALDEVICE");
                                 auto pArg1 = Qt5xHb::Signals_return_object((void *)&arg1, "QBLUETOOTHADDRESS");
                                 auto pArg2 = hb_itemPutC(nullptr, QSTRINGTOSTRING(arg2));
                                 hb_vmEvalBlockV(cb, 3, pSender, pArg1, pArg2);
                                 hb_itemRelease(pSender);
                                 hb_itemRelease(pArg1);
                                 hb_itemRelease(pArg2);
                               }
                             });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (ISNUMPAR(0))
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void pairingDisplayConfirmation(const QBluetoothAddress &address, QString pin)
*/
HB_FUNC_STATIC(QBLUETOOTHLOCALDEVICE_ONPAIRINGDISPLAYCONFIRMATION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto sender = qobject_cast<QBluetoothLocalDevice *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("pairingDisplayConfirmation(QBluetoothAddress,QString)");
    auto indexOfCodeBlock = -1;

    if (ISNUMPAR(1) && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection =
            QObject::connect(sender, &QBluetoothLocalDevice::pairingDisplayConfirmation,
                             [sender, indexOfCodeBlock](const QBluetoothAddress &arg1, QString arg2) {
                               auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

                               if (cb != nullptr)
                               {
                                 auto pSender = Qt5xHb::Signals_return_qobject(sender, "QBLUETOOTHLOCALDEVICE");
                                 auto pArg1 = Qt5xHb::Signals_return_object((void *)&arg1, "QBLUETOOTHADDRESS");
                                 auto pArg2 = hb_itemPutC(nullptr, QSTRINGTOSTRING(arg2));
                                 hb_vmEvalBlockV(cb, 3, pSender, pArg1, pArg2);
                                 hb_itemRelease(pSender);
                                 hb_itemRelease(pArg1);
                                 hb_itemRelease(pArg2);
                               }
                             });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (ISNUMPAR(0))
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void error(QBluetoothLocalDevice::Error error)
*/
HB_FUNC_STATIC(QBLUETOOTHLOCALDEVICE_ONERROR)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto sender = qobject_cast<QBluetoothLocalDevice *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("error(QBluetoothLocalDevice::Error)");
    auto indexOfCodeBlock = -1;

    if (ISNUMPAR(1) && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(
            sender, &QBluetoothLocalDevice::error, [sender, indexOfCodeBlock](QBluetoothLocalDevice::Error arg1) {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QBLUETOOTHLOCALDEVICE");
                auto pArg1 = hb_itemPutNI(nullptr, static_cast<int>(arg1));
                hb_vmEvalBlockV(cb, 2, pSender, pArg1);
                hb_itemRelease(pSender);
                hb_itemRelease(pArg1);
              }
            });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (ISNUMPAR(0))
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP
