//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGRAPHICSITEM
REQUEST QRECTF
REQUEST QSIZEF
REQUEST QSIZEPOLICY
#endif

CLASS QGraphicsLayoutItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD contentsRect
   METHOD effectiveSizeHint
   METHOD geometry
   METHOD getContentsMargins
   METHOD graphicsItem
   METHOD isLayout
   METHOD maximumHeight
   METHOD maximumSize
   METHOD maximumWidth
   METHOD minimumHeight
   METHOD minimumSize
   METHOD minimumWidth
   METHOD ownedByLayout
   METHOD parentLayoutItem
   METHOD preferredHeight
   METHOD preferredSize
   METHOD preferredWidth
   METHOD setGeometry
   METHOD setMaximumHeight
   METHOD setMaximumSize
   METHOD setMaximumWidth
   METHOD setMinimumHeight
   METHOD setMinimumSize
   METHOD setMinimumWidth
   METHOD setParentLayoutItem
   METHOD setPreferredHeight
   METHOD setPreferredSize
   METHOD setPreferredWidth
   METHOD setSizePolicy
   METHOD sizePolicy
   METHOD updateGeometry

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGraphicsLayoutItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QGraphicsLayoutItem>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QGraphicsLayoutItem>
#endif

HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_DELETE)
{
  auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    delete obj;
    obj = nullptr;
    auto ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QRectF contentsRect() const
*/
HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_CONTENTSRECT)
{
  auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QRectF(obj->contentsRect());
      Qt5xHb::createReturnClass(ptr, "QRECTF", true);
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
QSizeF effectiveSizeHint(Qt::SizeHint which, const QSizeF & constraint = QSizeF()) const
*/
HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_EFFECTIVESIZEHINT)
{
  auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISNUM(1) && (ISQSIZEF(2) || HB_ISNIL(2)))
    {
#endif
      auto ptr =
          new QSizeF(obj->effectiveSizeHint(static_cast<Qt::SizeHint>(hb_parni(1)),
                                            HB_ISNIL(2) ? QSizeF() : *static_cast<QSizeF *>(Qt5xHb::itemGetPtr(2))));
      Qt5xHb::createReturnClass(ptr, "QSIZEF", true);
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
QRectF geometry() const
*/
HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_GEOMETRY)
{
  auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QRectF(obj->geometry());
      Qt5xHb::createReturnClass(ptr, "QRECTF", true);
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
virtual void getContentsMargins(qreal * left, qreal * top, qreal * right, qreal * bottom) const
*/
HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_GETCONTENTSMARGINS)
{
  auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4))
    {
#endif
      qreal par1;
      qreal par2;
      qreal par3;
      qreal par4;
      obj->getContentsMargins(&par1, &par2, &par3, &par4);
      hb_stornd(par1, 1);
      hb_stornd(par2, 2);
      hb_stornd(par3, 3);
      hb_stornd(par4, 4);
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
QGraphicsItem * graphicsItem() const
*/
HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_GRAPHICSITEM)
{
  auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->graphicsItem();
      Qt5xHb::createReturnClass(ptr, "QGRAPHICSITEM", false);
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
bool isLayout() const
*/
HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_ISLAYOUT)
{
  auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isLayout());
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
qreal maximumHeight() const
*/
HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_MAXIMUMHEIGHT)
{
  auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->maximumHeight());
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
QSizeF maximumSize() const
*/
HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_MAXIMUMSIZE)
{
  auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QSizeF(obj->maximumSize());
      Qt5xHb::createReturnClass(ptr, "QSIZEF", true);
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
qreal maximumWidth() const
*/
HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_MAXIMUMWIDTH)
{
  auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->maximumWidth());
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
qreal minimumHeight() const
*/
HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_MINIMUMHEIGHT)
{
  auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->minimumHeight());
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
QSizeF minimumSize() const
*/
HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_MINIMUMSIZE)
{
  auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QSizeF(obj->minimumSize());
      Qt5xHb::createReturnClass(ptr, "QSIZEF", true);
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
qreal minimumWidth() const
*/
HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_MINIMUMWIDTH)
{
  auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->minimumWidth());
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
bool ownedByLayout() const
*/
HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_OWNEDBYLAYOUT)
{
  auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->ownedByLayout());
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
QGraphicsLayoutItem * parentLayoutItem() const
*/
HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_PARENTLAYOUTITEM)
{
  auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->parentLayoutItem();
      Qt5xHb::createReturnClass(ptr, "QGRAPHICSLAYOUTITEM", false);
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
qreal preferredHeight() const
*/
HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_PREFERREDHEIGHT)
{
  auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->preferredHeight());
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
QSizeF preferredSize() const
*/
HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_PREFERREDSIZE)
{
  auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QSizeF(obj->preferredSize());
      Qt5xHb::createReturnClass(ptr, "QSIZEF", true);
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
qreal preferredWidth() const
*/
HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_PREFERREDWIDTH)
{
  auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->preferredWidth());
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
virtual void setGeometry(const QRectF & rect)
*/
HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_SETGEOMETRY)
{
  auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQRECTF(1))
    {
#endif
      obj->setGeometry(*PQRECTF(1));
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
void setMaximumHeight(qreal height)
*/
HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_SETMAXIMUMHEIGHT)
{
  auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setMaximumHeight(PQREAL(1));
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

HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_SETMAXIMUMSIZE)
{
  if (ISNUMPAR(1) && ISQSIZEF(1))
  {
    /*
    void setMaximumSize(const QSizeF & size)
    */
    auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->setMaximumSize(*PQSIZEF(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
    /*
    void setMaximumSize(qreal w, qreal h)
    */
    auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->setMaximumSize(PQREAL(1), PQREAL(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setMaximumWidth(qreal width)
*/
HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_SETMAXIMUMWIDTH)
{
  auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setMaximumWidth(PQREAL(1));
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
void setMinimumHeight(qreal height)
*/
HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_SETMINIMUMHEIGHT)
{
  auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setMinimumHeight(PQREAL(1));
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

HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_SETMINIMUMSIZE)
{
  if (ISNUMPAR(1) && ISQSIZEF(1))
  {
    /*
    void setMinimumSize(const QSizeF & size)
    */
    auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->setMinimumSize(*PQSIZEF(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
    /*
    void setMinimumSize(qreal w, qreal h)
    */
    auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->setMinimumSize(PQREAL(1), PQREAL(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setMinimumWidth(qreal width)
*/
HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_SETMINIMUMWIDTH)
{
  auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setMinimumWidth(PQREAL(1));
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
void setParentLayoutItem(QGraphicsLayoutItem * parent)
*/
HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_SETPARENTLAYOUTITEM)
{
  auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQGRAPHICSLAYOUTITEM(1))
    {
#endif
      obj->setParentLayoutItem(PQGRAPHICSLAYOUTITEM(1));
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
void setPreferredHeight(qreal height)
*/
HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_SETPREFERREDHEIGHT)
{
  auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setPreferredHeight(PQREAL(1));
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

HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_SETPREFERREDSIZE)
{
  if (ISNUMPAR(1) && ISQSIZEF(1))
  {
    /*
    void setPreferredSize(const QSizeF & size)
    */
    auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->setPreferredSize(*PQSIZEF(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
    /*
    void setPreferredSize(qreal w, qreal h)
    */
    auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->setPreferredSize(PQREAL(1), PQREAL(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setPreferredWidth(qreal width)
*/
HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_SETPREFERREDWIDTH)
{
  auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setPreferredWidth(PQREAL(1));
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

HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_SETSIZEPOLICY)
{
  if (ISNUMPAR(1) && ISQSIZEPOLICY(1))
  {
    /*
    void setSizePolicy(const QSizePolicy & policy)
    */
    auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->setSizePolicy(*PQSIZEPOLICY(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3))
  {
    /*
    void setSizePolicy(QSizePolicy::Policy hPolicy, QSizePolicy::Policy vPolicy, QSizePolicy::ControlType controlType =
    QSizePolicy::DefaultType)
    */
    auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->setSizePolicy(static_cast<QSizePolicy::Policy>(hb_parni(1)), static_cast<QSizePolicy::Policy>(hb_parni(2)),
                         HB_ISNIL(3) ? static_cast<QSizePolicy::ControlType>(QSizePolicy::DefaultType)
                                     : static_cast<QSizePolicy::ControlType>(hb_parni(3)));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QSizePolicy sizePolicy() const
*/
HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_SIZEPOLICY)
{
  auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QSizePolicy(obj->sizePolicy());
      Qt5xHb::createReturnClass(ptr, "QSIZEPOLICY", true);
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
virtual void updateGeometry()
*/
HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_UPDATEGEOMETRY)
{
  auto obj = static_cast<QGraphicsLayoutItem *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->updateGeometry();
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

HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_NEWFROM)
{
  auto self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISOBJECT(1))
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if (hb_pcount() == 1 && HB_ISPOINTER(1))
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QGRAPHICSLAYOUTITEM_NEWFROM);
}

HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QGRAPHICSLAYOUTITEM_NEWFROM);
}

HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QGRAPHICSLAYOUTITEM_SETSELFDESTRUCTION)
{
  auto self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISLOG(1))
  {
    auto des = hb_itemPutL(nullptr, hb_parl(1));
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
