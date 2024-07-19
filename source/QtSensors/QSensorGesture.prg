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

CLASS QSensorGesture INHERIT QObject

   METHOD new
   METHOD delete
   METHOD isActive
   METHOD validIds
   METHOD invalidIds
   METHOD gestureSignals
   METHOD startDetection
   METHOD stopDetection

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSensorGesture
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
#include <QtSensors/QSensorGesture>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
#include <QtSensors/QSensorGesture>
#endif
#endif

    /*
    QSensorGesture(const QStringList &ids, QObject * parent = nullptr)
    */
HB_FUNC_STATIC(QSENSORGESTURE_NEW)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  if (ISBETWEEN(1, 2) && HB_ISARRAY(1) && (ISQOBJECT(2) || HB_ISNIL(2)))
  {
    auto obj = new QSensorGesture(PQSTRINGLIST(1), OPQOBJECT(2, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC(QSENSORGESTURE_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  auto obj = static_cast<QSensorGesture *>(Qt5xHb::itemGetPtrStackSelfItem());

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
#endif
}

/*
bool isActive()
*/
HB_FUNC_STATIC(QSENSORGESTURE_ISACTIVE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  auto obj = static_cast<QSensorGesture *>(Qt5xHb::itemGetPtrStackSelfItem());

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
#endif
}

/*
QStringList validIds() const
*/
HB_FUNC_STATIC(QSENSORGESTURE_VALIDIDS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  auto obj = static_cast<QSensorGesture *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRINGLIST(obj->validIds());
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
QStringList invalidIds() const
*/
HB_FUNC_STATIC(QSENSORGESTURE_INVALIDIDS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  auto obj = static_cast<QSensorGesture *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRINGLIST(obj->invalidIds());
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
QStringList gestureSignals() const
*/
HB_FUNC_STATIC(QSENSORGESTURE_GESTURESIGNALS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  auto obj = static_cast<QSensorGesture *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRINGLIST(obj->gestureSignals());
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
void startDetection()
*/
HB_FUNC_STATIC(QSENSORGESTURE_STARTDETECTION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  auto obj = static_cast<QSensorGesture *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->startDetection();
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
void stopDetection()
*/
HB_FUNC_STATIC(QSENSORGESTURE_STOPDETECTION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  auto obj = static_cast<QSensorGesture *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->stopDetection();
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
void detected(QString s)
*/

#pragma ENDDUMP
