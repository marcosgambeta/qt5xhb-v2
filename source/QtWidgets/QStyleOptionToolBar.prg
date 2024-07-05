//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QStyleOptionToolBar INHERIT QStyleOption

   METHOD new
   METHOD positionOfLine
   METHOD setPositionOfLine
   METHOD positionWithinLine
   METHOD setPositionWithinLine
   METHOD toolBarArea
   METHOD setToolBarArea
   METHOD features
   METHOD setFeatures
   METHOD lineWidth
   METHOD setLineWidth
   METHOD midLineWidth
   METHOD setMidLineWidth

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionToolBar
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QStyleOptionToolBar>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QStyleOptionToolBar>
#endif

HB_FUNC_STATIC(QSTYLEOPTIONTOOLBAR_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QStyleOptionToolBar()
    */
    auto obj = new QStyleOptionToolBar();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQSTYLEOPTIONTOOLBAR(1))
  {
    /*
    QStyleOptionToolBar(const QStyleOptionToolBar & other)
    */
    auto obj = new QStyleOptionToolBar(*PQSTYLEOPTIONTOOLBAR(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
ToolBarPosition positionOfLine
*/
HB_FUNC_STATIC(QSTYLEOPTIONTOOLBAR_POSITIONOFLINE)
{
  auto obj = static_cast<QStyleOptionToolBar *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->positionOfLine);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC(QSTYLEOPTIONTOOLBAR_SETPOSITIONOFLINE)
{
  auto obj = static_cast<QStyleOptionToolBar *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->positionOfLine = static_cast<QStyleOptionToolBar::ToolBarPosition>(hb_parni(1));
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
ToolBarPosition positionWithinLine
*/
HB_FUNC_STATIC(QSTYLEOPTIONTOOLBAR_POSITIONWITHINLINE)
{
  auto obj = static_cast<QStyleOptionToolBar *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->positionWithinLine);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC(QSTYLEOPTIONTOOLBAR_SETPOSITIONWITHINLINE)
{
  auto obj = static_cast<QStyleOptionToolBar *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->positionWithinLine = static_cast<QStyleOptionToolBar::ToolBarPosition>(hb_parni(1));
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
Qt::ToolBarArea toolBarArea
*/
HB_FUNC_STATIC(QSTYLEOPTIONTOOLBAR_TOOLBARAREA)
{
  auto obj = static_cast<QStyleOptionToolBar *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->toolBarArea);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC(QSTYLEOPTIONTOOLBAR_SETTOOLBARAREA)
{
  auto obj = static_cast<QStyleOptionToolBar *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->toolBarArea = static_cast<Qt::ToolBarArea>(hb_parni(1));
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
ToolBarFeatures features
*/
HB_FUNC_STATIC(QSTYLEOPTIONTOOLBAR_FEATURES)
{
  auto obj = static_cast<QStyleOptionToolBar *>(Qt5xHb::itemGetPtrStackSelfItem());

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

HB_FUNC_STATIC(QSTYLEOPTIONTOOLBAR_SETFEATURES)
{
  auto obj = static_cast<QStyleOptionToolBar *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->features = static_cast<QStyleOptionToolBar::ToolBarFeatures>(hb_parni(1));
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int lineWidth
*/
HB_FUNC_STATIC(QSTYLEOPTIONTOOLBAR_LINEWIDTH)
{
  auto obj = static_cast<QStyleOptionToolBar *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RINT(obj->lineWidth);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC(QSTYLEOPTIONTOOLBAR_SETLINEWIDTH)
{
  auto obj = static_cast<QStyleOptionToolBar *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->lineWidth = PINT(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int midLineWidth
*/
HB_FUNC_STATIC(QSTYLEOPTIONTOOLBAR_MIDLINEWIDTH)
{
  auto obj = static_cast<QStyleOptionToolBar *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RINT(obj->midLineWidth);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC(QSTYLEOPTIONTOOLBAR_SETMIDLINEWIDTH)
{
  auto obj = static_cast<QStyleOptionToolBar *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->midLineWidth = PINT(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
