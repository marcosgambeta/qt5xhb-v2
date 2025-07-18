//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QVIRTUALKEYBOARDINPUTCONTEXT
REQUEST QVIRTUALKEYBOARDINPUTENGINE
#endif

CLASS QVirtualKeyboardAbstractInputMethod INHERIT QObject

   METHOD delete
   METHOD inputContext
   METHOD inputEngine
   METHOD inputModes
   METHOD setInputMode
   METHOD setTextCase
   METHOD keyEvent
   METHOD selectionLists
   METHOD selectionListItemCount
   METHOD selectionListData
   METHOD selectionListItemSelected
   METHOD selectionListRemoveItem
   METHOD patternRecognitionModes
   METHOD traceEnd
   METHOD clickPreeditText
   METHOD reset
   METHOD update

   METHOD onSelectionListChanged
   METHOD onSelectionListActiveItemChanged
   METHOD onSelectionListsChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QVirtualKeyboardAbstractInputMethod
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtVirtualKeyboard/QVirtualKeyboardAbstractInputMethod>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtVirtualKeyboard/QVirtualKeyboardAbstractInputMethod>
#endif

#include <QtVirtualKeyboard/QVirtualKeyboardInputContext>

    /*
    ~QVirtualKeyboardAbstractInputMethod()
    */
HB_FUNC_STATIC(QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_DELETE)
{
  auto obj = qobject_cast<QVirtualKeyboardAbstractInputMethod *>(Qt5xHb::getQObjectPointerFromSelfItem());

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
QVirtualKeyboardInputContext * inputContext() const
*/
HB_FUNC_STATIC(QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_INPUTCONTEXT)
{
  auto obj = qobject_cast<QVirtualKeyboardAbstractInputMethod *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->inputContext();
      Qt5xHb::createReturnQObjectClass(ptr, "QVIRTUALKEYBOARDINPUTCONTEXT");
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
QVirtualKeyboardInputEngine * inputEngine() const
*/
HB_FUNC_STATIC(QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_INPUTENGINE)
{
  auto obj = qobject_cast<QVirtualKeyboardAbstractInputMethod *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->inputEngine();
      Qt5xHb::createReturnQObjectClass(ptr, "QVIRTUALKEYBOARDINPUTENGINE");
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
virtual QList<QVirtualKeyboardInputEngine::InputMode> inputModes(const QString &locale) = 0
*/
HB_FUNC_STATIC(QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_INPUTMODES)
{
  auto obj = qobject_cast<QVirtualKeyboardAbstractInputMethod *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      auto list = obj->inputModes(PQSTRING(1));
      auto pArray = hb_itemArrayNew(0);
      for (const auto &item : list)
      {
        auto pItem = hb_itemPutNI(nullptr, static_cast<int>(item));
        hb_arrayAddForward(pArray, pItem);
        hb_itemRelease(pItem);
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
virtual bool setInputMode(const QString &locale, QVirtualKeyboardInputEngine::InputMode inputMode) = 0
*/
HB_FUNC_STATIC(QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_SETINPUTMODE)
{
  auto obj = qobject_cast<QVirtualKeyboardAbstractInputMethod *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2))
    {
#endif
      RBOOL(obj->setInputMode(PQSTRING(1), static_cast<QVirtualKeyboardInputEngine::InputMode>(hb_parni(2))));
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
virtual bool setTextCase(QVirtualKeyboardInputEngine::TextCase textCase) = 0
*/
HB_FUNC_STATIC(QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_SETTEXTCASE)
{
  auto obj = qobject_cast<QVirtualKeyboardAbstractInputMethod *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->setTextCase(static_cast<QVirtualKeyboardInputEngine::TextCase>(hb_parni(1))));
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
virtual bool keyEvent(Qt::Key key, const QString &text, Qt::KeyboardModifiers modifiers) = 0
*/
HB_FUNC_STATIC(QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_KEYEVENT)
{
  auto obj = qobject_cast<QVirtualKeyboardAbstractInputMethod *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(3) && HB_ISNUM(1) && HB_ISCHAR(2) && HB_ISNUM(3))
    {
#endif
      RBOOL(obj->keyEvent(static_cast<Qt::Key>(hb_parni(1)), PQSTRING(2),
                          static_cast<Qt::KeyboardModifiers>(hb_parni(3))));
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
virtual QList<QVirtualKeyboardSelectionListModel::Type> selectionLists()
*/
HB_FUNC_STATIC(QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_SELECTIONLISTS)
{
  auto obj = qobject_cast<QVirtualKeyboardAbstractInputMethod *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto list = obj->selectionLists();
      auto pArray = hb_itemArrayNew(0);
      for (const auto &item : list)
      {
        auto pItem = hb_itemPutNI(nullptr, static_cast<int>(item));
        hb_arrayAddForward(pArray, pItem);
        hb_itemRelease(pItem);
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
virtual int selectionListItemCount(QVirtualKeyboardSelectionListModel::Type type)
*/
HB_FUNC_STATIC(QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_SELECTIONLISTITEMCOUNT)
{
  auto obj = qobject_cast<QVirtualKeyboardAbstractInputMethod *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RINT(obj->selectionListItemCount(static_cast<QVirtualKeyboardSelectionListModel::Type>(hb_parni(1))));
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
virtual QVariant selectionListData(QVirtualKeyboardSelectionListModel::Type type, int index,
QVirtualKeyboardSelectionListModel::Role role)
*/
HB_FUNC_STATIC(QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_SELECTIONLISTDATA)
{
  auto obj = qobject_cast<QVirtualKeyboardAbstractInputMethod *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3))
    {
#endif
      auto ptr = new QVariant(
          obj->selectionListData(static_cast<QVirtualKeyboardSelectionListModel::Type>(hb_parni(1)), PINT(2),
                                 static_cast<QVirtualKeyboardSelectionListModel::Role>(hb_parni(3))));
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
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
virtual void selectionListItemSelected(QVirtualKeyboardSelectionListModel::Type type, int index)
*/
HB_FUNC_STATIC(QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_SELECTIONLISTITEMSELECTED)
{
  auto obj = qobject_cast<QVirtualKeyboardAbstractInputMethod *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
    {
#endif
      obj->selectionListItemSelected(static_cast<QVirtualKeyboardSelectionListModel::Type>(hb_parni(1)), PINT(2));
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
virtual bool selectionListRemoveItem(QVirtualKeyboardSelectionListModel::Type type, int index)
*/
HB_FUNC_STATIC(QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_SELECTIONLISTREMOVEITEM)
{
  auto obj = qobject_cast<QVirtualKeyboardAbstractInputMethod *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
    {
#endif
      RBOOL(obj->selectionListRemoveItem(static_cast<QVirtualKeyboardSelectionListModel::Type>(hb_parni(1)), PINT(2)));
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
virtual QList<QVirtualKeyboardInputEngine::PatternRecognitionMode> patternRecognitionModes() const
*/
HB_FUNC_STATIC(QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_PATTERNRECOGNITIONMODES)
{
  auto obj = qobject_cast<QVirtualKeyboardAbstractInputMethod *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto list = obj->patternRecognitionModes();
      auto pArray = hb_itemArrayNew(0);
      for (const auto &item : list)
      {
        auto pItem = hb_itemPutNI(nullptr, static_cast<int>(item));
        hb_arrayAddForward(pArray, pItem);
        hb_itemRelease(pItem);
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
virtual bool traceEnd(QVirtualKeyboardTrace * trace)
*/
HB_FUNC_STATIC(QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_TRACEEND)
{
  auto obj = qobject_cast<QVirtualKeyboardAbstractInputMethod *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQVIRTUALKEYBOARDTRACE(1))
    {
#endif
      RBOOL(obj->traceEnd(PQVIRTUALKEYBOARDTRACE(1)));
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
virtual bool clickPreeditText(int cursorPosition)
*/
HB_FUNC_STATIC(QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_CLICKPREEDITTEXT)
{
  auto obj = qobject_cast<QVirtualKeyboardAbstractInputMethod *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->clickPreeditText(PINT(1)));
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
virtual void reset()
*/
HB_FUNC_STATIC(QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_RESET)
{
  auto obj = qobject_cast<QVirtualKeyboardAbstractInputMethod *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->reset();
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
virtual void update()
*/
HB_FUNC_STATIC(QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_UPDATE)
{
  auto obj = qobject_cast<QVirtualKeyboardAbstractInputMethod *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->update();
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
void selectionListChanged(QVirtualKeyboardSelectionListModel::Type type)
*/
HB_FUNC_STATIC(QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_ONSELECTIONLISTCHANGED)
{
  auto sender = qobject_cast<QVirtualKeyboardAbstractInputMethod *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal =
        sender->metaObject()->indexOfSignal("selectionListChanged(QVirtualKeyboardSelectionListModel::Type)");
    auto indexOfCodeBlock = -1;

    if (ISNUMPAR(1) && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender, &QVirtualKeyboardAbstractInputMethod::selectionListChanged,
                                           [sender, indexOfCodeBlock](QVirtualKeyboardSelectionListModel::Type arg1) {
                                             auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

                                             if (cb != nullptr)
                                             {
                                               auto pSender = Qt5xHb::Signals_return_qobject(
                                                   sender, "QVIRTUALKEYBOARDABSTRACTINPUTMETHOD");
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
}

/*
void selectionListActiveItemChanged(QVirtualKeyboardSelectionListModel::Type type, int index)
*/
HB_FUNC_STATIC(QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_ONSELECTIONLISTACTIVEITEMCHANGED)
{
  auto sender = qobject_cast<QVirtualKeyboardAbstractInputMethod *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal(
        "selectionListActiveItemChanged(QVirtualKeyboardSelectionListModel::Type,int)");
    auto indexOfCodeBlock = -1;

    if (ISNUMPAR(1) && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection =
            QObject::connect(sender, &QVirtualKeyboardAbstractInputMethod::selectionListActiveItemChanged,
                             [sender, indexOfCodeBlock](QVirtualKeyboardSelectionListModel::Type arg1, int arg2) {
                               auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

                               if (cb != nullptr)
                               {
                                 auto pSender =
                                     Qt5xHb::Signals_return_qobject(sender, "QVIRTUALKEYBOARDABSTRACTINPUTMETHOD");
                                 auto pArg1 = hb_itemPutNI(nullptr, static_cast<int>(arg1));
                                 auto pArg2 = hb_itemPutNI(nullptr, arg2);
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
}

/*
void selectionListsChanged()
*/
HB_FUNC_STATIC(QVIRTUALKEYBOARDABSTRACTINPUTMETHOD_ONSELECTIONLISTSCHANGED)
{
  auto sender = qobject_cast<QVirtualKeyboardAbstractInputMethod *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("selectionListsChanged()");
    auto indexOfCodeBlock = -1;

    if (ISNUMPAR(1) && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(
            sender, &QVirtualKeyboardAbstractInputMethod::selectionListsChanged, [sender, indexOfCodeBlock]() {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QVIRTUALKEYBOARDABSTRACTINPUTMETHOD");
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
