//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTSTATE
#endif

CLASS QHistoryState INHERIT QAbstractState

   METHOD new
   METHOD delete
   METHOD defaultState
   METHOD setDefaultState
   METHOD historyType
   METHOD setHistoryType

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QHistoryState
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QHistoryState>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtCore/QHistoryState>
#endif

HB_FUNC_STATIC(QHISTORYSTATE_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQSTATE(1) || HB_ISNIL(1)))
  {
    /*
    QHistoryState(QState * parent = nullptr)
    */
    auto obj = new QHistoryState(OPQSTATE(1, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else if (ISBETWEEN(1, 2) && HB_ISNUM(1) && (ISQSTATE(2) || HB_ISNIL(2)))
  {
    /*
    QHistoryState(QHistoryState::HistoryType type, QState * parent = nullptr)
    */
    auto obj = new QHistoryState(static_cast<QHistoryState::HistoryType>(hb_parni(1)), OPQSTATE(2, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QHISTORYSTATE_DELETE)
{
  auto obj = qobject_cast<QHistoryState *>(Qt5xHb::getQObjectPointerFromSelfItem());

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
QAbstractState * defaultState() const
*/
HB_FUNC_STATIC(QHISTORYSTATE_DEFAULTSTATE)
{
  auto obj = qobject_cast<QHistoryState *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->defaultState();
      Qt5xHb::createReturnQObjectClass(ptr, "QABSTRACTSTATE");
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
void setDefaultState(QAbstractState * state)
*/
HB_FUNC_STATIC(QHISTORYSTATE_SETDEFAULTSTATE)
{
  auto obj = qobject_cast<QHistoryState *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQABSTRACTSTATE(1))
    {
#endif
      obj->setDefaultState(PQABSTRACTSTATE(1));
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
QHistoryState::HistoryType historyType() const
*/
HB_FUNC_STATIC(QHISTORYSTATE_HISTORYTYPE)
{
  auto obj = qobject_cast<QHistoryState *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->historyType());
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
void setHistoryType(QHistoryState::HistoryType type)
*/
HB_FUNC_STATIC(QHISTORYSTATE_SETHISTORYTYPE)
{
  auto obj = qobject_cast<QHistoryState *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setHistoryType(static_cast<QHistoryState::HistoryType>(hb_parni(1)));
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
