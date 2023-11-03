/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBLUETOOTHADDRESS
REQUEST QBLUETOOTHSERVICEINFO
REQUEST QBLUETOOTHUUID
#endif

CLASS QBluetoothServiceDiscoveryAgent INHERIT QObject

   METHOD new
   METHOD delete
   METHOD isActive
   METHOD error
   METHOD errorString
   METHOD discoveredServices
   METHOD setUuidFilter
   METHOD uuidFilter
   METHOD setRemoteAddress
   METHOD remoteAddress
   METHOD start
   METHOD stop
   METHOD clear

   METHOD onServiceDiscovered
   METHOD onFinished
   METHOD onCanceled
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QBluetoothServiceDiscoveryAgent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtBluetooth/QBluetoothServiceDiscoveryAgent>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtBluetooth/QBluetoothServiceDiscoveryAgent>
#endif
#endif

HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_NEW )
{
  if( ISBETWEEN(0, 1) && ( ISQOBJECT(1) || HB_ISNIL(1) ) )
  {
    /*
    QBluetoothServiceDiscoveryAgent( QObject * parent = nullptr )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    auto obj = new QBluetoothServiceDiscoveryAgent( OPQOBJECT( 1, nullptr ) );
    Qt5xHb::returnNewObject(obj, false);
#endif

  }
  else if( ISBETWEEN(1, 2) && ISQBLUETOOTHADDRESS(1) && ( ISQOBJECT(2) || HB_ISNIL(2) ) )
  {
    /*
    QBluetoothServiceDiscoveryAgent( const QBluetoothAddress & deviceAdapter, QObject * parent = nullptr )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    auto obj = new QBluetoothServiceDiscoveryAgent( *PQBLUETOOTHADDRESS(1), OPQOBJECT( 2, nullptr ) );
    Qt5xHb::returnNewObject(obj, false);
#endif

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QBluetoothServiceDiscoveryAgent*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
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
bool isActive() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_ISACTIVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QBluetoothServiceDiscoveryAgent*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isActive() );
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
QBluetoothDeviceDiscoveryAgent::Error error() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QBluetoothServiceDiscoveryAgent*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->error() );
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
QString errorString() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_ERRORSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QBluetoothServiceDiscoveryAgent*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->errorString() );
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
QList<QBluetoothServiceInfo> discoveredServices() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_DISCOVEREDSERVICES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QBluetoothServiceDiscoveryAgent*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QList<QBluetoothServiceInfo> list = obj->discoveredServices();
      PHB_DYNS pDynSym = hb_dynsymFindName("QBLUETOOTHSERVICEINFO");
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( const auto & item : list )
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew(nullptr);
          hb_itemCopy(pObject, hb_stackReturnItem());
          PHB_ITEM pItem = hb_itemPutPtr(nullptr, new QBluetoothServiceInfo(item));
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          PHB_ITEM pDestroy = hb_itemPutL(nullptr, true);
          hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
          hb_itemRelease(pDestroy);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QBLUETOOTHSERVICEINFO", HB_ERR_ARGS_BASEPARAMS);
      }
      hb_itemReturnRelease(pArray);
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

HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_SETUUIDFILTER )
{
  if( ISNUMPAR(1) && HB_ISARRAY(1) )
  {
    /*
    void setUuidFilter( const QList<QBluetoothUuid> & uuids )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    auto obj = qobject_cast<QBluetoothServiceDiscoveryAgent*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      QList<QBluetoothUuid> par1;
      PHB_ITEM aList1 = hb_param( 1, HB_IT_ARRAY );
      int nLen1 = hb_arrayLen( aList1 );
      for( auto i1 = 0; i1 < nLen1; i1++ )
      {
        par1 << *static_cast<QBluetoothUuid*>( hb_itemGetPtr( hb_objSendMsg(hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0) ) );
      }
      obj->setUuidFilter( par1 );
    }

    hb_itemReturn(hb_stackSelfItem());
#endif

  }
  else if( ISNUMPAR(1) && ISQBLUETOOTHUUID(1) )
  {
    /*
    void setUuidFilter( const QBluetoothUuid & uuid )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    auto obj = qobject_cast<QBluetoothServiceDiscoveryAgent*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      obj->setUuidFilter( *PQBLUETOOTHUUID(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
#endif

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QList<QBluetoothUuid> uuidFilter() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_UUIDFILTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QBluetoothServiceDiscoveryAgent*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QList<QBluetoothUuid> list = obj->uuidFilter();
      PHB_DYNS pDynSym = hb_dynsymFindName("QBLUETOOTHUUID");
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( const auto & item : list )
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew(nullptr);
          hb_itemCopy(pObject, hb_stackReturnItem());
          PHB_ITEM pItem = hb_itemPutPtr(nullptr, new QBluetoothUuid(item));
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          PHB_ITEM pDestroy = hb_itemPutL(nullptr, true);
          hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
          hb_itemRelease(pDestroy);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QBLUETOOTHUUID", HB_ERR_ARGS_BASEPARAMS);
      }
      hb_itemReturnRelease(pArray);
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
bool setRemoteAddress( const QBluetoothAddress & address )
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_SETREMOTEADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QBluetoothServiceDiscoveryAgent*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBLUETOOTHADDRESS(1) )
    {
#endif
      RBOOL( obj->setRemoteAddress( *PQBLUETOOTHADDRESS(1) ) );
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
QBluetoothAddress remoteAddress() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_REMOTEADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QBluetoothServiceDiscoveryAgent*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QBluetoothAddress( obj->remoteAddress() );
      Qt5xHb::createReturnClass(ptr, "QBLUETOOTHADDRESS", true);
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
void start( QBluetoothServiceDiscoveryAgent::DiscoveryMode mode = QBluetoothServiceDiscoveryAgent::MinimalDiscovery )
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_START )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QBluetoothServiceDiscoveryAgent*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && ( HB_ISNUM(1) || HB_ISNIL(1) ) )
    {
#endif
      obj->start( HB_ISNIL(1) ? static_cast<QBluetoothServiceDiscoveryAgent::DiscoveryMode >( QBluetoothServiceDiscoveryAgent::MinimalDiscovery ) : static_cast<QBluetoothServiceDiscoveryAgent::DiscoveryMode >( hb_parni(1) ) );
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
void stop()
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_STOP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QBluetoothServiceDiscoveryAgent*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->stop();
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
void clear()
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QBluetoothServiceDiscoveryAgent*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
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
#endif
}

/*
void serviceDiscovered( const QBluetoothServiceInfo & info )
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_ONSERVICEDISCOVERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto sender = qobject_cast<QBluetoothServiceDiscoveryAgent*>(Qt5xHb::getQObjectPointerFromSelfItem());

  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("serviceDiscovered(QBluetoothServiceInfo)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QBluetoothServiceDiscoveryAgent::serviceDiscovered,
                                                              [sender, indexOfCodeBlock]
                                                              (const QBluetoothServiceInfo & arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QBLUETOOTHSERVICEDISCOVERYAGENT");
            auto pArg1 = Qt5xHb::Signals_return_object( (void *) &arg1, "QBLUETOOTHSERVICEINFO");
            hb_vmEvalBlockV(cb, 2, pSender, pArg1);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if( hb_pcount() == 0 )
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
void finished()
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_ONFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto sender = qobject_cast<QBluetoothServiceDiscoveryAgent*>(Qt5xHb::getQObjectPointerFromSelfItem());

  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("finished()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QBluetoothServiceDiscoveryAgent::finished,
                                                              [sender, indexOfCodeBlock]
                                                              () {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QBLUETOOTHSERVICEDISCOVERYAGENT");
            hb_vmEvalBlockV(cb, 1, pSender);
            hb_itemRelease(pSender);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if( hb_pcount() == 0 )
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
void canceled()
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_ONCANCELED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto sender = qobject_cast<QBluetoothServiceDiscoveryAgent*>(Qt5xHb::getQObjectPointerFromSelfItem());

  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("canceled()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QBluetoothServiceDiscoveryAgent::canceled,
                                                              [sender, indexOfCodeBlock]
                                                              () {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QBLUETOOTHSERVICEDISCOVERYAGENT");
            hb_vmEvalBlockV(cb, 1, pSender);
            hb_itemRelease(pSender);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if( hb_pcount() == 0 )
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
void error( QBluetoothServiceDiscoveryAgent::Error error )
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_ONERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto sender = qobject_cast<QBluetoothServiceDiscoveryAgent*>(Qt5xHb::getQObjectPointerFromSelfItem());

  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("error(QBluetoothServiceDiscoveryAgent::Error)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              QOverload<QBluetoothServiceDiscoveryAgent::Error>::of(&QBluetoothServiceDiscoveryAgent::error),
                                                              [sender, indexOfCodeBlock]
                                                              (QBluetoothServiceDiscoveryAgent::Error arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QBLUETOOTHSERVICEDISCOVERYAGENT");
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
    else if( hb_pcount() == 0 )
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
