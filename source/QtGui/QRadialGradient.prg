//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QRadialGradient INHERIT QGradient

   METHOD new
   METHOD delete
   METHOD center
   METHOD centerRadius
   METHOD focalPoint
   METHOD focalRadius
   METHOD radius
   METHOD setCenter
   METHOD setCenterRadius
   METHOD setFocalPoint
   METHOD setFocalRadius
   METHOD setRadius

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QRadialGradient
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QRadialGradient>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtGui/QRadialGradient>
#endif

HB_FUNC_STATIC(QRADIALGRADIENT_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QRadialGradient()
    */
    auto obj = new QRadialGradient();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(3) && ISQPOINTF(1) && HB_ISNUM(2) && ISQPOINTF(3))
  {
    /*
    QRadialGradient(const QPointF &center, qreal radius, const QPointF &focalPoint)
    */
    auto obj = new QRadialGradient(*PQPOINTF(1), PQREAL(2), *PQPOINTF(3));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(5) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5))
  {
    /*
    QRadialGradient(qreal cx, qreal cy, qreal radius, qreal fx, qreal fy)
    */
    auto obj = new QRadialGradient(PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(2) && ISQPOINTF(1) && HB_ISNUM(2))
  {
    /*
    QRadialGradient(const QPointF &center, qreal radius)
    */
    auto obj = new QRadialGradient(*PQPOINTF(1), PQREAL(2));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3))
  {
    /*
    QRadialGradient(qreal cx, qreal cy, qreal radius)
    */
    auto obj = new QRadialGradient(PQREAL(1), PQREAL(2), PQREAL(3));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(4) && ISQPOINTF(1) && HB_ISNUM(2) && ISQPOINTF(3) && HB_ISNUM(4))
  {
    /*
    QRadialGradient(const QPointF &center, qreal centerRadius, const QPointF &focalPoint, qreal focalRadius)
    */
    auto obj = new QRadialGradient(*PQPOINTF(1), PQREAL(2), *PQPOINTF(3), PQREAL(4));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(6) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5) && HB_ISNUM(6))
  {
    /*
    QRadialGradient(qreal cx, qreal cy, qreal centerRadius, qreal fx, qreal fy, qreal focalRadius)
    */
    auto obj = new QRadialGradient(PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), PQREAL(6));
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QRADIALGRADIENT_DELETE)
{
  auto obj = static_cast<QRadialGradient *>(Qt5xHb::itemGetPtrStackSelfItem());

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
QPointF center() const
*/
HB_FUNC_STATIC(QRADIALGRADIENT_CENTER)
{
  auto obj = static_cast<QRadialGradient *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QPointF(obj->center());
      Qt5xHb::createReturnClass(ptr, "QPOINTF", true);
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
qreal centerRadius() const
*/
HB_FUNC_STATIC(QRADIALGRADIENT_CENTERRADIUS)
{
  auto obj = static_cast<QRadialGradient *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->centerRadius());
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
QPointF focalPoint() const
*/
HB_FUNC_STATIC(QRADIALGRADIENT_FOCALPOINT)
{
  auto obj = static_cast<QRadialGradient *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QPointF(obj->focalPoint());
      Qt5xHb::createReturnClass(ptr, "QPOINTF", true);
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
qreal focalRadius() const
*/
HB_FUNC_STATIC(QRADIALGRADIENT_FOCALRADIUS)
{
  auto obj = static_cast<QRadialGradient *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->focalRadius());
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
qreal radius() const
*/
HB_FUNC_STATIC(QRADIALGRADIENT_RADIUS)
{
  auto obj = static_cast<QRadialGradient *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->radius());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QRADIALGRADIENT_SETCENTER)
{
  if (ISNUMPAR(1) && ISQPOINTF(1))
  {
    /*
    void setCenter(const QPointF &center)
    */
    auto obj = static_cast<QRadialGradient *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->setCenter(*PQPOINTF(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
    /*
    void setCenter(qreal x, qreal y)
    */
    auto obj = static_cast<QRadialGradient *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->setCenter(PQREAL(1), PQREAL(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setCenterRadius(qreal radius)
*/
HB_FUNC_STATIC(QRADIALGRADIENT_SETCENTERRADIUS)
{
  auto obj = static_cast<QRadialGradient *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setCenterRadius(PQREAL(1));
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

HB_FUNC_STATIC(QRADIALGRADIENT_SETFOCALPOINT)
{
  if (ISNUMPAR(1) && ISQPOINTF(1))
  {
    /*
    void setFocalPoint(const QPointF &focalPoint)
    */
    auto obj = static_cast<QRadialGradient *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->setFocalPoint(*PQPOINTF(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
    /*
    void setFocalPoint(qreal x, qreal y)
    */
    auto obj = static_cast<QRadialGradient *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->setFocalPoint(PQREAL(1), PQREAL(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setFocalRadius(qreal radius)
*/
HB_FUNC_STATIC(QRADIALGRADIENT_SETFOCALRADIUS)
{
  auto obj = static_cast<QRadialGradient *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setFocalRadius(PQREAL(1));
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
void setRadius(qreal radius)
*/
HB_FUNC_STATIC(QRADIALGRADIENT_SETRADIUS)
{
  auto obj = static_cast<QRadialGradient *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setRadius(PQREAL(1));
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

#pragma ENDDUMP
