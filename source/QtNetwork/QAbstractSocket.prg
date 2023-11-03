/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QHOSTADDRESS
REQUEST QNETWORKPROXY
REQUEST QVARIANT
#endif

CLASS QAbstractSocket INHERIT QIODevice

   METHOD new
   METHOD delete
   METHOD resume
   METHOD pauseMode
   METHOD setPauseMode
   METHOD bind
   METHOD connectToHost
   METHOD disconnectFromHost
   METHOD isValid
   METHOD bytesAvailable
   METHOD bytesToWrite
   METHOD canReadLine
   METHOD localPort
   METHOD localAddress
   METHOD peerPort
   METHOD peerAddress
   METHOD peerName
   METHOD readBufferSize
   METHOD setReadBufferSize
   METHOD abort
   METHOD socketDescriptor
   METHOD setSocketDescriptor
   METHOD setSocketOption
   METHOD socketOption
   METHOD socketType
   METHOD state
   METHOD error
   METHOD close
   METHOD isSequential
   METHOD atEnd
   METHOD flush
   METHOD waitForConnected
   METHOD waitForReadyRead
   METHOD waitForBytesWritten
   METHOD waitForDisconnected
   METHOD setProxy
   METHOD proxy

   METHOD onConnected
   METHOD onDisconnected
   METHOD onError
   METHOD onHostFound
   METHOD onProxyAuthenticationRequired
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAbstractSocket
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtNetwork/QAbstractSocket>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtNetwork/QAbstractSocket>
#endif

#include <QtNetwork/QAuthenticator>
#include <QtNetwork/QHostAddress>
#include <QtNetwork/QNetworkProxy>

/*
QAbstractSocket( QAbstractSocket::SocketType socketType, QObject * parent )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_NEW )
{
  if( ISNUMPAR(2) && HB_ISNUM(1) && ISQOBJECT(2) )
  {
    auto obj = new QAbstractSocket( static_cast<QAbstractSocket::SocketType>( hb_parni(1) ), PQOBJECT(2) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual ~QAbstractSocket()
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_DELETE )
{
  auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
}

/*
virtual void resume()
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_RESUME )
{
  auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->resume();
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
QAbstractSocket::PauseModes pauseMode() const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_PAUSEMODE )
{
  auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->pauseMode() );
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
void setPauseMode( QAbstractSocket::PauseModes pauseMode )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_SETPAUSEMODE )
{
  auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setPauseMode( static_cast<QAbstractSocket::PauseModes>( hb_parni(1) ) );
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

HB_FUNC_STATIC( QABSTRACTSOCKET_BIND )
{
  if( ISBETWEEN(1, 3) && ISQHOSTADDRESS(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) && ( HB_ISNUM(3) || HB_ISNIL(3) ) )
  {
    /*
    bool bind( const QHostAddress & address, quint16 port = 0, QAbstractSocket::BindMode mode = QAbstractSocket::DefaultForPlatform )
    */
    auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      RBOOL( obj->bind( *PQHOSTADDRESS(1), OPQUINT16( 2, 0 ), HB_ISNIL(3) ? static_cast<QAbstractSocket::BindMode >( QAbstractSocket::DefaultForPlatform ) : static_cast<QAbstractSocket::BindMode >( hb_parni(3) ) ) );
    }

  }
  else if( ISBETWEEN(0, 2) && ( HB_ISNUM(1) || HB_ISNIL(1) ) && ( HB_ISNUM(2) || HB_ISNIL(2) ) )
  {
    /*
    bool bind( quint16 port = 0, QAbstractSocket::BindMode mode = QAbstractSocket::DefaultForPlatform )
    */
    auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      RBOOL( obj->bind( OPQUINT16( 1, 0 ), HB_ISNIL(2) ? static_cast<QAbstractSocket::BindMode >( QAbstractSocket::DefaultForPlatform ) : static_cast<QAbstractSocket::BindMode >( hb_parni(2) ) ) );
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QABSTRACTSOCKET_CONNECTTOHOST )
{
  if( ISBETWEEN(2, 4) && HB_ISCHAR(1) && HB_ISNUM(2) && ( HB_ISNUM(3) || HB_ISNIL(3) ) && ( HB_ISNUM(4) || HB_ISNIL(4) ) )
  {
    /*
    virtual void connectToHost( const QString & hostName, quint16 port, QIODevice::OpenMode mode = QIODevice::ReadWrite, QAbstractSocket::NetworkLayerProtocol protocol = QAbstractSocket::AnyIPProtocol )
    */
    auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      obj->connectToHost( PQSTRING(1), PQUINT16(2), HB_ISNIL(3) ? static_cast<QIODevice::OpenMode >( QIODevice::ReadWrite ) : static_cast<QIODevice::OpenMode >( hb_parni(3) ), HB_ISNIL(4) ? static_cast<QAbstractSocket::NetworkLayerProtocol >( QAbstractSocket::AnyIPProtocol ) : static_cast<QAbstractSocket::NetworkLayerProtocol >( hb_parni(4) ) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else if( ISBETWEEN(2, 3) && ISQHOSTADDRESS(1) && HB_ISNUM(2) && ( HB_ISNUM(3) || HB_ISNIL(3) ) )
  {
    /*
    virtual void connectToHost( const QHostAddress & address, quint16 port, QIODevice::OpenMode mode = QIODevice::ReadWrite )
    */
    auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      obj->connectToHost( *PQHOSTADDRESS(1), PQUINT16(2), HB_ISNIL(3) ? static_cast<QIODevice::OpenMode >( QIODevice::ReadWrite ) : static_cast<QIODevice::OpenMode >( hb_parni(3) ) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual void disconnectFromHost()
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_DISCONNECTFROMHOST )
{
  auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->disconnectFromHost();
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
bool isValid() const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_ISVALID )
{
  auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid() );
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
qint64 bytesAvailable() const Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_BYTESAVAILABLE )
{
  auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
}

/*
qint64 bytesToWrite() const Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_BYTESTOWRITE )
{
  auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
}

/*
bool canReadLine() const Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_CANREADLINE )
{
  auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
}

/*
quint16 localPort() const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_LOCALPORT )
{
  auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
}

/*
QHostAddress localAddress() const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_LOCALADDRESS )
{
  auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QHostAddress( obj->localAddress() );
      Qt5xHb::createReturnClass(ptr, "QHOSTADDRESS", true);
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
quint16 peerPort() const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_PEERPORT )
{
  auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
}

/*
QHostAddress peerAddress() const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_PEERADDRESS )
{
  auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QHostAddress( obj->peerAddress() );
      Qt5xHb::createReturnClass(ptr, "QHOSTADDRESS", true);
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
QString peerName() const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_PEERNAME )
{
  auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
}

/*
qint64 readBufferSize() const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_READBUFFERSIZE )
{
  auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->readBufferSize() );
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
virtual void setReadBufferSize( qint64 size )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_SETREADBUFFERSIZE )
{
  auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setReadBufferSize( PQINT64(1) );
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
void abort()
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_ABORT )
{
  auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
}

/*
virtual qintptr socketDescriptor() const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_SOCKETDESCRIPTOR )
{
  auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINTPTR( obj->socketDescriptor() );
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
virtual bool setSocketDescriptor( qintptr socketDescriptor, QAbstractSocket::SocketState state = QAbstractSocket::ConnectedState, QIODevice::OpenMode openMode = QIODevice::ReadWrite )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_SETSOCKETDESCRIPTOR )
{
  auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 3) && HB_ISNUM(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) && ( HB_ISNUM(3) || HB_ISNIL(3) ) )
    {
#endif
      RBOOL( obj->setSocketDescriptor( PQINTPTR(1), HB_ISNIL(2) ? static_cast<QAbstractSocket::SocketState >( QAbstractSocket::ConnectedState ) : static_cast<QAbstractSocket::SocketState >( hb_parni(2) ), HB_ISNIL(3) ? static_cast<QIODevice::OpenMode >( QIODevice::ReadWrite ) : static_cast<QIODevice::OpenMode >( hb_parni(3) ) ) );
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
virtual void setSocketOption( QAbstractSocket::SocketOption option, const QVariant & value )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_SETSOCKETOPTION )
{
  auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && ISQVARIANT(2) )
    {
#endif
      obj->setSocketOption( static_cast<QAbstractSocket::SocketOption>( hb_parni(1) ), *PQVARIANT(2) );
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
virtual QVariant socketOption( QAbstractSocket::SocketOption option )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_SOCKETOPTION )
{
  auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      auto ptr = new QVariant( obj->socketOption( static_cast<QAbstractSocket::SocketOption>( hb_parni(1) ) ) );
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
QAbstractSocket::SocketType socketType() const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_SOCKETTYPE )
{
  auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
}

/*
QAbstractSocket::SocketState state() const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_STATE )
{
  auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
}

/*
QAbstractSocket::SocketError error() const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_ERROR )
{
  auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
}

/*
void close() Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_CLOSE )
{
  auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
}

/*
bool isSequential() const Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_ISSEQUENTIAL )
{
  auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
}

/*
bool atEnd() const Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_ATEND )
{
  auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->atEnd() );
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
bool flush()
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_FLUSH )
{
  auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->flush() );
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
virtual bool waitForConnected( int msecs = 30000 )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_WAITFORCONNECTED )
{
  auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && ( HB_ISNUM(1) || HB_ISNIL(1) ) )
    {
#endif
      RBOOL( obj->waitForConnected( OPINT( 1, 30000 ) ) );
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
bool waitForReadyRead( int msecs = 30000 ) Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_WAITFORREADYREAD )
{
  auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && ( HB_ISNUM(1) || HB_ISNIL(1) ) )
    {
#endif
      RBOOL( obj->waitForReadyRead( OPINT( 1, 30000 ) ) );
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
bool waitForBytesWritten( int msecs = 30000 ) Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_WAITFORBYTESWRITTEN )
{
  auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && ( HB_ISNUM(1) || HB_ISNIL(1) ) )
    {
#endif
      RBOOL( obj->waitForBytesWritten( OPINT( 1, 30000 ) ) );
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
virtual bool waitForDisconnected( int msecs = 30000 )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_WAITFORDISCONNECTED )
{
  auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && ( HB_ISNUM(1) || HB_ISNIL(1) ) )
    {
#endif
      RBOOL( obj->waitForDisconnected( OPINT( 1, 30000 ) ) );
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
void setProxy( const QNetworkProxy & networkProxy )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_SETPROXY )
{
  auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQNETWORKPROXY(1) )
    {
#endif
      obj->setProxy( *PQNETWORKPROXY(1) );
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
QNetworkProxy proxy() const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_PROXY )
{
  auto obj = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QNetworkProxy( obj->proxy() );
      Qt5xHb::createReturnClass(ptr, "QNETWORKPROXY", true);
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
void connected()
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_ONCONNECTED )
{
  auto sender = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
                                                              &QAbstractSocket::connected,
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QABSTRACTSOCKET");
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
}

/*
void disconnected()
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_ONDISCONNECTED )
{
  auto sender = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
                                                              &QAbstractSocket::disconnected,
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QABSTRACTSOCKET");
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
}

/*
void error( QAbstractSocket::SocketError socketError )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_ONERROR )
{
  auto sender = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("error(QAbstractSocket::SocketError)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              QOverload<QAbstractSocket::SocketError>::of(&QAbstractSocket::error),
                                                              [sender, indexOfCodeBlock]
                                                              (QAbstractSocket::SocketError arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QABSTRACTSOCKET");
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
}

/*
void hostFound()
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_ONHOSTFOUND )
{
  auto sender = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("hostFound()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QAbstractSocket::hostFound,
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QABSTRACTSOCKET");
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
}

/*
void proxyAuthenticationRequired( const QNetworkProxy & proxy, QAuthenticator * authenticator )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_ONPROXYAUTHENTICATIONREQUIRED )
{
  auto sender = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QAbstractSocket::proxyAuthenticationRequired,
                                                              [sender, indexOfCodeBlock]
                                                              (const QNetworkProxy & arg1, QAuthenticator * arg2) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QABSTRACTSOCKET");
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_object( (void *) &arg1, "QNETWORKPROXY");
            PHB_ITEM pArg2 = Qt5xHb::Signals_return_object( (void *) arg2, "QAUTHENTICATOR");
            hb_vmEvalBlockV(cb, 3, pSender, pArg1, pArg2);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
            hb_itemRelease(pArg2);
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
}

/*
void stateChanged( QAbstractSocket::SocketState socketState )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_ONSTATECHANGED )
{
  auto sender = qobject_cast<QAbstractSocket*>(Qt5xHb::getQObjectPointerFromSelfItem());

  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("stateChanged(QAbstractSocket::SocketState)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QAbstractSocket::stateChanged,
                                                              [sender, indexOfCodeBlock]
                                                              (QAbstractSocket::SocketState arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QABSTRACTSOCKET");
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
}

#pragma ENDDUMP
