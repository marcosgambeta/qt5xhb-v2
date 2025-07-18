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

CLASS QAxSelect INHERIT QDialog

   METHOD new
   METHOD delete
   METHOD clsid
   METHOD sandboxingLevel

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAxSelect
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <ActiveQt/QAxSelect>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <ActiveQt/QAxSelect>
#endif

// QAxSelect(QWidget * parent = nullptr, Qt::WindowFlags flags = Qt::WindowFlags())
HB_FUNC_STATIC(QAXSELECT_NEW)
{
  if (ISBETWEEN(0, 2) && (ISQWIDGET(1) || HB_ISNIL(1)) && ISNUMORNIL(2))
  {
    auto obj = new QAxSelect(OPQWIDGET(1, nullptr), HB_ISNIL(2) ? static_cast<Qt::WindowFlags>(Qt::WindowFlags())
                                                                : static_cast<Qt::WindowFlags>(hb_parni(2)));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// ~QAxSelect() override
HB_FUNC_STATIC(QAXSELECT_DELETE)
{
  auto obj = qobject_cast<QAxSelect *>(Qt5xHb::getQObjectPointerFromSelfItem());

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

// QString clsid() const
HB_FUNC_STATIC(QAXSELECT_CLSID)
{
  auto obj = qobject_cast<QAxSelect *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->clsid());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QAxSelect::SandboxingLevel sandboxingLevel() const
HB_FUNC_STATIC(QAXSELECT_SANDBOXINGLEVEL)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 13, 0))
  auto obj = qobject_cast<QAxSelect *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->sandboxingLevel());
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
