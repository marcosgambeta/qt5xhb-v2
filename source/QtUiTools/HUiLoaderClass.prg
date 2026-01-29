//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2026 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QACTIONGROUP
REQUEST QLAYOUT
REQUEST QWIDGET
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

    // HUiLoader(QObject *parent = nullptr)
HB_FUNC_STATIC(HUILOADER_NEW)
{
  if (ISBETWEEN(0, 1) && ISQOBJECTORNIL(1)) {
    auto obj = new HUiLoader(OPQOBJECT(1, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  } else {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// ~HUiLoader()
HB_FUNC_STATIC(HUILOADER_DELETE)
{
  auto obj = (HUiLoader *)Qt5xHb::itemGetPtrStackSelfItem();

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
  auto obj = (HUiLoader *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1)) {
#endif
      obj->setCreateActionCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  RETURN_SELF();
}

// void setCreateActionGroupCB (PHB_ITEM block)
HB_FUNC_STATIC(HUILOADER_SETCREATEACTIONGROUPCB)
{
  auto obj = (HUiLoader *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1)) {
#endif
      obj->setCreateActionGroupCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  RETURN_SELF();
}

// void setCreateLayoutCB (PHB_ITEM block)
HB_FUNC_STATIC(HUILOADER_SETCREATELAYOUTCB)
{
  auto obj = (HUiLoader *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1)) {
#endif
      obj->setCreateLayoutCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  RETURN_SELF();
}

// void setCreateWidgetCB (PHB_ITEM block)
HB_FUNC_STATIC(HUILOADER_SETCREATEWIDGETCB)
{
  auto obj = (HUiLoader *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1)) {
#endif
      obj->setCreateWidgetCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  RETURN_SELF();
}

#pragma ENDDUMP
