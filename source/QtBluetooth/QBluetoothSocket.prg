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
#endif

CLASS QBluetoothSocket INHERIT QIODevice

   METHOD new
   METHOD delete
   METHOD abort
   METHOD close
   METHOD isSequential
   METHOD bytesAvailable
   METHOD bytesToWrite
   METHOD canReadLine
   METHOD connectToService
   METHOD disconnectFromService
   METHOD localName
   METHOD localAddress
   METHOD localPort
   METHOD peerName
   METHOD peerAddress
   METHOD peerPort
   METHOD setSocketDescriptor
   METHOD socketDescriptor
   METHOD socketType
   METHOD state
   METHOD error
   METHOD errorString

   METHOD onConnected
   METHOD onDisconnected
   METHOD onError
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QBluetoothSocket
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtBluetooth/QBluetoothSocket>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtBluetooth/QBluetoothSocket>
#endif
#endif

HB_FUNC_STATIC( QBLUETOOTHSOCKET_NEW )
{
  if( ISBETWEEN(1, 2) && HB_ISNUM(1) && ( ISQOBJECT(2) || HB_ISNIL(2) ) )
  {
    /*
    QBluetoothSocket( QBluetoothServiceInfo::Protocol socketType, QObject * parent = nullptr )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    auto obj = new QBluetoothSocket( static_cast<QBluetoothServiceInfo::Protocol>( hb_parni(1) ), OPQOBJECT( 2, nullptr ) );
    Qt5xHb::returnNewObject(obj, false);
#endif

  }
  else if( ISBETWEEN(0, 1) && ( ISQOBJECT(1) || HB_ISNIL(1) ) )
  {
    /*
    QBluetoothSocket( QObject * parent = nullptr )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    auto obj = new QBluetoothSocket( OPQOBJECT( 1, nullptr ) );
    Qt5xHb::returnNewObject(obj, false);
#endif

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QBLUETOOTHSOCKET_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QBluetoothSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
void abort()
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_ABORT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QBluetoothSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->abort();
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
virtual void close()
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_CLOSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QBluetoothSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->close();
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
bool isSequential() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_ISSEQUENTIAL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QBluetoothSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isSequential() );
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
virtual qint64 bytesAvailable() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_BYTESAVAILABLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QBluetoothSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->bytesAvailable() );
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
virtual qint64 bytesToWrite() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_BYTESTOWRITE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QBluetoothSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->bytesToWrite() );
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
virtual bool canReadLine() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_CANREADLINE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QBluetoothSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->canReadLine() );
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

HB_FUNC_STATIC( QBLUETOOTHSOCKET_CONNECTTOSERVICE )
{
  if( ISBETWEEN(1, 2) && ISQBLUETOOTHSERVICEINFO(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) )
  {
    /*
    void connectToService( const QBluetoothServiceInfo & service, QIODevice::OpenMode openMode = QIODevice::ReadWrite )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    auto obj = qobject_cast<QBluetoothSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      obj->connectToService( *PQBLUETOOTHSERVICEINFO(1), HB_ISNIL(2) ? static_cast<QIODevice::OpenMode >( QIODevice::ReadWrite ) : static_cast<QIODevice::OpenMode >( hb_parni(2) ) );
    }

    hb_itemReturn(hb_stackSelfItem());
#endif

  }
  else if( ISBETWEEN(2, 3) && ISQBLUETOOTHADDRESS(1) && ISQBLUETOOTHUUID(2) && ( HB_ISNUM(3) || HB_ISNIL(3) ) )
  {
    /*
    void connectToService( const QBluetoothAddress & address, const QBluetoothUuid & uuid, QIODevice::OpenMode openMode = QIODevice::ReadWrite )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    auto obj = qobject_cast<QBluetoothSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      obj->connectToService( *PQBLUETOOTHADDRESS(1), *PQBLUETOOTHUUID(2), HB_ISNIL(3) ? static_cast<QIODevice::OpenMode >( QIODevice::ReadWrite ) : static_cast<QIODevice::OpenMode >( hb_parni(3) ) );
    }

    hb_itemReturn(hb_stackSelfItem());
#endif

  }
  else if( ISBETWEEN(2, 3) && ISQBLUETOOTHADDRESS(1) && HB_ISNUM(2) && ( HB_ISNUM(3) || HB_ISNIL(3) ) )
  {
    /*
    void connectToService( const QBluetoothAddress & address, quint16 port, QIODevice::OpenMode openMode = QIODevice::ReadWrite )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    auto obj = qobject_cast<QBluetoothSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      obj->connectToService( *PQBLUETOOTHADDRESS(1), PQUINT16(2), HB_ISNIL(3) ? static_cast<QIODevice::OpenMode >( QIODevice::ReadWrite ) : static_cast<QIODevice::OpenMode >( hb_parni(3) ) );
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
void disconnectFromService()
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_DISCONNECTFROMSERVICE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QBluetoothSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->disconnectFromService();
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
QString localName() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_LOCALNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QBluetoothSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->localName() );
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
QBluetoothAddress localAddress() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_LOCALADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QBluetoothSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QBluetoothAddress( obj->localAddress() );
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
quint16 localPort() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_LOCALPORT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QBluetoothSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQUINT16( obj->localPort() );
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
QString peerName() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_PEERNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QBluetoothSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->peerName() );
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
QBluetoothAddress peerAddress() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_PEERADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QBluetoothSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QBluetoothAddress( obj->peerAddress() );
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
quint16 peerPort() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_PEERPORT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QBluetoothSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQUINT16( obj->peerPort() );
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
bool setSocketDescriptor( int socketDescriptor, QBluetoothServiceInfo::Protocol socketType, QBluetoothSocket::SocketState socketState = QBluetoothSocket::ConnectedState, QIODevice::OpenMode openMode = QIODevice::ReadWrite )
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_SETSOCKETDESCRIPTOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QBluetoothSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2, 4) && HB_ISNUM(1) && HB_ISNUM(2) && ( HB_ISNUM(3) || HB_ISNIL(3) ) && ( HB_ISNUM(4) || HB_ISNIL(4) ) )
    {
#endif
      RBOOL( obj->setSocketDescriptor( PINT(1), static_cast<QBluetoothServiceInfo::Protocol>( hb_parni(2) ), HB_ISNIL(3) ? static_cast<QBluetoothSocket::SocketState >( QBluetoothSocket::ConnectedState ) : static_cast<QBluetoothSocket::SocketState >( hb_parni(3) ), HB_ISNIL(4) ? static_cast<QIODevice::OpenMode >( QIODevice::ReadWrite ) : static_cast<QIODevice::OpenMode >( hb_parni(4) ) ) );
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
int socketDescriptor() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_SOCKETDESCRIPTOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QBluetoothSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->socketDescriptor() );
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
QBluetoothServiceInfo::Protocol socketType() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_SOCKETTYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QBluetoothSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->socketType() );
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
QBluetoothSocket::SocketState state() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_STATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QBluetoothSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->state() );
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
QBluetoothSocket::SocketError error() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QBluetoothSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
HB_FUNC_STATIC( QBLUETOOTHSOCKET_ERRORSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = qobject_cast<QBluetoothSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
void connected()
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_ONCONNECTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto sender = qobject_cast<QBluetoothSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("connected()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QBluetoothSocket::connected,
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QBLUETOOTHSOCKET");
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
void disconnected()
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_ONDISCONNECTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto sender = qobject_cast<QBluetoothSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("disconnected()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QBluetoothSocket::disconnected,
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QBLUETOOTHSOCKET");
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
void error( QBluetoothSocket::SocketError error )
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_ONERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto sender = qobject_cast<QBluetoothSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("error(QBluetoothSocket::SocketError)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              QOverload<QBluetoothSocket::SocketError>::of(&QBluetoothSocket::error),
                                                              [sender, indexOfCodeBlock]
                                                              (QBluetoothSocket::SocketError arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QBLUETOOTHSOCKET");
            PHB_ITEM pArg1 = hb_itemPutNI(nullptr, static_cast<int>(arg1));
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
void stateChanged( QBluetoothSocket::SocketState state )
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_ONSTATECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto sender = qobject_cast<QBluetoothSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("stateChanged(QBluetoothSocket::SocketState)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QBluetoothSocket::stateChanged,
                                                              [sender, indexOfCodeBlock]
                                                              (QBluetoothSocket::SocketState arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QBLUETOOTHSOCKET");
            PHB_ITEM pArg1 = hb_itemPutNI(nullptr, static_cast<int>(arg1));
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
