//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2026 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAction
REQUEST QActionGroup
REQUEST QLayout
REQUEST QWidget
#endif

CLASS HUiLoader INHERIT QUiLoader

   METHOD new
   METHOD delete

   METHOD setCreateActionCB
   METHOD setCreateActionGroupCB
   METHOD setCreateLayoutCB
   METHOD setCreateWidgetCB

   DESTRUCTOR destroyObject

ENDCLASS

PROCEDURE destroyObject() CLASS HUiLoader
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include "HUiLoader.hpp"

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#define GET_PTR_FROM_SELF(p) auto p = qobject_cast<HUiLoader *>(Qt5xHb::getQObjectPointerFromSelfItem())

// HUiLoader(QObject *parent = nullptr)
HB_FUNC_STATIC(HUILOADER_NEW)
{
  if (ISBETWEEN(0, 1) && ISQOBJECTORNIL(1)) {
    auto obj = new HUiLoader(OPQOBJECT(1, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  } else {
    THROW_ERROR_3012();
  }
}

// ~HUiLoader()
HB_FUNC_STATIC(HUILOADER_DELETE)
{
  GET_PTR_FROM_SELF(obj);
  DELETE_QOBJECT(obj);
  RETURN_SELF();
}

// QAction *createAction(QObject *parent = nullptr, const QString &name = QString())

// QActionGroup *createActionGroup(QObject *parent = nullptr, const QString &name = QString())

// QLayout *createLayout(const QString &className, QObject *parent = nullptr, const QString &name = QString())

// QWidget *createWidget(const QString &className, QWidget *parent = nullptr, const QString &name = QString())

// void setCreateActionCB (PHB_ITEM block)
HB_FUNC_STATIC(HUILOADER_SETCREATEACTIONCB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1)) {
#endif
      obj->setCreateActionCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setCreateActionGroupCB (PHB_ITEM block)
HB_FUNC_STATIC(HUILOADER_SETCREATEACTIONGROUPCB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1)) {
#endif
      obj->setCreateActionGroupCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setCreateLayoutCB (PHB_ITEM block)
HB_FUNC_STATIC(HUILOADER_SETCREATELAYOUTCB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1)) {
#endif
      obj->setCreateLayoutCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setCreateWidgetCB (PHB_ITEM block)
HB_FUNC_STATIC(HUILOADER_SETCREATEWIDGETCB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1)) {
#endif
      obj->setCreateWidgetCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

#pragma ENDDUMP
