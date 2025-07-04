//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QEventTransition INHERIT QAbstractTransition

   METHOD new
   METHOD delete
   METHOD eventSource
   METHOD eventType
   METHOD setEventSource
   METHOD setEventType

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QEventTransition
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QEventTransition>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtCore/QEventTransition>
#endif

HB_FUNC_STATIC(QEVENTTRANSITION_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQSTATE(1) || HB_ISNIL(1)))
  {
    /*
    QEventTransition(QState * sourceState = nullptr)
    */
    auto obj = new QEventTransition(OPQSTATE(1, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else if (ISBETWEEN(2, 3) && ISQOBJECT(1) && HB_ISNUM(2) && (ISQSTATE(3) || HB_ISNIL(3)))
  {
    /*
    QEventTransition(QObject * object, QEvent::Type type, QState * sourceState = nullptr)
    */
    auto obj = new QEventTransition(PQOBJECT(1), static_cast<QEvent::Type>(hb_parni(2)), OPQSTATE(3, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QEVENTTRANSITION_DELETE)
{
  auto obj = qobject_cast<QEventTransition *>(Qt5xHb::getQObjectPointerFromSelfItem());

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
QObject * eventSource() const
*/
HB_FUNC_STATIC(QEVENTTRANSITION_EVENTSOURCE)
{
  auto obj = qobject_cast<QEventTransition *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->eventSource();
      Qt5xHb::createReturnQObjectClass(ptr, "QOBJECT");
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
QEvent::Type eventType() const
*/
HB_FUNC_STATIC(QEVENTTRANSITION_EVENTTYPE)
{
  auto obj = qobject_cast<QEventTransition *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->eventType());
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
void setEventSource(QObject * object)
*/
HB_FUNC_STATIC(QEVENTTRANSITION_SETEVENTSOURCE)
{
  auto obj = qobject_cast<QEventTransition *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQOBJECT(1))
    {
#endif
      obj->setEventSource(PQOBJECT(1));
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
void setEventType(QEvent::Type type)
*/
HB_FUNC_STATIC(QEVENTTRANSITION_SETEVENTTYPE)
{
  auto obj = qobject_cast<QEventTransition *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setEventType(static_cast<QEvent::Type>(hb_parni(1)));
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

#pragma ENDDUMP
