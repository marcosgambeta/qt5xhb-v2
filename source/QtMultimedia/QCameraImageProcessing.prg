//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QCameraImageProcessing INHERIT QObject

   METHOD contrast
   METHOD denoisingLevel
   METHOD isAvailable
   METHOD isWhiteBalanceModeSupported
   METHOD manualWhiteBalance
   METHOD saturation
   METHOD setContrast
   METHOD setDenoisingLevel
   METHOD setManualWhiteBalance
   METHOD setSaturation
   METHOD setSharpeningLevel
   METHOD setWhiteBalanceMode
   METHOD sharpeningLevel
   METHOD whiteBalanceMode
   METHOD brightness
   METHOD setBrightness
   METHOD colorFilter
   METHOD setColorFilter
   METHOD isColorFilterSupported

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCameraImageProcessing
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QCameraImageProcessing>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtMultimedia/QCameraImageProcessing>
#endif

    /*
    qreal contrast() const
    */
HB_FUNC_STATIC(QCAMERAIMAGEPROCESSING_CONTRAST)
{
  auto obj = qobject_cast<QCameraImageProcessing *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->contrast());
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
qreal denoisingLevel() const
*/
HB_FUNC_STATIC(QCAMERAIMAGEPROCESSING_DENOISINGLEVEL)
{
  auto obj = qobject_cast<QCameraImageProcessing *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->denoisingLevel());
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
bool isAvailable() const
*/
HB_FUNC_STATIC(QCAMERAIMAGEPROCESSING_ISAVAILABLE)
{
  auto obj = qobject_cast<QCameraImageProcessing *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isAvailable());
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
bool isWhiteBalanceModeSupported(QCameraImageProcessing::WhiteBalanceMode mode) const
*/
HB_FUNC_STATIC(QCAMERAIMAGEPROCESSING_ISWHITEBALANCEMODESUPPORTED)
{
  auto obj = qobject_cast<QCameraImageProcessing *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->isWhiteBalanceModeSupported(static_cast<QCameraImageProcessing::WhiteBalanceMode>(hb_parni(1))));
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
qreal manualWhiteBalance() const
*/
HB_FUNC_STATIC(QCAMERAIMAGEPROCESSING_MANUALWHITEBALANCE)
{
  auto obj = qobject_cast<QCameraImageProcessing *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->manualWhiteBalance());
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
qreal saturation() const
*/
HB_FUNC_STATIC(QCAMERAIMAGEPROCESSING_SATURATION)
{
  auto obj = qobject_cast<QCameraImageProcessing *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->saturation());
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
void setContrast(qreal value)
*/
HB_FUNC_STATIC(QCAMERAIMAGEPROCESSING_SETCONTRAST)
{
  auto obj = qobject_cast<QCameraImageProcessing *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setContrast(PQREAL(1));
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
void setDenoisingLevel(qreal value)
*/
HB_FUNC_STATIC(QCAMERAIMAGEPROCESSING_SETDENOISINGLEVEL)
{
  auto obj = qobject_cast<QCameraImageProcessing *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setDenoisingLevel(PQREAL(1));
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
void setManualWhiteBalance(qreal colorTemperature)
*/
HB_FUNC_STATIC(QCAMERAIMAGEPROCESSING_SETMANUALWHITEBALANCE)
{
  auto obj = qobject_cast<QCameraImageProcessing *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setManualWhiteBalance(PQREAL(1));
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
void setSaturation(qreal value)
*/
HB_FUNC_STATIC(QCAMERAIMAGEPROCESSING_SETSATURATION)
{
  auto obj = qobject_cast<QCameraImageProcessing *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setSaturation(PQREAL(1));
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
void setSharpeningLevel(qreal level)
*/
HB_FUNC_STATIC(QCAMERAIMAGEPROCESSING_SETSHARPENINGLEVEL)
{
  auto obj = qobject_cast<QCameraImageProcessing *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setSharpeningLevel(PQREAL(1));
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
void setWhiteBalanceMode(QCameraImageProcessing::WhiteBalanceMode mode)
*/
HB_FUNC_STATIC(QCAMERAIMAGEPROCESSING_SETWHITEBALANCEMODE)
{
  auto obj = qobject_cast<QCameraImageProcessing *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setWhiteBalanceMode(static_cast<QCameraImageProcessing::WhiteBalanceMode>(hb_parni(1)));
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
qreal sharpeningLevel() const
*/
HB_FUNC_STATIC(QCAMERAIMAGEPROCESSING_SHARPENINGLEVEL)
{
  auto obj = qobject_cast<QCameraImageProcessing *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->sharpeningLevel());
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
QCameraImageProcessing::WhiteBalanceMode whiteBalanceMode() const
*/
HB_FUNC_STATIC(QCAMERAIMAGEPROCESSING_WHITEBALANCEMODE)
{
  auto obj = qobject_cast<QCameraImageProcessing *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->whiteBalanceMode());
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
qreal brightness() const
*/
HB_FUNC_STATIC(QCAMERAIMAGEPROCESSING_BRIGHTNESS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QCameraImageProcessing *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->brightness());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setBrightness(qreal value)
*/
HB_FUNC_STATIC(QCAMERAIMAGEPROCESSING_SETBRIGHTNESS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QCameraImageProcessing *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setBrightness(PQREAL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QCameraImageProcessing::ColorFilter colorFilter() const
*/
HB_FUNC_STATIC(QCAMERAIMAGEPROCESSING_COLORFILTER)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 5, 0))
  auto obj = qobject_cast<QCameraImageProcessing *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->colorFilter());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setColorFilter(QCameraImageProcessing::ColorFilter filter)
*/
HB_FUNC_STATIC(QCAMERAIMAGEPROCESSING_SETCOLORFILTER)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 5, 0))
  auto obj = qobject_cast<QCameraImageProcessing *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setColorFilter(static_cast<QCameraImageProcessing::ColorFilter>(hb_parni(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
bool isColorFilterSupported(QCameraImageProcessing::ColorFilter filter) const
*/
HB_FUNC_STATIC(QCAMERAIMAGEPROCESSING_ISCOLORFILTERSUPPORTED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 5, 0))
  auto obj = qobject_cast<QCameraImageProcessing *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->isColorFilterSupported(static_cast<QCameraImageProcessing::ColorFilter>(hb_parni(1))));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

#pragma ENDDUMP
