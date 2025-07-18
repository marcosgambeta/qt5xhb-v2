//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QErrorMessage INHERIT QDialog

   METHOD new
   METHOD delete
   METHOD showMessage
   METHOD qtHandler

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QErrorMessage
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QErrorMessage>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QErrorMessage>
#endif

    /*
    QErrorMessage(QWidget * parent = nullptr)
    */
HB_FUNC_STATIC(QERRORMESSAGE_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQWIDGET(1) || HB_ISNIL(1)))
  {
    auto obj = new QErrorMessage(OPQWIDGET(1, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QERRORMESSAGE_DELETE)
{
  auto obj = qobject_cast<QErrorMessage *>(Qt5xHb::getQObjectPointerFromSelfItem());

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

HB_FUNC_STATIC(QERRORMESSAGE_SHOWMESSAGE)
{
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    /*
    void showMessage(const QString &message)
    */
    auto obj = qobject_cast<QErrorMessage *>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      obj->showMessage(PQSTRING(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
  {
    /*
    void showMessage(const QString &message, const QString &type)
    */
    auto obj = qobject_cast<QErrorMessage *>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      obj->showMessage(PQSTRING(1), PQSTRING(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
static QErrorMessage * qtHandler()
*/
HB_FUNC_STATIC(QERRORMESSAGE_QTHANDLER)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    auto ptr = QErrorMessage::qtHandler();
    Qt5xHb::createReturnQWidgetClass(ptr, "QERRORMESSAGE");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

#pragma ENDDUMP
