//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTANIMATION
REQUEST QABSTRACTSTATE
REQUEST QSTATE
REQUEST QSTATEMACHINE
#endif

CLASS QAbstractTransition INHERIT QObject

   METHOD delete
   METHOD addAnimation
   METHOD animations
   METHOD machine
   METHOD removeAnimation
   METHOD setTargetState
   METHOD setTargetStates
   METHOD sourceState
   METHOD targetState
   METHOD targetStates

   METHOD onTriggered

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAbstractTransition
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QAbstractTransition>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtCore/QAbstractTransition>
#endif

#include <QtCore/QAbstractState>
#include <QtCore/QState>
#include <QtCore/QStateMachine>

HB_FUNC_STATIC(QABSTRACTTRANSITION_DELETE)
{
  auto obj = qobject_cast<QAbstractTransition *>(Qt5xHb::getQObjectPointerFromSelfItem());

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
void addAnimation(QAbstractAnimation * animation)
*/
HB_FUNC_STATIC(QABSTRACTTRANSITION_ADDANIMATION)
{
  auto obj = qobject_cast<QAbstractTransition *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQABSTRACTANIMATION(1))
    {
#endif
      obj->addAnimation(PQABSTRACTANIMATION(1));
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
QList<QAbstractAnimation*> animations() const
*/
HB_FUNC_STATIC(QABSTRACTTRANSITION_ANIMATIONS)
{
  auto obj = qobject_cast<QAbstractTransition *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto list = obj->animations();
      auto pDynSym = hb_dynsymFindName("QABSTRACTANIMATION");
      auto pArray = hb_itemArrayNew(0);
      if (pDynSym != nullptr)
      {
        for (auto item : list)
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          auto pObject = hb_itemNew(nullptr);
          hb_itemCopy(pObject, hb_stackReturnItem());
          auto pItem = hb_itemPutPtr(nullptr, item);
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QABSTRACTANIMATION", HB_ERR_ARGS_BASEPARAMS);
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
}

/*
QStateMachine * machine() const
*/
HB_FUNC_STATIC(QABSTRACTTRANSITION_MACHINE)
{
  auto obj = qobject_cast<QAbstractTransition *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->machine();
      Qt5xHb::createReturnQObjectClass(ptr, "QSTATEMACHINE");
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
void removeAnimation(QAbstractAnimation * animation)
*/
HB_FUNC_STATIC(QABSTRACTTRANSITION_REMOVEANIMATION)
{
  auto obj = qobject_cast<QAbstractTransition *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQABSTRACTANIMATION(1))
    {
#endif
      obj->removeAnimation(PQABSTRACTANIMATION(1));
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
void setTargetState(QAbstractState * target)
*/
HB_FUNC_STATIC(QABSTRACTTRANSITION_SETTARGETSTATE)
{
  auto obj = qobject_cast<QAbstractTransition *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQABSTRACTSTATE(1))
    {
#endif
      obj->setTargetState(PQABSTRACTSTATE(1));
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
void setTargetStates(const QList<QAbstractState*> &targets)
*/
HB_FUNC_STATIC(QABSTRACTTRANSITION_SETTARGETSTATES)
{
  auto obj = qobject_cast<QAbstractTransition *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISARRAY(1))
    {
#endif
      QList<QAbstractState *> par1;
      auto aList1 = hb_param(1, HB_IT_ARRAY);
      int nLen1 = hb_arrayLen(aList1);
      for (auto i1 = 0; i1 < nLen1; i1++)
      {
        par1 << static_cast<QAbstractState *>(
            hb_itemGetPtr(hb_objSendMsg(hb_arrayGetItemPtr(aList1, i1 + 1), "POINTER", 0)));
      }
      obj->setTargetStates(par1);
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
QState * sourceState() const
*/
HB_FUNC_STATIC(QABSTRACTTRANSITION_SOURCESTATE)
{
  auto obj = qobject_cast<QAbstractTransition *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->sourceState();
      Qt5xHb::createReturnQObjectClass(ptr, "QSTATE");
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
QAbstractState * targetState() const
*/
HB_FUNC_STATIC(QABSTRACTTRANSITION_TARGETSTATE)
{
  auto obj = qobject_cast<QAbstractTransition *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->targetState();
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
QList<QAbstractState*> targetStates() const
*/
HB_FUNC_STATIC(QABSTRACTTRANSITION_TARGETSTATES)
{
  auto obj = qobject_cast<QAbstractTransition *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto list = obj->targetStates();
      auto pDynSym = hb_dynsymFindName("QABSTRACTSTATE");
      auto pArray = hb_itemArrayNew(0);
      if (pDynSym != nullptr)
      {
        for (auto item : list)
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          auto pObject = hb_itemNew(nullptr);
          hb_itemCopy(pObject, hb_stackReturnItem());
          auto pItem = hb_itemPutPtr(nullptr, item);
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QABSTRACTSTATE", HB_ERR_ARGS_BASEPARAMS);
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
}

/*
void triggered()
*/
HB_FUNC_STATIC(QABSTRACTTRANSITION_ONTRIGGERED)
{
  auto sender = qobject_cast<QAbstractTransition *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("triggered()");
    auto indexOfCodeBlock = -1;

    if (ISNUMPAR(1) && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender, &QAbstractTransition::triggered, [sender, indexOfCodeBlock]() {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QABSTRACTTRANSITION");
            hb_vmEvalBlockV(cb, 1, pSender);
            hb_itemRelease(pSender);
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
}

#pragma ENDDUMP
