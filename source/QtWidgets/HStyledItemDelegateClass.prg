//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPAINTER
REQUEST QSTYLEOPTIONVIEWITEM
REQUEST QMODELINDEX
REQUEST QVARIANT
#endif

CLASS HStyledItemDelegate INHERIT QStyledItemDelegate

   METHOD new
   METHOD delete
//   METHOD paint
   METHOD defaultPaint
//   METHOD sizeHint
//   METHOD displayText

   METHOD setPaintCB
   METHOD setSizeHintCB
   METHOD setDisplayTextCB
   METHOD setCreateEditorCB
   METHOD setEditorDataCB
   METHOD setModelDataCB
   METHOD setUpdateEditorGeometryCB
   METHOD setDestroyEditorCB

   DESTRUCTOR destroyObject

END CLASS

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

    /*
    explicit HStyledItemDelegate(QObject *parent = nullptr)
    */
    void HStyledItemDelegate_new1()
{
  auto obj = new HStyledItemDelegate(OPQOBJECT(1, nullptr));
  Qt5xHb::returnNewObject(obj, false);
}

/*
HStyledItemDelegate(PHB_ITEM paintBlock, QObject *parent = nullptr)
*/
void HStyledItemDelegate_new2()
{
  auto obj = new HStyledItemDelegate(PBLOCKORSYMBOL(1), OPQOBJECT(2, nullptr));
  Qt5xHb::returnNewObject(obj, false);
}

/*
HStyledItemDelegate(PHB_ITEM paintBlock, PHB_ITEM sizeHintBlock, QObject *parent = nullptr)
*/
void HStyledItemDelegate_new3()
{
  auto obj = new HStyledItemDelegate(PBLOCKORSYMBOL(1), PBLOCKORSYMBOL(2), OPQOBJECT(3, nullptr));
  Qt5xHb::returnNewObject(obj, false);
}

/*
[1]explicit HStyledItemDelegate(QObject *parent = nullptr)
[2]HStyledItemDelegate(PHB_ITEM paintBlock, QObject *parent = nullptr)
[3]HStyledItemDelegate(PHB_ITEM paintBlock, PHB_ITEM sizeHintBlock, QObject *parent = nullptr)
*/

HB_FUNC_STATIC(HSTYLEDITEMDELEGATE_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    HStyledItemDelegate_new1();
  }
  else if (ISBETWEEN(1, 2) && (ISQOBJECT(2) || HB_ISNIL(2)))
  {
    HStyledItemDelegate_new2();
  }
  else if (ISBETWEEN(2, 3) && (ISQOBJECT(3) || HB_ISNIL(3)))
  {
    HStyledItemDelegate_new3();
  } else {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(HSTYLEDITEMDELEGATE_DELETE)
{
  auto obj = (HStyledItemDelegate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != nullptr) {
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
void paint(QPainter *painter, const QStyleOptionViewItem &option, const QModelIndex &index) const
*/
// HB_FUNC_STATIC(HSTYLEDITEMDELEGATE_PAINT)
// {
// }

/*
void defaultPaint(QPainter *painter, const QStyleOptionViewItem &option, const QModelIndex &index) const
*/
HB_FUNC_STATIC(HSTYLEDITEMDELEGATE_DEFAULTPAINT)
{
  auto obj = (HStyledItemDelegate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(3) && ISQPAINTER(1) && ISQSTYLEOPTIONVIEWITEM(2) && ISQMODELINDEX(3))
    {
#endif
      obj->defaultPaint(PQPAINTER(1), *PQSTYLEOPTIONVIEWITEM(2), *PQMODELINDEX(3));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QSize sizeHint(const QStyleOptionViewItem &option, const QModelIndex &index) const
*/
// HB_FUNC_STATIC(HSTYLEDITEMDELEGATE_SIZEHINT)
// {
// }

/*
void setPaintCB (PHB_ITEM block)
*/
HB_FUNC_STATIC(HSTYLEDITEMDELEGATE_SETPAINTCB)
{
  auto obj = (HStyledItemDelegate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1))
    {
#endif
      obj->setPaintCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setSizeHintCB (PHB_ITEM block)
*/
HB_FUNC_STATIC(HSTYLEDITEMDELEGATE_SETSIZEHINTCB)
{
  auto obj = (HStyledItemDelegate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1))
    {
#endif
      obj->setSizeHintCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setDisplayTextCB (PHB_ITEM block)
*/
HB_FUNC_STATIC(HSTYLEDITEMDELEGATE_SETDISPLAYTEXTCB)
{
  auto obj = (HStyledItemDelegate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1))
    {
#endif
      obj->setDisplayTextCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setCreateEditorCB (PHB_ITEM block)
*/
HB_FUNC_STATIC(HSTYLEDITEMDELEGATE_SETCREATEEDITORCB)
{
  auto obj = (HStyledItemDelegate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1))
    {
#endif
      obj->setCreateEditorCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setEditorDataCB (PHB_ITEM block)
*/
HB_FUNC_STATIC(HSTYLEDITEMDELEGATE_SETEDITORDATACB)
{
  auto obj = (HStyledItemDelegate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1))
    {
#endif
      obj->setEditorDataCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setModelDataCB (PHB_ITEM block)
*/
HB_FUNC_STATIC(HSTYLEDITEMDELEGATE_SETMODELDATACB)
{
  auto obj = (HStyledItemDelegate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1))
    {
#endif
      obj->setModelDataCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setUpdateEditorGeometryCB (PHB_ITEM block)
*/
HB_FUNC_STATIC(HSTYLEDITEMDELEGATE_SETUPDATEEDITORGEOMETRYCB)
{
  auto obj = (HStyledItemDelegate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1))
    {
#endif
      obj->setUpdateEditorGeometryCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setDestroyEditorCB (PHB_ITEM block)
*/
HB_FUNC_STATIC(HSTYLEDITEMDELEGATE_SETDESTROYEDITORCB)
{
  auto obj = (HStyledItemDelegate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1))
    {
#endif
      obj->setDestroyEditorCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
