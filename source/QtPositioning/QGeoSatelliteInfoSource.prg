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

CLASS QGeoSatelliteInfoSource INHERIT QObject

   METHOD delete
   METHOD sourceName
   METHOD setUpdateInterval
   METHOD updateInterval
   METHOD minimumUpdateInterval
   METHOD error
   METHOD startUpdates
   METHOD stopUpdates
   METHOD requestUpdate
   METHOD createDefaultSource
   METHOD createSource
   METHOD availableSources

   METHOD onSatellitesInViewUpdated
   METHOD onSatellitesInUseUpdated
   METHOD onRequestTimeout
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGeoSatelliteInfoSource
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtPositioning/QGeoSatelliteInfoSource>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtPositioning/QGeoSatelliteInfoSource>
#endif
#endif

#include <QtCore/QStringList>

HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QGeoSatelliteInfoSource*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
QString sourceName() const
*/
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_SOURCENAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QGeoSatelliteInfoSource*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
virtual void setUpdateInterval( int msec )
*/
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_SETUPDATEINTERVAL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QGeoSatelliteInfoSource*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_UPDATEINTERVAL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QGeoSatelliteInfoSource*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
virtual int minimumUpdateInterval() const = 0
*/
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_MINIMUMUPDATEINTERVAL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QGeoSatelliteInfoSource*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
virtual QGeoSatelliteInfoSource::Error error() const = 0
*/
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QGeoSatelliteInfoSource*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_STARTUPDATES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QGeoSatelliteInfoSource*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_STOPUPDATES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QGeoSatelliteInfoSource*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
virtual void requestUpdate( int timeout = 0 ) = 0
*/
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_REQUESTUPDATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QGeoSatelliteInfoSource*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (HB_ISNUM(1) || HB_ISNIL(1)))
    {
#endif
      obj->requestUpdate( OPINT( 1, 0));
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
static QGeoSatelliteInfoSource * createDefaultSource( QObject * parent )
*/
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_CREATEDEFAULTSOURCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && ISQOBJECT(1))
  {
#endif
    auto ptr = QGeoSatelliteInfoSource::createDefaultSource(PQOBJECT(1));
    Qt5xHb::createReturnQObjectClass(ptr, "QGEOSATELLITEINFOSOURCE");
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
static QGeoSatelliteInfoSource * createSource( const QString & sourceName, QObject * parent )
*/
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_CREATESOURCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(2) && HB_ISCHAR(1) && ISQOBJECT(2))
  {
#endif
    auto ptr = QGeoSatelliteInfoSource::createSource(PQSTRING(1), PQOBJECT(2));
    Qt5xHb::createReturnQObjectClass(ptr, "QGEOSATELLITEINFOSOURCE");
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
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_AVAILABLESOURCES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RQSTRINGLIST( QGeoSatelliteInfoSource::availableSources());
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
void satellitesInViewUpdated( const QList<QGeoSatelliteInfo> & satellites )
*/
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_ONSATELLITESINVIEWUPDATED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto sender = qobject_cast<QGeoSatelliteInfoSource*>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("satellitesInViewUpdated(QList<QGeoSatelliteInfo>)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender,
                                           &QGeoSatelliteInfoSource::satellitesInViewUpdated,
                                           [sender, indexOfCodeBlock]
                                           (const QList<QGeoSatelliteInfo> & arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QGEOSATELLITEINFOSOURCE");
            auto pDynSym = hb_dynsymFindName("QGEOSATELLITEINFO");
            auto pArg1 = hb_itemArrayNew(0);
            if (pDynSym != nullptr)
            {
              for( const auto & item : arg1 )
              {
                hb_vmPushDynSym(pDynSym);
                hb_vmPushNil();
                hb_vmDo(0);
                auto pTempObject = hb_itemNew(nullptr);
                hb_itemCopy(pTempObject, hb_stackReturnItem());
                auto pTempItem = hb_itemPutPtr(nullptr, new QGeoSatelliteInfo(item));
                hb_objSendMsg(pTempObject, "NEWFROMPOINTER", 1, pTempItem);
                hb_arrayAddForward(pArg1, pTempObject);
                hb_itemRelease(pTempObject);
                hb_itemRelease(pTempItem);
              }
            }
            else
            {
              hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QGEOSATELLITEINFO", HB_ERR_ARGS_BASEPARAMS);
            }
            hb_vmEvalBlockV(cb, 2, pSender, pArg1);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void satellitesInUseUpdated( const QList<QGeoSatelliteInfo> & satellites )
*/
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_ONSATELLITESINUSEUPDATED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto sender = qobject_cast<QGeoSatelliteInfoSource*>(Qt5xHb::getQObjectPointerFromSelfItem());
  
  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("satellitesInUseUpdated(QList<QGeoSatelliteInfo>)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender,
                                           &QGeoSatelliteInfoSource::satellitesInUseUpdated,
                                           [sender, indexOfCodeBlock]
                                           (const QList<QGeoSatelliteInfo> & arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QGEOSATELLITEINFOSOURCE");
            auto pDynSym = hb_dynsymFindName("QGEOSATELLITEINFO");
            auto pArg1 = hb_itemArrayNew(0);
            if (pDynSym != nullptr)
            {
              for( const auto & item : arg1 )
              {
                hb_vmPushDynSym(pDynSym);
                hb_vmPushNil();
                hb_vmDo(0);
                auto pTempObject = hb_itemNew(nullptr);
                hb_itemCopy(pTempObject, hb_stackReturnItem());
                auto pTempItem = hb_itemPutPtr(nullptr, new QGeoSatelliteInfo(item));
                hb_objSendMsg(pTempObject, "NEWFROMPOINTER", 1, pTempItem);
                hb_arrayAddForward(pArg1, pTempObject);
                hb_itemRelease(pTempObject);
                hb_itemRelease(pTempItem);
              }
            }
            else
            {
              hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QGEOSATELLITEINFO", HB_ERR_ARGS_BASEPARAMS);
            }
            hb_vmEvalBlockV(cb, 2, pSender, pArg1);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void requestTimeout()
*/
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_ONREQUESTTIMEOUT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto sender = qobject_cast<QGeoSatelliteInfoSource*>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("requestTimeout()");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender,
                                           &QGeoSatelliteInfoSource::requestTimeout,
                                           [sender, indexOfCodeBlock]
                                           () {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QGEOSATELLITEINFOSOURCE");
            hb_vmEvalBlockV(cb, 1, pSender);
            hb_itemRelease(pSender);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void error( QGeoSatelliteInfoSource::Error error )
*/
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_ONERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto sender = qobject_cast<QGeoSatelliteInfoSource*>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("error(QGeoSatelliteInfoSource::Error)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender,
                                           QOverload<QGeoSatelliteInfoSource::Error>::of(&QGeoSatelliteInfoSource::error),
                                           [sender, indexOfCodeBlock]
                                           (QGeoSatelliteInfoSource::Error arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QGEOSATELLITEINFOSOURCE");
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
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP
