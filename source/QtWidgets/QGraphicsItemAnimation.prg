//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGRAPHICSITEM
REQUEST QMATRIX
REQUEST QPOINTF
REQUEST QTIMELINE
#endif

CLASS QGraphicsItemAnimation INHERIT QObject

   METHOD new
   METHOD delete
   METHOD clear
   METHOD horizontalScaleAt
   METHOD horizontalShearAt
   METHOD item
   METHOD matrixAt
   METHOD posAt
   METHOD rotationAt
   METHOD setItem
   METHOD setPosAt
   METHOD setRotationAt
   METHOD setScaleAt
   METHOD setShearAt
   METHOD setTimeLine
   METHOD setTranslationAt
   METHOD timeLine
   METHOD verticalScaleAt
   METHOD verticalShearAt
   METHOD xTranslationAt
   METHOD yTranslationAt
   METHOD setStep

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGraphicsItemAnimation
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QGraphicsItemAnimation>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QGraphicsItemAnimation>
#endif

#include <QtCore/QPointF>
#include <QtCore/QTimeLine>
#include <QtGui/QMatrix>

    /*
    QGraphicsItemAnimation(QObject * parent = nullptr)
    */
HB_FUNC_STATIC(QGRAPHICSITEMANIMATION_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    auto obj = new QGraphicsItemAnimation(OPQOBJECT(1, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QGRAPHICSITEMANIMATION_DELETE)
{
  auto obj = qobject_cast<QGraphicsItemAnimation *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
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
void clear()
*/
HB_FUNC_STATIC(QGRAPHICSITEMANIMATION_CLEAR)
{
  auto obj = qobject_cast<QGraphicsItemAnimation *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->clear();
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
qreal horizontalScaleAt(qreal step) const
*/
HB_FUNC_STATIC(QGRAPHICSITEMANIMATION_HORIZONTALSCALEAT)
{
  auto obj = qobject_cast<QGraphicsItemAnimation *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RQREAL(obj->horizontalScaleAt(PQREAL(1)));
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
qreal horizontalShearAt(qreal step) const
*/
HB_FUNC_STATIC(QGRAPHICSITEMANIMATION_HORIZONTALSHEARAT)
{
  auto obj = qobject_cast<QGraphicsItemAnimation *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RQREAL(obj->horizontalShearAt(PQREAL(1)));
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
QGraphicsItem * item() const
*/
HB_FUNC_STATIC(QGRAPHICSITEMANIMATION_ITEM)
{
  auto obj = qobject_cast<QGraphicsItemAnimation *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->item();
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
QMatrix matrixAt(qreal step) const
*/
HB_FUNC_STATIC(QGRAPHICSITEMANIMATION_MATRIXAT)
{
  auto obj = qobject_cast<QGraphicsItemAnimation *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      auto ptr = new QMatrix(obj->matrixAt(PQREAL(1)));
      Qt5xHb::createReturnClass(ptr, "QMATRIX", true);
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
QPointF posAt(qreal step) const
*/
HB_FUNC_STATIC(QGRAPHICSITEMANIMATION_POSAT)
{
  auto obj = qobject_cast<QGraphicsItemAnimation *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      auto ptr = new QPointF(obj->posAt(PQREAL(1)));
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
qreal rotationAt(qreal step) const
*/
HB_FUNC_STATIC(QGRAPHICSITEMANIMATION_ROTATIONAT)
{
  auto obj = qobject_cast<QGraphicsItemAnimation *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RQREAL(obj->rotationAt(PQREAL(1)));
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
void setItem(QGraphicsItem * item)
*/
HB_FUNC_STATIC(QGRAPHICSITEMANIMATION_SETITEM)
{
  auto obj = qobject_cast<QGraphicsItemAnimation *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQGRAPHICSITEM(1))
    {
#endif
      obj->setItem(PQGRAPHICSITEM(1));
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
void setPosAt(qreal step, const QPointF &point)
*/
HB_FUNC_STATIC(QGRAPHICSITEMANIMATION_SETPOSAT)
{
  auto obj = qobject_cast<QGraphicsItemAnimation *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && ISQPOINTF(2))
    {
#endif
      obj->setPosAt(PQREAL(1), *PQPOINTF(2));
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
void setRotationAt(qreal step, qreal angle)
*/
HB_FUNC_STATIC(QGRAPHICSITEMANIMATION_SETROTATIONAT)
{
  auto obj = qobject_cast<QGraphicsItemAnimation *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
    {
#endif
      obj->setRotationAt(PQREAL(1), PQREAL(2));
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
void setScaleAt(qreal step, qreal sx, qreal sy)
*/
HB_FUNC_STATIC(QGRAPHICSITEMANIMATION_SETSCALEAT)
{
  auto obj = qobject_cast<QGraphicsItemAnimation *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3))
    {
#endif
      obj->setScaleAt(PQREAL(1), PQREAL(2), PQREAL(3));
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
void setShearAt(qreal step, qreal sh, qreal sv)
*/
HB_FUNC_STATIC(QGRAPHICSITEMANIMATION_SETSHEARAT)
{
  auto obj = qobject_cast<QGraphicsItemAnimation *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3))
    {
#endif
      obj->setShearAt(PQREAL(1), PQREAL(2), PQREAL(3));
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
void setTimeLine(QTimeLine * timeLine)
*/
HB_FUNC_STATIC(QGRAPHICSITEMANIMATION_SETTIMELINE)
{
  auto obj = qobject_cast<QGraphicsItemAnimation *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQTIMELINE(1))
    {
#endif
      obj->setTimeLine(PQTIMELINE(1));
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
void setTranslationAt(qreal step, qreal dx, qreal dy)
*/
HB_FUNC_STATIC(QGRAPHICSITEMANIMATION_SETTRANSLATIONAT)
{
  auto obj = qobject_cast<QGraphicsItemAnimation *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3))
    {
#endif
      obj->setTranslationAt(PQREAL(1), PQREAL(2), PQREAL(3));
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
QTimeLine * timeLine() const
*/
HB_FUNC_STATIC(QGRAPHICSITEMANIMATION_TIMELINE)
{
  auto obj = qobject_cast<QGraphicsItemAnimation *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->timeLine();
      Qt5xHb::createReturnQObjectClass(ptr, "QTIMELINE");
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
qreal verticalScaleAt(qreal step) const
*/
HB_FUNC_STATIC(QGRAPHICSITEMANIMATION_VERTICALSCALEAT)
{
  auto obj = qobject_cast<QGraphicsItemAnimation *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RQREAL(obj->verticalScaleAt(PQREAL(1)));
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
qreal verticalShearAt(qreal step) const
*/
HB_FUNC_STATIC(QGRAPHICSITEMANIMATION_VERTICALSHEARAT)
{
  auto obj = qobject_cast<QGraphicsItemAnimation *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RQREAL(obj->verticalShearAt(PQREAL(1)));
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
qreal xTranslationAt(qreal step) const
*/
HB_FUNC_STATIC(QGRAPHICSITEMANIMATION_XTRANSLATIONAT)
{
  auto obj = qobject_cast<QGraphicsItemAnimation *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RQREAL(obj->xTranslationAt(PQREAL(1)));
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
qreal yTranslationAt(qreal step) const
*/
HB_FUNC_STATIC(QGRAPHICSITEMANIMATION_YTRANSLATIONAT)
{
  auto obj = qobject_cast<QGraphicsItemAnimation *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RQREAL(obj->yTranslationAt(PQREAL(1)));
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
void setStep(qreal step)
*/
HB_FUNC_STATIC(QGRAPHICSITEMANIMATION_SETSTEP)
{
  auto obj = qobject_cast<QGraphicsItemAnimation *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setStep(PQREAL(1));
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
