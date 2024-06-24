/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QStyleOptionSlider INHERIT QStyleOptionComplex

   METHOD new
   METHOD orientation
   METHOD setOrientation
   METHOD minimum
   METHOD setMinimum
   METHOD maximum
   METHOD setMaximum
   METHOD tickPosition
   METHOD setTickPosition
   METHOD tickInterval
   METHOD setTickInterval
   METHOD upsideDown
   METHOD setUpsideDown
   METHOD sliderPosition
   METHOD setSliderPosition
   METHOD sliderValue
   METHOD setSliderValue
   METHOD singleStep
   METHOD setSingleStep
   METHOD pageStep
   METHOD setPageStep
   METHOD notchTarget
   METHOD setNotchTarget
   METHOD dialWrapping
   METHOD setDialWrapping

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionSlider
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QStyleOptionSlider>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QStyleOptionSlider>
#endif

HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_NEW )
{
  if (ISNUMPAR(0))
  {
    /*
    QStyleOptionSlider()
    */
    auto obj = new QStyleOptionSlider();
    Qt5xHb::returnNewObject(obj, true);

  }
  else if (ISNUMPAR(1) && ISQSTYLEOPTIONSLIDER(1))
  {
    /*
    QStyleOptionSlider( const QStyleOptionSlider & other )
    */
    auto obj = new QStyleOptionSlider(*PQSTYLEOPTIONSLIDER(1));
    Qt5xHb::returnNewObject(obj, true);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
Qt::Orientation orientation
*/
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_ORIENTATION )
{
  auto obj = static_cast<QStyleOptionSlider*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->orientation);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_SETORIENTATION )
{
  auto obj = static_cast<QStyleOptionSlider*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->orientation = static_cast<Qt::Orientation>(hb_parni(1));
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int minimum
*/
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_MINIMUM )
{
  auto obj = static_cast<QStyleOptionSlider*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RINT(obj->minimum);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_SETMINIMUM )
{
  auto obj = static_cast<QStyleOptionSlider*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->minimum = PINT(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int maximum
*/
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_MAXIMUM )
{
  auto obj = static_cast<QStyleOptionSlider*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RINT(obj->maximum);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_SETMAXIMUM )
{
  auto obj = static_cast<QStyleOptionSlider*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->maximum = PINT(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QSlider::TickPosition tickPosition
*/
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_TICKPOSITION )
{
  auto obj = static_cast<QStyleOptionSlider*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->tickPosition);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_SETTICKPOSITION )
{
  auto obj = static_cast<QStyleOptionSlider*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->tickPosition = static_cast<QSlider::TickPosition>(hb_parni(1));
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int tickInterval
*/
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_TICKINTERVAL )
{
  auto obj = static_cast<QStyleOptionSlider*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RINT(obj->tickInterval);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_SETTICKINTERVAL )
{
  auto obj = static_cast<QStyleOptionSlider*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->tickInterval = PINT(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool upsideDown
*/
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_UPSIDEDOWN )
{
  auto obj = static_cast<QStyleOptionSlider*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RBOOL(obj->upsideDown);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_SETUPSIDEDOWN )
{
  auto obj = static_cast<QStyleOptionSlider*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
      obj->upsideDown = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int sliderPosition
*/
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_SLIDERPOSITION )
{
  auto obj = static_cast<QStyleOptionSlider*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RINT(obj->sliderPosition);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_SETSLIDERPOSITION )
{
  auto obj = static_cast<QStyleOptionSlider*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->sliderPosition = PINT(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int sliderValue
*/
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_SLIDERVALUE )
{
  auto obj = static_cast<QStyleOptionSlider*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RINT(obj->sliderValue);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_SETSLIDERVALUE )
{
  auto obj = static_cast<QStyleOptionSlider*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->sliderValue = PINT(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int singleStep
*/
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_SINGLESTEP )
{
  auto obj = static_cast<QStyleOptionSlider*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RINT(obj->singleStep);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_SETSINGLESTEP )
{
  auto obj = static_cast<QStyleOptionSlider*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->singleStep = PINT(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int pageStep
*/
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_PAGESTEP )
{
  auto obj = static_cast<QStyleOptionSlider*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RINT(obj->pageStep);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_SETPAGESTEP )
{
  auto obj = static_cast<QStyleOptionSlider*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->pageStep = PINT(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
qreal notchTarget
*/
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_NOTCHTARGET )
{
  auto obj = static_cast<QStyleOptionSlider*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RQREAL(obj->notchTarget);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_SETNOTCHTARGET )
{
  auto obj = static_cast<QStyleOptionSlider*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->notchTarget = PQREAL(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool dialWrapping
*/
HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_DIALWRAPPING )
{
  auto obj = static_cast<QStyleOptionSlider*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RBOOL(obj->dialWrapping);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_SETDIALWRAPPING )
{
  auto obj = static_cast<QStyleOptionSlider*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
      obj->dialWrapping = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
