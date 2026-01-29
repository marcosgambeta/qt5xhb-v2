//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2026 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPainter
REQUEST QSTyleOptionViewItem
REQUEST QModelIndex
REQUEST QVariant
#endif

CLASS HStyledItemDelegate INHERIT QStyledItemDelegate

   METHOD new
   METHOD delete
   //METHOD paint
   METHOD defaultPaint
   //METHOD sizeHint
   //METHOD displayText

   METHOD setPaintCB
   METHOD setSizeHintCB
   METHOD setDisplayTextCB
   METHOD setCreateEditorCB
   METHOD setEditorDataCB
   METHOD setModelDataCB
   METHOD setUpdateEditorGeometryCB
   METHOD setDestroyEditorCB

   DESTRUCTOR destroyObject

ENDCLASS

PROCEDURE destroyObject() CLASS HStyledItemDelegate
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include "HStyledItemDelegate.hpp"

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#define GET_PTR_FROM_SELF(p) auto p = (HStyledItemDelegate *)Qt5xHb::itemGetPtrStackSelfItem()

HB_FUNC_STATIC(HSTYLEDITEMDELEGATE_NEW)
{
  if (ISBETWEEN(0, 1) && ISQOBJECTORNIL(1)) {
    // explicit HStyledItemDelegate(QObject *parent = nullptr)
    auto obj = new HStyledItemDelegate(OPQOBJECT(1, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  } else if (ISBETWEEN(1, 2) && ISQOBJECTORNIL(2)) {
    // HStyledItemDelegate(PHB_ITEM paintBlock, QObject *parent = nullptr)
    auto obj = new HStyledItemDelegate(PBLOCKORSYMBOL(1), OPQOBJECT(2, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  } else if (ISBETWEEN(2, 3) && ISQOBJECTORNIL(3)) {
    // HStyledItemDelegate(PHB_ITEM paintBlock, PHB_ITEM sizeHintBlock, QObject *parent = nullptr)
    auto obj = new HStyledItemDelegate(PBLOCKORSYMBOL(1), PBLOCKORSYMBOL(2), OPQOBJECT(3, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  } else {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(HSTYLEDITEMDELEGATE_DELETE)
{
  GET_PTR_FROM_SELF(obj);
  DELETE_QOBJECT(obj);
  RETURN_SELF();
}

// void paint(QPainter *painter, const QStyleOptionViewItem &option, const QModelIndex &index) const
// HB_FUNC_STATIC(HSTYLEDITEMDELEGATE_PAINT)
// {
// }

// void defaultPaint(QPainter *painter, const QStyleOptionViewItem &option, const QModelIndex &index) const
HB_FUNC_STATIC(HSTYLEDITEMDELEGATE_DEFAULTPAINT)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(3) && ISQPAINTER(1) && ISQSTYLEOPTIONVIEWITEM(2) && ISQMODELINDEX(3)) {
#endif
      obj->defaultPaint(PQPAINTER(1), *PQSTYLEOPTIONVIEWITEM(2), *PQMODELINDEX(3));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  RETURN_SELF();
}

// QSize sizeHint(const QStyleOptionViewItem &option, const QModelIndex &index) const
// HB_FUNC_STATIC(HSTYLEDITEMDELEGATE_SIZEHINT)
// {
// }

// void setPaintCB (PHB_ITEM block)
HB_FUNC_STATIC(HSTYLEDITEMDELEGATE_SETPAINTCB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1)) {
#endif
      obj->setPaintCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  RETURN_SELF();
}

// void setSizeHintCB (PHB_ITEM block)
HB_FUNC_STATIC(HSTYLEDITEMDELEGATE_SETSIZEHINTCB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1)) {
#endif
      obj->setSizeHintCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  RETURN_SELF();
}

// void setDisplayTextCB (PHB_ITEM block)
HB_FUNC_STATIC(HSTYLEDITEMDELEGATE_SETDISPLAYTEXTCB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1)) {
#endif
      obj->setDisplayTextCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  RETURN_SELF();
}

// void setCreateEditorCB (PHB_ITEM block)
HB_FUNC_STATIC(HSTYLEDITEMDELEGATE_SETCREATEEDITORCB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1)) {
#endif
      obj->setCreateEditorCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  RETURN_SELF();
}

// void setEditorDataCB (PHB_ITEM block)
HB_FUNC_STATIC(HSTYLEDITEMDELEGATE_SETEDITORDATACB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1)) {
#endif
      obj->setEditorDataCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  RETURN_SELF();
}

// void setModelDataCB (PHB_ITEM block)
HB_FUNC_STATIC(HSTYLEDITEMDELEGATE_SETMODELDATACB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1)) {
#endif
      obj->setModelDataCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  RETURN_SELF();
}

// void setUpdateEditorGeometryCB (PHB_ITEM block)
HB_FUNC_STATIC(HSTYLEDITEMDELEGATE_SETUPDATEEDITORGEOMETRYCB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1)) {
#endif
      obj->setUpdateEditorGeometryCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  RETURN_SELF();
}

// void setDestroyEditorCB (PHB_ITEM block)
HB_FUNC_STATIC(HSTYLEDITEMDELEGATE_SETDESTROYEDITORCB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1)) {
#endif
      obj->setDestroyEditorCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  RETURN_SELF();
}

#pragma ENDDUMP
