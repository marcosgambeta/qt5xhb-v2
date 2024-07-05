//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QFONT
REQUEST QICON
REQUEST QLOCALE
REQUEST QMODELINDEX
REQUEST QSIZE
REQUEST QWIDGET
#endif

CLASS QStyleOptionViewItem INHERIT QStyleOption

   METHOD new
   METHOD displayAlignment
   METHOD setDisplayAlignment
   METHOD decorationAlignment
   METHOD setDecorationAlignment
   METHOD textElideMode
   METHOD setTextElideMode
   METHOD decorationPosition
   METHOD setDecorationPosition
   METHOD decorationSize
   METHOD setDecorationSize
   METHOD font
   METHOD setFont
   METHOD showDecorationSelected
   METHOD setShowDecorationSelected
   METHOD features
   METHOD setFeatures
   METHOD locale
   METHOD setLocale
   METHOD widget
   METHOD setWidget
   METHOD index
   METHOD setIndex
   METHOD checkState
   METHOD setCheckState
   METHOD icon
   METHOD setIcon
   METHOD text
   METHOD setText
   METHOD viewItemPosition
   METHOD setViewItemPosition
   METHOD backgroundBrush
   METHOD setBackgroundBrush

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionViewItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QStyleOptionViewItem>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QStyleOptionViewItem>
#endif

HB_FUNC_STATIC(QSTYLEOPTIONVIEWITEM_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QStyleOptionViewItem()
    */
    auto obj = new QStyleOptionViewItem();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQSTYLEOPTIONVIEWITEM(1))
  {
    /*
    QStyleOptionViewItem(const QStyleOptionViewItem & other)
    */
    auto obj = new QStyleOptionViewItem(*PQSTYLEOPTIONVIEWITEM(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
Qt::Alignment displayAlignment
*/
HB_FUNC_STATIC(QSTYLEOPTIONVIEWITEM_DISPLAYALIGNMENT)
{
  auto obj = static_cast<QStyleOptionViewItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->displayAlignment);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC(QSTYLEOPTIONVIEWITEM_SETDISPLAYALIGNMENT)
{
  auto obj = static_cast<QStyleOptionViewItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->displayAlignment = static_cast<Qt::Alignment>(hb_parni(1));
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
Qt::Alignment decorationAlignment
*/
HB_FUNC_STATIC(QSTYLEOPTIONVIEWITEM_DECORATIONALIGNMENT)
{
  auto obj = static_cast<QStyleOptionViewItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->decorationAlignment);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC(QSTYLEOPTIONVIEWITEM_SETDECORATIONALIGNMENT)
{
  auto obj = static_cast<QStyleOptionViewItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->decorationAlignment = static_cast<Qt::Alignment>(hb_parni(1));
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
Qt::TextElideMode textElideMode
*/
HB_FUNC_STATIC(QSTYLEOPTIONVIEWITEM_TEXTELIDEMODE)
{
  auto obj = static_cast<QStyleOptionViewItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->textElideMode);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC(QSTYLEOPTIONVIEWITEM_SETTEXTELIDEMODE)
{
  auto obj = static_cast<QStyleOptionViewItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->textElideMode = static_cast<Qt::TextElideMode>(hb_parni(1));
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
Position decorationPosition
*/
HB_FUNC_STATIC(QSTYLEOPTIONVIEWITEM_DECORATIONPOSITION)
{
  auto obj = static_cast<QStyleOptionViewItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->decorationPosition);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC(QSTYLEOPTIONVIEWITEM_SETDECORATIONPOSITION)
{
  auto obj = static_cast<QStyleOptionViewItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->decorationPosition = static_cast<QStyleOptionViewItem::Position>(hb_parni(1));
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QSize decorationSize
*/
HB_FUNC_STATIC(QSTYLEOPTIONVIEWITEM_DECORATIONSIZE)
{
  auto obj = static_cast<QStyleOptionViewItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      auto ptr = new QSize(obj->decorationSize);
      Qt5xHb::createReturnClass(ptr, "QSIZE", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC(QSTYLEOPTIONVIEWITEM_SETDECORATIONSIZE)
{
  auto obj = static_cast<QStyleOptionViewItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && ISQSIZE(1))
    {
      obj->decorationSize = *PQSIZE(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QFont font
*/
HB_FUNC_STATIC(QSTYLEOPTIONVIEWITEM_FONT)
{
  auto obj = static_cast<QStyleOptionViewItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      auto ptr = new QFont(obj->font);
      Qt5xHb::createReturnClass(ptr, "QFONT", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC(QSTYLEOPTIONVIEWITEM_SETFONT)
{
  auto obj = static_cast<QStyleOptionViewItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && ISQFONT(1))
    {
      obj->font = *PQFONT(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool showDecorationSelected
*/
HB_FUNC_STATIC(QSTYLEOPTIONVIEWITEM_SHOWDECORATIONSELECTED)
{
  auto obj = static_cast<QStyleOptionViewItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RBOOL(obj->showDecorationSelected);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC(QSTYLEOPTIONVIEWITEM_SETSHOWDECORATIONSELECTED)
{
  auto obj = static_cast<QStyleOptionViewItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
      obj->showDecorationSelected = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
ViewItemFeatures features
*/
HB_FUNC_STATIC(QSTYLEOPTIONVIEWITEM_FEATURES)
{
  auto obj = static_cast<QStyleOptionViewItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->features);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC(QSTYLEOPTIONVIEWITEM_SETFEATURES)
{
  auto obj = static_cast<QStyleOptionViewItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->features = static_cast<QStyleOptionViewItem::ViewItemFeatures>(hb_parni(1));
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QLocale locale
*/
HB_FUNC_STATIC(QSTYLEOPTIONVIEWITEM_LOCALE)
{
  auto obj = static_cast<QStyleOptionViewItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      auto ptr = new QLocale(obj->locale);
      Qt5xHb::createReturnClass(ptr, "QLOCALE", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC(QSTYLEOPTIONVIEWITEM_SETLOCALE)
{
  auto obj = static_cast<QStyleOptionViewItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && ISQLOCALE(1))
    {
      obj->locale = *PQLOCALE(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
const QWidget *widget
*/
HB_FUNC_STATIC(QSTYLEOPTIONVIEWITEM_WIDGET)
{
  auto obj = static_cast<QStyleOptionViewItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      auto ptr = obj->widget;
      Qt5xHb::createReturnQWidgetClass(ptr, "QWIDGET");
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC(QSTYLEOPTIONVIEWITEM_SETWIDGET)
{
  auto obj = static_cast<QStyleOptionViewItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && ISQWIDGET(1))
    {
      obj->widget = PQWIDGET(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QModelIndex index
*/
HB_FUNC_STATIC(QSTYLEOPTIONVIEWITEM_INDEX)
{
  auto obj = static_cast<QStyleOptionViewItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      auto ptr = new QModelIndex(obj->index);
      Qt5xHb::createReturnClass(ptr, "QMODELINDEX", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC(QSTYLEOPTIONVIEWITEM_SETINDEX)
{
  auto obj = static_cast<QStyleOptionViewItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && ISQMODELINDEX(1))
    {
      obj->index = *PQMODELINDEX(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
Qt::CheckState checkState
*/
HB_FUNC_STATIC(QSTYLEOPTIONVIEWITEM_CHECKSTATE)
{
  auto obj = static_cast<QStyleOptionViewItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->checkState);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC(QSTYLEOPTIONVIEWITEM_SETCHECKSTATE)
{
  auto obj = static_cast<QStyleOptionViewItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->checkState = static_cast<Qt::CheckState>(hb_parni(1));
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QIcon icon
*/
HB_FUNC_STATIC(QSTYLEOPTIONVIEWITEM_ICON)
{
  auto obj = static_cast<QStyleOptionViewItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      auto ptr = new QIcon(obj->icon);
      Qt5xHb::createReturnClass(ptr, "QICON", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC(QSTYLEOPTIONVIEWITEM_SETICON)
{
  auto obj = static_cast<QStyleOptionViewItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && ISQICON(1))
    {
      obj->icon = *PQICON(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QString text
*/
HB_FUNC_STATIC(QSTYLEOPTIONVIEWITEM_TEXT)
{
  auto obj = static_cast<QStyleOptionViewItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RQSTRING(obj->text);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC(QSTYLEOPTIONVIEWITEM_SETTEXT)
{
  auto obj = static_cast<QStyleOptionViewItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
      obj->text = PQSTRING(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
ViewItemPosition viewItemPosition
*/
HB_FUNC_STATIC(QSTYLEOPTIONVIEWITEM_VIEWITEMPOSITION)
{
  auto obj = static_cast<QStyleOptionViewItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->viewItemPosition);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC(QSTYLEOPTIONVIEWITEM_SETVIEWITEMPOSITION)
{
  auto obj = static_cast<QStyleOptionViewItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->viewItemPosition = static_cast<QStyleOptionViewItem::ViewItemPosition>(hb_parni(1));
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QBrush backgroundBrush
*/
HB_FUNC_STATIC(QSTYLEOPTIONVIEWITEM_BACKGROUNDBRUSH)
{
  auto obj = static_cast<QStyleOptionViewItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      auto ptr = new QBrush(obj->backgroundBrush);
      Qt5xHb::createReturnClass(ptr, "QBRUSH", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC(QSTYLEOPTIONVIEWITEM_SETBACKGROUNDBRUSH)
{
  auto obj = static_cast<QStyleOptionViewItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && ISQBRUSH(1))
    {
      obj->backgroundBrush = *PQBRUSH(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
