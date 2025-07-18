//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QCameraImageProcessingControl INHERIT QMediaControl

   METHOD delete
   METHOD isParameterSupported
   METHOD isParameterValueSupported
   METHOD parameter
   METHOD setParameter

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCameraImageProcessingControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QCameraImageProcessingControl>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtMultimedia/QCameraImageProcessingControl>
#endif

    /*
    ~QCameraImageProcessingControl()
    */
HB_FUNC_STATIC(QCAMERAIMAGEPROCESSINGCONTROL_DELETE)
{
  auto obj = qobject_cast<QCameraImageProcessingControl *>(Qt5xHb::getQObjectPointerFromSelfItem());

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
virtual bool isParameterSupported(QCameraImageProcessingControl::ProcessingParameter parameter) const = 0
*/
HB_FUNC_STATIC(QCAMERAIMAGEPROCESSINGCONTROL_ISPARAMETERSUPPORTED)
{
  auto obj = qobject_cast<QCameraImageProcessingControl *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->isParameterSupported(static_cast<QCameraImageProcessingControl::ProcessingParameter>(hb_parni(1))));
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
virtual bool isParameterValueSupported(QCameraImageProcessingControl::ProcessingParameter parameter, const QVariant &
value) const = 0
*/
HB_FUNC_STATIC(QCAMERAIMAGEPROCESSINGCONTROL_ISPARAMETERVALUESUPPORTED)
{
  auto obj = qobject_cast<QCameraImageProcessingControl *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && ISQVARIANT(2))
    {
#endif
      RBOOL(obj->isParameterValueSupported(static_cast<QCameraImageProcessingControl::ProcessingParameter>(hb_parni(1)),
                                           *PQVARIANT(2)));
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
virtual QVariant parameter(QCameraImageProcessingControl::ProcessingParameter parameter) const = 0
*/
HB_FUNC_STATIC(QCAMERAIMAGEPROCESSINGCONTROL_PARAMETER)
{
  auto obj = qobject_cast<QCameraImageProcessingControl *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      auto ptr =
          new QVariant(obj->parameter(static_cast<QCameraImageProcessingControl::ProcessingParameter>(hb_parni(1))));
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
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
virtual void setParameter(QCameraImageProcessingControl::ProcessingParameter parameter, const QVariant &value) = 0
*/
HB_FUNC_STATIC(QCAMERAIMAGEPROCESSINGCONTROL_SETPARAMETER)
{
  auto obj = qobject_cast<QCameraImageProcessingControl *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && ISQVARIANT(2))
    {
#endif
      obj->setParameter(static_cast<QCameraImageProcessingControl::ProcessingParameter>(hb_parni(1)), *PQVARIANT(2));
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
