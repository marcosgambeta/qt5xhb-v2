//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMATRIX
REQUEST QRECTF
#endif

CLASS QStyleOptionGraphicsItem INHERIT QStyleOption

   METHOD new
   METHOD levelOfDetailFromTransform
   METHOD exposedRect
   METHOD setExposedRect
   METHOD matrix
   METHOD setMatrix
   METHOD levelOfDetail
   METHOD setLevelOfDetail

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionGraphicsItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QStyleOptionGraphicsItem>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QStyleOptionGraphicsItem>
#endif

HB_FUNC_STATIC(QSTYLEOPTIONGRAPHICSITEM_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QStyleOptionGraphicsItem()
    */
    auto obj = new QStyleOptionGraphicsItem();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQSTYLEOPTIONGRAPHICSITEM(1))
  {
    /*
    QStyleOptionGraphicsItem(const QStyleOptionGraphicsItem &other)
    */
    auto obj = new QStyleOptionGraphicsItem(*PQSTYLEOPTIONGRAPHICSITEM(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
static qreal levelOfDetailFromTransform(const QTransform &worldTransform)
*/
HB_FUNC_STATIC(QSTYLEOPTIONGRAPHICSITEM_LEVELOFDETAILFROMTRANSFORM)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && ISQTRANSFORM(1))
  {
#endif
    RQREAL(QStyleOptionGraphicsItem::levelOfDetailFromTransform(*PQTRANSFORM(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
QRectF exposedRect
*/
HB_FUNC_STATIC(QSTYLEOPTIONGRAPHICSITEM_EXPOSEDRECT)
{
  auto obj = static_cast<QStyleOptionGraphicsItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      auto ptr = new QRectF(obj->exposedRect);
      Qt5xHb::createReturnClass(ptr, "QRECTF", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC(QSTYLEOPTIONGRAPHICSITEM_SETEXPOSEDRECT)
{
  auto obj = static_cast<QStyleOptionGraphicsItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && ISQRECTF(1))
    {
      obj->exposedRect = *PQRECTF(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QMatrix matrix
*/
HB_FUNC_STATIC(QSTYLEOPTIONGRAPHICSITEM_MATRIX)
{
  auto obj = static_cast<QStyleOptionGraphicsItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      auto ptr = new QMatrix(obj->matrix);
      Qt5xHb::createReturnClass(ptr, "QMATRIX", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC(QSTYLEOPTIONGRAPHICSITEM_SETMATRIX)
{
  auto obj = static_cast<QStyleOptionGraphicsItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && ISQMATRIX(1))
    {
      obj->matrix = *PQMATRIX(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
qreal levelOfDetail
*/
HB_FUNC_STATIC(QSTYLEOPTIONGRAPHICSITEM_LEVELOFDETAIL)
{
  auto obj = static_cast<QStyleOptionGraphicsItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RQREAL(obj->levelOfDetail);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC(QSTYLEOPTIONGRAPHICSITEM_SETLEVELOFDETAIL)
{
  auto obj = static_cast<QStyleOptionGraphicsItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->levelOfDetail = PQREAL(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
