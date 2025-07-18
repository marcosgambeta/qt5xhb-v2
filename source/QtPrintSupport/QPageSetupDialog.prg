//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPRINTER
#endif

CLASS QPageSetupDialog INHERIT QDialog

   METHOD new
   METHOD delete
   METHOD open
   METHOD printer
   METHOD setVisible
   METHOD exec
   METHOD done

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPageSetupDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtPrintSupport/QPageSetupDialog>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtPrintSupport/QPageSetupDialog>
#endif

HB_FUNC_STATIC(QPAGESETUPDIALOG_NEW)
{
  if (ISBETWEEN(1, 2) && ISQPRINTER(1) && (ISQWIDGET(2) || HB_ISNIL(2)))
  {
    /*
    QPageSetupDialog(QPrinter * printer, QWidget * parent = nullptr)
    */
    auto obj = new QPageSetupDialog(PQPRINTER(1), OPQWIDGET(2, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else if (ISBETWEEN(0, 1) && (ISQWIDGET(1) || HB_ISNIL(1)))
  {
    /*
    QPageSetupDialog(QWidget * parent = nullptr)
    */
    auto obj = new QPageSetupDialog(OPQWIDGET(1, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QPAGESETUPDIALOG_DELETE)
{
  auto obj = qobject_cast<QPageSetupDialog *>(Qt5xHb::getQObjectPointerFromSelfItem());

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
void open( QObject * receiver, const char * member)
*/
HB_FUNC_STATIC(QPAGESETUPDIALOG_OPEN)
{
  auto obj = qobject_cast<QPageSetupDialog *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && ISQOBJECT(1) && HB_ISCHAR(2))
    {
#endif
      obj->open(PQOBJECT(1), PCONSTCHAR(2));
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
QPrinter * printer()
*/
HB_FUNC_STATIC(QPAGESETUPDIALOG_PRINTER)
{
  auto obj = qobject_cast<QPageSetupDialog *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->printer();
      Qt5xHb::createReturnClass(ptr, "QPRINTER", false);
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
virtual void setVisible(bool visible)
*/
HB_FUNC_STATIC(QPAGESETUPDIALOG_SETVISIBLE)
{
  auto obj = qobject_cast<QPageSetupDialog *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setVisible(PBOOL(1));
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
virtual int exec()
*/
HB_FUNC_STATIC(QPAGESETUPDIALOG_EXEC)
{
  auto obj = qobject_cast<QPageSetupDialog *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->exec());
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
void done(int result)
*/
HB_FUNC_STATIC(QPAGESETUPDIALOG_DONE)
{
  auto obj = qobject_cast<QPageSetupDialog *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->done(PINT(1));
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
