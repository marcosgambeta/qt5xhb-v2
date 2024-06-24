/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDBUSCONNECTION
REQUEST QDBUSERROR
REQUEST QDBUSMESSAGE
REQUEST QDBUSPENDINGCALL
#endif

CLASS QDBusAbstractInterface INHERIT QDBusAbstractInterfaceBase

   METHOD delete
   METHOD isValid
   METHOD connection
   METHOD service
   METHOD path
   METHOD interface
   METHOD lastError
   METHOD setTimeout
   METHOD timeout
   METHOD call
   METHOD callWithArgumentList
   METHOD callWithCallback
   METHOD asyncCall
   METHOD asyncCallWithArgumentList

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDBusAbstractInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDBus/QDBusAbstractInterface>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtDBus/QDBusAbstractInterface>
#endif

#include <QtDBus/QDBusPendingCall>

HB_FUNC_STATIC(QDBUSABSTRACTINTERFACE_DELETE)
{
  auto obj = qobject_cast<QDBusAbstractInterface*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
}

/*
bool isValid() const
*/
HB_FUNC_STATIC(QDBUSABSTRACTINTERFACE_ISVALID)
{
  auto obj = qobject_cast<QDBusAbstractInterface*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
}

/*
QDBusConnection connection() const
*/
HB_FUNC_STATIC(QDBUSABSTRACTINTERFACE_CONNECTION)
{
  auto obj = qobject_cast<QDBusAbstractInterface*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QDBusConnection(obj->connection());
      Qt5xHb::createReturnClass(ptr, "QDBUSCONNECTION", true);
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
QString service() const
*/
HB_FUNC_STATIC(QDBUSABSTRACTINTERFACE_SERVICE)
{
  auto obj = qobject_cast<QDBusAbstractInterface*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->service());
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
QString path() const
*/
HB_FUNC_STATIC(QDBUSABSTRACTINTERFACE_PATH)
{
  auto obj = qobject_cast<QDBusAbstractInterface*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->path());
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
QString interface() const
*/
HB_FUNC_STATIC(QDBUSABSTRACTINTERFACE_INTERFACE)
{
  auto obj = qobject_cast<QDBusAbstractInterface*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->interface());
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
QDBusError lastError() const
*/
HB_FUNC_STATIC(QDBUSABSTRACTINTERFACE_LASTERROR)
{
  auto obj = qobject_cast<QDBusAbstractInterface*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QDBusError(obj->lastError());
      Qt5xHb::createReturnClass(ptr, "QDBUSERROR", true);
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
void setTimeout(int timeout)
*/
HB_FUNC_STATIC(QDBUSABSTRACTINTERFACE_SETTIMEOUT)
{
  auto obj = qobject_cast<QDBusAbstractInterface*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setTimeout(PINT(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int timeout() const
*/
HB_FUNC_STATIC(QDBUSABSTRACTINTERFACE_TIMEOUT)
{
  auto obj = qobject_cast<QDBusAbstractInterface*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->timeout());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QDBUSABSTRACTINTERFACE_CALL)
{
  if (ISBETWEEN(1, 9) && HB_ISCHAR(1) && (ISQVARIANT(2) || HB_ISNIL(2)) && (ISQVARIANT(3) || HB_ISNIL(3)) && (ISQVARIANT(4) || HB_ISNIL(4)) && (ISQVARIANT(5) || HB_ISNIL(5)) && (ISQVARIANT(6) || HB_ISNIL(6)) && (ISQVARIANT(7) || HB_ISNIL(7)) && (ISQVARIANT(8) || HB_ISNIL(8)) && (ISQVARIANT(9) || HB_ISNIL(9)))
  {
    /*
    QDBusMessage call(const QString & method, const QVariant & arg1 = QVariant(), const QVariant & arg2 = QVariant(), const QVariant & arg3 = QVariant(), const QVariant & arg4 = QVariant(), const QVariant & arg5 = QVariant(), const QVariant & arg6 = QVariant(), const QVariant & arg7 = QVariant(), const QVariant & arg8 = QVariant())
    */
    auto obj = qobject_cast<QDBusAbstractInterface*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      auto ptr = new QDBusMessage(obj->call(PQSTRING(1), HB_ISNIL(2) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(2)), HB_ISNIL(3) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(3)), HB_ISNIL(4) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(4)), HB_ISNIL(5) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(5)), HB_ISNIL(6) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(6)), HB_ISNIL(7) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(7)), HB_ISNIL(8) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(8)), HB_ISNIL(9) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(9))));
      Qt5xHb::createReturnClass(ptr, "QDBUSMESSAGE", true);
    }

  }
  else if (ISBETWEEN(2, 10) && HB_ISNUM(1) && HB_ISCHAR(2) && (ISQVARIANT(3) || HB_ISNIL(3)) && (ISQVARIANT(4) || HB_ISNIL(4)) && (ISQVARIANT(5) || HB_ISNIL(5)) && (ISQVARIANT(6) || HB_ISNIL(6)) && (ISQVARIANT(7) || HB_ISNIL(7)) && (ISQVARIANT(8) || HB_ISNIL(8)) && (ISQVARIANT(9) || HB_ISNIL(9)) && (ISQVARIANT(10) || HB_ISNIL(10)))
  {
    /*
    QDBusMessage call(QDBus::CallMode mode, const QString & method, const QVariant & arg1 = QVariant(), const QVariant & arg2 = QVariant(), const QVariant & arg3 = QVariant(), const QVariant & arg4 = QVariant(), const QVariant & arg5 = QVariant(), const QVariant & arg6 = QVariant(), const QVariant & arg7 = QVariant(), const QVariant & arg8 = QVariant())
    */
    auto obj = qobject_cast<QDBusAbstractInterface*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      auto ptr = new QDBusMessage(obj->call(static_cast<QDBus::CallMode>(hb_parni(1)), PQSTRING(2), HB_ISNIL(3) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(3)), HB_ISNIL(4) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(4)), HB_ISNIL(5) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(5)), HB_ISNIL(6) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(6)), HB_ISNIL(7) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(7)), HB_ISNIL(8) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(8)), HB_ISNIL(9) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(9)), HB_ISNIL(10) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(10))));
      Qt5xHb::createReturnClass(ptr, "QDBUSMESSAGE", true);
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QDBusMessage callWithArgumentList(QDBus::CallMode mode, const QString & method, const QList<QVariant> & args)
*/
HB_FUNC_STATIC(QDBUSABSTRACTINTERFACE_CALLWITHARGUMENTLIST)
{
  auto obj = qobject_cast<QDBusAbstractInterface*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(3) && HB_ISNUM(1) && HB_ISCHAR(2) && HB_ISARRAY(3))
    {
#endif
      QList<QVariant> par3;
      auto aList3 = hb_param(3, HB_IT_ARRAY);
      int nLen3 = hb_arrayLen(aList3);
      for (auto i3 = 0; i3 < nLen3; i3++)
      {
        par3 << *static_cast<QVariant*>(hb_itemGetPtr(hb_objSendMsg(hb_arrayGetItemPtr(aList3, i3+1), "POINTER", 0)));
      }
      auto ptr = new QDBusMessage(obj->callWithArgumentList(static_cast<QDBus::CallMode>(hb_parni(1)), PQSTRING(2), par3));
      Qt5xHb::createReturnClass(ptr, "QDBUSMESSAGE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QDBUSABSTRACTINTERFACE_CALLWITHCALLBACK)
{
  if (ISNUMPAR(5) && HB_ISCHAR(1) && HB_ISARRAY(2) && ISQOBJECT(3) && HB_ISCHAR(4) && HB_ISCHAR(5))
  {
    /*
    bool callWithCallback(const QString & method, const QList<QVariant> & args, QObject * receiver, const char * member, const char * errorSlot)
    */
    auto obj = qobject_cast<QDBusAbstractInterface*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      QList<QVariant> par2;
      auto aList2 = hb_param(2, HB_IT_ARRAY);
      int nLen2 = hb_arrayLen(aList2);
      for (auto i2 = 0; i2 < nLen2; i2++)
      {
        par2 << *static_cast<QVariant*>(hb_itemGetPtr(hb_objSendMsg(hb_arrayGetItemPtr(aList2, i2+1), "POINTER", 0)));
      }
      RBOOL(obj->callWithCallback(PQSTRING(1), par2, PQOBJECT(3), PCONSTCHAR(4), PCONSTCHAR(5)));
    }

  }
  else if (ISNUMPAR(4) && HB_ISCHAR(1) && HB_ISARRAY(2) && ISQOBJECT(3) && HB_ISCHAR(4))
  {
    /*
    bool callWithCallback(const QString & method, const QList<QVariant> & args, QObject * receiver, const char * member)
    */
    auto obj = qobject_cast<QDBusAbstractInterface*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      QList<QVariant> par2;
      auto aList2 = hb_param(2, HB_IT_ARRAY);
      int nLen2 = hb_arrayLen(aList2);
      for (auto i2 = 0; i2 < nLen2; i2++)
      {
        par2 << *static_cast<QVariant*>(hb_itemGetPtr(hb_objSendMsg(hb_arrayGetItemPtr(aList2, i2+1), "POINTER", 0)));
      }
      RBOOL(obj->callWithCallback(PQSTRING(1), par2, PQOBJECT(3), PCONSTCHAR(4)));
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QDBusPendingCall asyncCall(const QString & method, const QVariant & arg1 = QVariant(), const QVariant & arg2 = QVariant(), const QVariant & arg3 = QVariant(), const QVariant & arg4 = QVariant(), const QVariant & arg5 = QVariant(), const QVariant & arg6 = QVariant(), const QVariant & arg7 = QVariant(), const QVariant & arg8 = QVariant())
*/
HB_FUNC_STATIC(QDBUSABSTRACTINTERFACE_ASYNCCALL)
{
  auto obj = qobject_cast<QDBusAbstractInterface*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 9) && HB_ISCHAR(1) && (ISQVARIANT(2) || HB_ISNIL(2)) && (ISQVARIANT(3) || HB_ISNIL(3)) && (ISQVARIANT(4) || HB_ISNIL(4)) && (ISQVARIANT(5) || HB_ISNIL(5)) && (ISQVARIANT(6) || HB_ISNIL(6)) && (ISQVARIANT(7) || HB_ISNIL(7)) && (ISQVARIANT(8) || HB_ISNIL(8)) && (ISQVARIANT(9) || HB_ISNIL(9)))
    {
#endif
      auto ptr = new QDBusPendingCall(obj->asyncCall(PQSTRING(1), HB_ISNIL(2) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(2)), HB_ISNIL(3) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(3)), HB_ISNIL(4) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(4)), HB_ISNIL(5) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(5)), HB_ISNIL(6) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(6)), HB_ISNIL(7) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(7)), HB_ISNIL(8) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(8)), HB_ISNIL(9) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(9))));
      Qt5xHb::createReturnClass(ptr, "QDBUSPENDINGCALL", true);
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
QDBusPendingCall asyncCallWithArgumentList(const QString & method, const QList<QVariant> & args)
*/
HB_FUNC_STATIC(QDBUSABSTRACTINTERFACE_ASYNCCALLWITHARGUMENTLIST)
{
  auto obj = qobject_cast<QDBusAbstractInterface*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISARRAY(2))
    {
#endif
      QList<QVariant> par2;
      auto aList2 = hb_param(2, HB_IT_ARRAY);
      int nLen2 = hb_arrayLen(aList2);
      for (auto i2 = 0; i2 < nLen2; i2++)
      {
        par2 << *static_cast<QVariant*>(hb_itemGetPtr(hb_objSendMsg(hb_arrayGetItemPtr(aList2, i2+1), "POINTER", 0)));
      }
      auto ptr = new QDBusPendingCall(obj->asyncCallWithArgumentList(PQSTRING(1), par2));
      Qt5xHb::createReturnClass(ptr, "QDBUSPENDINGCALL", true);
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
