//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOPOSITIONINFO
#endif

CLASS QGeoPositionInfoSource INHERIT QObject

   METHOD delete
   METHOD setUpdateInterval
   METHOD updateInterval
   METHOD setPreferredPositioningMethods
   METHOD preferredPositioningMethods
   METHOD lastKnownPosition
   METHOD supportedPositioningMethods
   METHOD minimumUpdateInterval
   METHOD sourceName
   METHOD error
   METHOD startUpdates
   METHOD stopUpdates
   METHOD requestUpdate
   METHOD createDefaultSource
   METHOD createSource
   METHOD availableSources

   METHOD onPositionUpdated
   METHOD onUpdateTimeout
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGeoPositionInfoSource
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#include <QtPositioning/QGeoPositionInfoSource>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#include <QtPositioning/QGeoPositionInfoSource>
#endif
#endif

#include <QtCore/QStringList>

HB_FUNC_STATIC(QGEOPOSITIONINFOSOURCE_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = qobject_cast<QGeoPositionInfoSource *>(Qt5xHb::getQObjectPointerFromSelfItem());

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
virtual void setUpdateInterval(int msec)
*/
HB_FUNC_STATIC(QGEOPOSITIONINFOSOURCE_SETUPDATEINTERVAL)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = qobject_cast<QGeoPositionInfoSource *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setUpdateInterval(PINT(1));
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
int updateInterval() const
*/
HB_FUNC_STATIC(QGEOPOSITIONINFOSOURCE_UPDATEINTERVAL)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = qobject_cast<QGeoPositionInfoSource *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->updateInterval());
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
virtual void setPreferredPositioningMethods(QGeoPositionInfoSource::PositioningMethods methods)
*/
HB_FUNC_STATIC(QGEOPOSITIONINFOSOURCE_SETPREFERREDPOSITIONINGMETHODS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = qobject_cast<QGeoPositionInfoSource *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setPreferredPositioningMethods(static_cast<QGeoPositionInfoSource::PositioningMethods>(hb_parni(1)));
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
QGeoPositionInfoSource::PositioningMethods preferredPositioningMethods() const
*/
HB_FUNC_STATIC(QGEOPOSITIONINFOSOURCE_PREFERREDPOSITIONINGMETHODS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = qobject_cast<QGeoPositionInfoSource *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->preferredPositioningMethods());
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
virtual QGeoPositionInfo lastKnownPosition(bool fromSatellitePositioningMethodsOnly = false) const = 0
*/
HB_FUNC_STATIC(QGEOPOSITIONINFOSOURCE_LASTKNOWNPOSITION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = qobject_cast<QGeoPositionInfoSource *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && ISLOGORNIL(1))
    {
#endif
      auto ptr = new QGeoPositionInfo(obj->lastKnownPosition(OPBOOL(1, false)));
      Qt5xHb::createReturnClass(ptr, "QGEOPOSITIONINFO", true);
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
virtual QGeoPositionInfoSource::PositioningMethods supportedPositioningMethods() const = 0
*/
HB_FUNC_STATIC(QGEOPOSITIONINFOSOURCE_SUPPORTEDPOSITIONINGMETHODS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = qobject_cast<QGeoPositionInfoSource *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->supportedPositioningMethods());
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
virtual int minimumUpdateInterval() const = 0
*/
HB_FUNC_STATIC(QGEOPOSITIONINFOSOURCE_MINIMUMUPDATEINTERVAL)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = qobject_cast<QGeoPositionInfoSource *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->minimumUpdateInterval());
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
QString sourceName() const
*/
HB_FUNC_STATIC(QGEOPOSITIONINFOSOURCE_SOURCENAME)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = qobject_cast<QGeoPositionInfoSource *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->sourceName());
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
virtual QGeoPositionInfoSource::Error error() const = 0
*/
HB_FUNC_STATIC(QGEOPOSITIONINFOSOURCE_ERROR)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = qobject_cast<QGeoPositionInfoSource *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->error());
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
virtual void startUpdates() = 0
*/
HB_FUNC_STATIC(QGEOPOSITIONINFOSOURCE_STARTUPDATES)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = qobject_cast<QGeoPositionInfoSource *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->startUpdates();
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
virtual void stopUpdates() = 0
*/
HB_FUNC_STATIC(QGEOPOSITIONINFOSOURCE_STOPUPDATES)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = qobject_cast<QGeoPositionInfoSource *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->stopUpdates();
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
virtual void requestUpdate(int timeout = 0) = 0
*/
HB_FUNC_STATIC(QGEOPOSITIONINFOSOURCE_REQUESTUPDATE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = qobject_cast<QGeoPositionInfoSource *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && ISNUMORNIL(1))
    {
#endif
      obj->requestUpdate(OPINT(1, 0));
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
static QGeoPositionInfoSource * createDefaultSource(QObject * parent)
*/
HB_FUNC_STATIC(QGEOPOSITIONINFOSOURCE_CREATEDEFAULTSOURCE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && ISQOBJECT(1))
  {
#endif
    auto ptr = QGeoPositionInfoSource::createDefaultSource(PQOBJECT(1));
    Qt5xHb::createReturnQObjectClass(ptr, "QGEOPOSITIONINFOSOURCE");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static QGeoPositionInfoSource * createSource(const QString &sourceName, QObject * parent)
*/
HB_FUNC_STATIC(QGEOPOSITIONINFOSOURCE_CREATESOURCE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(2) && HB_ISCHAR(1) && ISQOBJECT(2))
  {
#endif
    auto ptr = QGeoPositionInfoSource::createSource(PQSTRING(1), PQOBJECT(2));
    Qt5xHb::createReturnQObjectClass(ptr, "QGEOPOSITIONINFOSOURCE");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static QStringList availableSources()
*/
HB_FUNC_STATIC(QGEOPOSITIONINFOSOURCE_AVAILABLESOURCES)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RQSTRINGLIST(QGeoPositionInfoSource::availableSources());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
void positionUpdated(const QGeoPositionInfo &update)
*/
HB_FUNC_STATIC(QGEOPOSITIONINFOSOURCE_ONPOSITIONUPDATED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto sender = qobject_cast<QGeoPositionInfoSource *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("positionUpdated(QGeoPositionInfo)");
    auto indexOfCodeBlock = -1;

    if (ISNUMPAR(1) && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(
            sender, &QGeoPositionInfoSource::positionUpdated, [sender, indexOfCodeBlock](const QGeoPositionInfo &arg1) {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QGEOPOSITIONINFOSOURCE");
                auto pArg1 = Qt5xHb::Signals_return_object((void *)&arg1, "QGEOPOSITIONINFO");
                hb_vmEvalBlockV(cb, 2, pSender, pArg1);
                hb_itemRelease(pSender);
                hb_itemRelease(pArg1);
              }
            });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (ISNUMPAR(0))
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void updateTimeout()
*/
HB_FUNC_STATIC(QGEOPOSITIONINFOSOURCE_ONUPDATETIMEOUT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto sender = qobject_cast<QGeoPositionInfoSource *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("updateTimeout()");
    auto indexOfCodeBlock = -1;

    if (ISNUMPAR(1) && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection =
            QObject::connect(sender, &QGeoPositionInfoSource::updateTimeout, [sender, indexOfCodeBlock]() {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QGEOPOSITIONINFOSOURCE");
                hb_vmEvalBlockV(cb, 1, pSender);
                hb_itemRelease(pSender);
              }
            });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (ISNUMPAR(0))
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void error(QGeoPositionInfoSource::Error error)
*/
HB_FUNC_STATIC(QGEOPOSITIONINFOSOURCE_ONERROR)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto sender = qobject_cast<QGeoPositionInfoSource *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("error(QGeoPositionInfoSource::Error)");
    auto indexOfCodeBlock = -1;

    if (ISNUMPAR(1) && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection =
            QObject::connect(sender, QOverload<QGeoPositionInfoSource::Error>::of(&QGeoPositionInfoSource::error),
                             [sender, indexOfCodeBlock](QGeoPositionInfoSource::Error arg1) {
                               auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

                               if (cb != nullptr)
                               {
                                 auto pSender = Qt5xHb::Signals_return_qobject(sender, "QGEOPOSITIONINFOSOURCE");
                                 auto pArg1 = hb_itemPutNI(nullptr, static_cast<int>(arg1));
                                 hb_vmEvalBlockV(cb, 2, pSender, pArg1);
                                 hb_itemRelease(pSender);
                                 hb_itemRelease(pArg1);
                               }
                             });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (ISNUMPAR(0))
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP
