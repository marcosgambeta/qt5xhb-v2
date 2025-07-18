//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPAINTDEVICE
REQUEST QPAINTER
#endif

CLASS QPaintEngine

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD begin
   METHOD drawEllipse
   METHOD drawImage
   METHOD drawPath
   METHOD drawPixmap
   METHOD drawTextItem
   METHOD drawTiledPixmap
   METHOD end
   METHOD hasFeature
   METHOD isActive
   METHOD paintDevice
   METHOD painter
   METHOD setActive
   METHOD type
   METHOD updateState

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPaintEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QPaintEngine>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtGui/QPaintEngine>
#endif

HB_FUNC_STATIC(QPAINTENGINE_DELETE)
{
  auto obj = static_cast<QPaintEngine *>(Qt5xHb::itemGetPtrStackSelfItem());

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
virtual bool begin(QPaintDevice * pdev) = 0
*/
HB_FUNC_STATIC(QPAINTENGINE_BEGIN)
{
  auto obj = static_cast<QPaintEngine *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPAINTDEVICE(1))
    {
#endif
      RBOOL(obj->begin(PQPAINTDEVICE(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QPAINTENGINE_DRAWELLIPSE)
{
  if (ISNUMPAR(1) && ISQRECTF(1))
  {
    /*
    virtual void drawEllipse(const QRectF &rect)
    */
    auto obj = static_cast<QPaintEngine *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->drawEllipse(*PQRECTF(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(1) && ISQRECT(1))
  {
    /*
    virtual void drawEllipse(const QRect &rect)
    */
    auto obj = static_cast<QPaintEngine *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->drawEllipse(*PQRECT(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual void drawImage(const QRectF &rectangle, const QImage &image, const QRectF &sr, Qt::ImageConversionFlags flags
= Qt::AutoColor)
*/
HB_FUNC_STATIC(QPAINTENGINE_DRAWIMAGE)
{
  auto obj = static_cast<QPaintEngine *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(3, 4) && ISQRECTF(1) && ISQIMAGE(2) && ISQRECTF(3) && ISNUMORNIL(4))
    {
#endif
      obj->drawImage(*PQRECTF(1), *PQIMAGE(2), *PQRECTF(3),
                     HB_ISNIL(4) ? static_cast<Qt::ImageConversionFlags>(Qt::AutoColor)
                                 : static_cast<Qt::ImageConversionFlags>(hb_parni(4)));
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
virtual void drawPath(const QPainterPath &path)
*/
HB_FUNC_STATIC(QPAINTENGINE_DRAWPATH)
{
  auto obj = static_cast<QPaintEngine *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPAINTERPATH(1))
    {
#endif
      obj->drawPath(*PQPAINTERPATH(1));
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
virtual void drawPixmap(const QRectF &r, const QPixmap &pm, const QRectF &sr) = 0
*/
HB_FUNC_STATIC(QPAINTENGINE_DRAWPIXMAP)
{
  auto obj = static_cast<QPaintEngine *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(3) && ISQRECTF(1) && ISQPIXMAP(2) && ISQRECTF(3))
    {
#endif
      obj->drawPixmap(*PQRECTF(1), *PQPIXMAP(2), *PQRECTF(3));
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
virtual void drawTextItem(const QPointF &p, const QTextItem &textItem)
*/
HB_FUNC_STATIC(QPAINTENGINE_DRAWTEXTITEM)
{
  auto obj = static_cast<QPaintEngine *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && ISQPOINTF(1) && ISQTEXTITEM(2))
    {
#endif
      obj->drawTextItem(*PQPOINTF(1), *PQTEXTITEM(2));
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
virtual void drawTiledPixmap(const QRectF &rect, const QPixmap &pixmap, const QPointF &p)
*/
HB_FUNC_STATIC(QPAINTENGINE_DRAWTILEDPIXMAP)
{
  auto obj = static_cast<QPaintEngine *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(3) && ISQRECTF(1) && ISQPIXMAP(2) && ISQPOINTF(3))
    {
#endif
      obj->drawTiledPixmap(*PQRECTF(1), *PQPIXMAP(2), *PQPOINTF(3));
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
virtual bool end() = 0
*/
HB_FUNC_STATIC(QPAINTENGINE_END)
{
  auto obj = static_cast<QPaintEngine *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->end());
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
bool hasFeature(QPaintEngine::PaintEngineFeatures feature) const
*/
HB_FUNC_STATIC(QPAINTENGINE_HASFEATURE)
{
  auto obj = static_cast<QPaintEngine *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->hasFeature(static_cast<QPaintEngine::PaintEngineFeatures>(hb_parni(1))));
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
bool isActive() const
*/
HB_FUNC_STATIC(QPAINTENGINE_ISACTIVE)
{
  auto obj = static_cast<QPaintEngine *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isActive());
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
QPaintDevice * paintDevice() const
*/
HB_FUNC_STATIC(QPAINTENGINE_PAINTDEVICE)
{
  auto obj = static_cast<QPaintEngine *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->paintDevice();
      Qt5xHb::createReturnClass(ptr, "QPAINTDEVICE", false);
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
QPainter * painter() const
*/
HB_FUNC_STATIC(QPAINTENGINE_PAINTER)
{
  auto obj = static_cast<QPaintEngine *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->painter();
      Qt5xHb::createReturnClass(ptr, "QPAINTER", false);
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
void setActive(bool state)
*/
HB_FUNC_STATIC(QPAINTENGINE_SETACTIVE)
{
  auto obj = static_cast<QPaintEngine *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setActive(PBOOL(1));
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
virtual QPaintEngine::Type type() const = 0
*/
HB_FUNC_STATIC(QPAINTENGINE_TYPE)
{
  auto obj = static_cast<QPaintEngine *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->type());
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
virtual void updateState(const QPaintEngineState &state) = 0
*/
HB_FUNC_STATIC(QPAINTENGINE_UPDATESTATE)
{
  auto obj = static_cast<QPaintEngine *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPAINTENGINESTATE(1))
    {
#endif
      obj->updateState(*PQPAINTENGINESTATE(1));
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

HB_FUNC_STATIC(QPAINTENGINE_NEWFROM)
{
  auto self = hb_stackSelfItem();

  if (ISNUMPAR(1) && HB_ISOBJECT(1))
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if (ISNUMPAR(1) && HB_ISPOINTER(1))
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

HB_FUNC_STATIC(QPAINTENGINE_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QPAINTENGINE_NEWFROM);
}

HB_FUNC_STATIC(QPAINTENGINE_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QPAINTENGINE_NEWFROM);
}

HB_FUNC_STATIC(QPAINTENGINE_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QPAINTENGINE_SETSELFDESTRUCTION)
{
  auto self = hb_stackSelfItem();

  if (ISNUMPAR(1) && HB_ISLOG(1))
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
