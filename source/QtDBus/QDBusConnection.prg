/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QDBUSCONNECTIONINTERFACE
REQUEST QDBUSERROR
REQUEST QDBUSMESSAGE
REQUEST QDBUSPENDINGCALL
REQUEST QOBJECT
#endif

CLASS QDBusConnection

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isConnected
   METHOD baseService
   METHOD lastError
   METHOD name
   METHOD connectionCapabilities
   METHOD send
   METHOD callWithCallback
   METHOD call
   METHOD asyncCall
   METHOD connect
   METHOD disconnect
   METHOD registerObject
   METHOD unregisterObject
   METHOD objectRegisteredAt
   METHOD registerService
   METHOD unregisterService
   METHOD interface
   METHOD internalPointer
   METHOD connectToBus
   METHOD connectToPeer
   METHOD disconnectFromBus
   METHOD disconnectFromPeer
   METHOD localMachineId
   METHOD sessionBus
   METHOD systemBus
   METHOD sender

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDBusConnection
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDBus/QDBusConnection>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtDBus/QDBusConnection>
#endif

#include <QtDBus/QDBusConnectionInterface>
#include <QtDBus/QDBusError>
#include <QtDBus/QDBusMessage>
#include <QtDBus/QDBusPendingCall>

HB_FUNC_STATIC( QDBUSCONNECTION_NEW )
{
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    QDBusConnection( const QString & name )
    */
    auto obj = new QDBusConnection( PQSTRING(1) );
    Qt5xHb::returnNewObject(obj, true);

  }
  else if( ISNUMPAR(1) && ISQDBUSCONNECTION(1) )
  {
    /*
    QDBusConnection( const QDBusConnection & other )
    */
    auto obj = new QDBusConnection( *PQDBUSCONNECTION(1) );
    Qt5xHb::returnNewObject(obj, true);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QDBUSCONNECTION_DELETE )
{
  auto obj = static_cast<QDBusConnection*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    delete obj;
    obj = nullptr;
    auto ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool isConnected() const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_ISCONNECTED )
{
  auto obj = static_cast<QDBusConnection*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isConnected() );
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
QString baseService() const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_BASESERVICE )
{
  auto obj = static_cast<QDBusConnection*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->baseService() );
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
QDBusError lastError() const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_LASTERROR )
{
  auto obj = static_cast<QDBusConnection*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QDBusError( obj->lastError() );
      Qt5xHb::createReturnClass(ptr, "QDBUSERROR", true);
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
QString name() const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_NAME )
{
  auto obj = static_cast<QDBusConnection*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->name() );
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
QDBusConnection::ConnectionCapabilities connectionCapabilities() const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_CONNECTIONCAPABILITIES )
{
  auto obj = static_cast<QDBusConnection*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->connectionCapabilities() );
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
bool send( const QDBusMessage & message ) const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_SEND )
{
  auto obj = static_cast<QDBusConnection*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDBUSMESSAGE(1) )
    {
#endif
      RBOOL( obj->send( *PQDBUSMESSAGE(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QDBUSCONNECTION_CALLWITHCALLBACK )
{
  if( ISBETWEEN(4, 5) && ISQDBUSMESSAGE(1) && ISQOBJECT(2) && HB_ISCHAR(3) && HB_ISCHAR(4) && ( HB_ISNUM(5) || HB_ISNIL(5) ) )
  {
    /*
    bool callWithCallback( const QDBusMessage & message, QObject * receiver, const char * returnMethod, const char * errorMethod, int timeout = -1 ) const
    */
    auto obj = static_cast<QDBusConnection*>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      RBOOL( obj->callWithCallback( *PQDBUSMESSAGE(1), PQOBJECT(2), PCONSTCHAR(3), PCONSTCHAR(4), OPINT( 5, -1 ) ) );
    }

  }
  else if( ISBETWEEN(3, 4) && ISQDBUSMESSAGE(1) && ISQOBJECT(2) && HB_ISCHAR(3) && ( HB_ISNUM(4) || HB_ISNIL(4) ) )
  {
    /*
    bool callWithCallback( const QDBusMessage & message, QObject * receiver, const char * slot, int timeout = -1 ) const
    */
    auto obj = static_cast<QDBusConnection*>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      RBOOL( obj->callWithCallback( *PQDBUSMESSAGE(1), PQOBJECT(2), PCONSTCHAR(3), OPINT( 4, -1 ) ) );
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QDBusMessage call( const QDBusMessage & message, QDBus::CallMode mode = QDBus::Block, int timeout = -1 ) const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_CALL )
{
  auto obj = static_cast<QDBusConnection*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 3) && ISQDBUSMESSAGE(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) && ( HB_ISNUM(3) || HB_ISNIL(3) ) )
    {
#endif
      auto ptr = new QDBusMessage( obj->call( *PQDBUSMESSAGE(1), HB_ISNIL(2) ? static_cast<QDBus::CallMode >( QDBus::Block ) : static_cast<QDBus::CallMode >( hb_parni(2) ), OPINT( 3, -1 ) ) );
      Qt5xHb::createReturnClass(ptr, "QDBUSMESSAGE", true);
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
QDBusPendingCall asyncCall( const QDBusMessage & message, int timeout = -1 ) const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_ASYNCCALL )
{
  auto obj = static_cast<QDBusConnection*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && ISQDBUSMESSAGE(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) )
    {
#endif
      auto ptr = new QDBusPendingCall( obj->asyncCall( *PQDBUSMESSAGE(1), OPINT( 2, -1 ) ) );
      Qt5xHb::createReturnClass(ptr, "QDBUSPENDINGCALL", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QDBUSCONNECTION_CONNECT )
{
  if( ISNUMPAR(6) && HB_ISCHAR(1) && HB_ISCHAR(2) && HB_ISCHAR(3) && HB_ISCHAR(4) && ISQOBJECT(5) && HB_ISCHAR(6) )
  {
    /*
    bool connect( const QString & service, const QString & path, const QString & interface, const QString & name, QObject * receiver, const char * slot )
    */
    auto obj = static_cast<QDBusConnection*>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      RBOOL( obj->connect( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQOBJECT(5), PCONSTCHAR(6) ) );
    }

  }
  else if( ISNUMPAR(7) && HB_ISCHAR(1) && HB_ISCHAR(2) && HB_ISCHAR(3) && HB_ISCHAR(4) && HB_ISCHAR(5) && ISQOBJECT(6) && HB_ISCHAR(7) )
  {
    /*
    bool connect( const QString & service, const QString & path, const QString & interface, const QString & name, const QString & signature, QObject * receiver, const char * slot )
    */
    auto obj = static_cast<QDBusConnection*>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      RBOOL( obj->connect( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQSTRING(5), PQOBJECT(6), PCONSTCHAR(7) ) );
    }

  }
  else if( ISNUMPAR(8) && HB_ISCHAR(1) && HB_ISCHAR(2) && HB_ISCHAR(3) && HB_ISCHAR(4) && HB_ISARRAY(5) && HB_ISCHAR(6) && ISQOBJECT(7) && HB_ISCHAR(8) )
  {
    /*
    bool connect( const QString & service, const QString & path, const QString & interface, const QString & name, const QStringList & argumentMatch, const QString & signature, QObject * receiver, const char * slot )
    */
    auto obj = static_cast<QDBusConnection*>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      RBOOL( obj->connect( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQSTRINGLIST(5), PQSTRING(6), PQOBJECT(7), PCONSTCHAR(8) ) );
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QDBUSCONNECTION_DISCONNECT )
{
  if( ISNUMPAR(6) && HB_ISCHAR(1) && HB_ISCHAR(2) && HB_ISCHAR(3) && HB_ISCHAR(4) && ISQOBJECT(5) && HB_ISCHAR(6) )
  {
    /*
    bool disconnect( const QString & service, const QString & path, const QString & interface, const QString & name, QObject * receiver, const char * slot )
    */
    auto obj = static_cast<QDBusConnection*>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      RBOOL( obj->disconnect( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQOBJECT(5), PCONSTCHAR(6) ) );
    }

  }
  else if( ISNUMPAR(7) && HB_ISCHAR(1) && HB_ISCHAR(2) && HB_ISCHAR(3) && HB_ISCHAR(4) && HB_ISCHAR(5) && ISQOBJECT(6) && HB_ISCHAR(7) )
  {
    /*
    bool disconnect( const QString & service, const QString & path, const QString & interface, const QString & name, const QString & signature, QObject * receiver, const char * slot )
    */
    auto obj = static_cast<QDBusConnection*>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      RBOOL( obj->disconnect( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQSTRING(5), PQOBJECT(6), PCONSTCHAR(7) ) );
    }

  }
  else if( ISNUMPAR(8) && HB_ISCHAR(1) && HB_ISCHAR(2) && HB_ISCHAR(3) && HB_ISCHAR(4) && HB_ISARRAY(5) && HB_ISCHAR(6) && ISQOBJECT(7) && HB_ISCHAR(8) )
  {
    /*
    bool disconnect( const QString & service, const QString & path, const QString & interface, const QString & name, const QStringList & argumentMatch, const QString & signature, QObject * receiver, const char * slot )
    */
    auto obj = static_cast<QDBusConnection*>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      RBOOL( obj->disconnect( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQSTRINGLIST(5), PQSTRING(6), PQOBJECT(7), PCONSTCHAR(8) ) );
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool registerObject( const QString & path, QObject * object, QDBusConnection::RegisterOptions options = QDBusConnection::ExportAdaptors )
*/
HB_FUNC_STATIC( QDBUSCONNECTION_REGISTEROBJECT )
{
  auto obj = static_cast<QDBusConnection*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2, 3) && HB_ISCHAR(1) && ISQOBJECT(2) && ( HB_ISNUM(3) || HB_ISNIL(3) ) )
    {
#endif
      RBOOL( obj->registerObject( PQSTRING(1), PQOBJECT(2), HB_ISNIL(3) ? static_cast<QDBusConnection::RegisterOptions >( QDBusConnection::ExportAdaptors ) : static_cast<QDBusConnection::RegisterOptions >( hb_parni(3) ) ) );
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
void unregisterObject( const QString & path, QDBusConnection::UnregisterMode mode = QDBusConnection::UnregisterNode )
*/
HB_FUNC_STATIC( QDBUSCONNECTION_UNREGISTEROBJECT )
{
  auto obj = static_cast<QDBusConnection*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && HB_ISCHAR(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) )
    {
#endif
      obj->unregisterObject( PQSTRING(1), HB_ISNIL(2) ? static_cast<QDBusConnection::UnregisterMode >( QDBusConnection::UnregisterNode ) : static_cast<QDBusConnection::UnregisterMode >( hb_parni(2) ) );
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
QObject * objectRegisteredAt( const QString & path ) const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_OBJECTREGISTEREDAT )
{
  auto obj = static_cast<QDBusConnection*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      auto ptr = obj->objectRegisteredAt( PQSTRING(1) );
      Qt5xHb::createReturnQObjectClass(ptr, "QOBJECT");
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
bool registerService( const QString & serviceName )
*/
HB_FUNC_STATIC( QDBUSCONNECTION_REGISTERSERVICE )
{
  auto obj = static_cast<QDBusConnection*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RBOOL( obj->registerService( PQSTRING(1) ) );
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
bool unregisterService( const QString & serviceName )
*/
HB_FUNC_STATIC( QDBUSCONNECTION_UNREGISTERSERVICE )
{
  auto obj = static_cast<QDBusConnection*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RBOOL( obj->unregisterService( PQSTRING(1) ) );
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
QDBusConnectionInterface * interface() const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_INTERFACE )
{
  auto obj = static_cast<QDBusConnection*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = obj->interface();
      Qt5xHb::createReturnQObjectClass(ptr, "QDBUSCONNECTIONINTERFACE");
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
void * internalPointer() const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_INTERNALPOINTER )
{
  auto obj = static_cast<QDBusConnection*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      hb_retptr( static_cast< void*>( obj->internalPointer() ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QDBUSCONNECTION_CONNECTTOBUS )
{
  if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISCHAR(2) )
  {
    /*
    static QDBusConnection connectToBus( QDBusConnection::BusType type, const QString & name )
    */

    auto ptr = new QDBusConnection( QDBusConnection::connectToBus( static_cast<QDBusConnection::BusType>( hb_parni(1) ), PQSTRING(2) ) );
    Qt5xHb::createReturnClass(ptr, "QDBUSCONNECTION", true);

  }
  else if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2) )
  {
    /*
    static QDBusConnection connectToBus( const QString & address, const QString & name )
    */

    auto ptr = new QDBusConnection( QDBusConnection::connectToBus( PQSTRING(1), PQSTRING(2) ) );
    Qt5xHb::createReturnClass(ptr, "QDBUSCONNECTION", true);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
static QDBusConnection connectToPeer( const QString & address, const QString & name )
*/
HB_FUNC_STATIC( QDBUSCONNECTION_CONNECTTOPEER )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2) )
  {
#endif
    auto ptr = new QDBusConnection( QDBusConnection::connectToPeer( PQSTRING(1), PQSTRING(2) ) );
    Qt5xHb::createReturnClass(ptr, "QDBUSCONNECTION", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static void disconnectFromBus( const QString & name )
*/
HB_FUNC_STATIC( QDBUSCONNECTION_DISCONNECTFROMBUS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
#endif
    QDBusConnection::disconnectFromBus( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static void disconnectFromPeer( const QString & name )
*/
HB_FUNC_STATIC( QDBUSCONNECTION_DISCONNECTFROMPEER )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
#endif
    QDBusConnection::disconnectFromPeer( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static QByteArray localMachineId()
*/
HB_FUNC_STATIC( QDBUSCONNECTION_LOCALMACHINEID )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    auto ptr = new QByteArray( QDBusConnection::localMachineId() );
    Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QDBusConnection sessionBus()
*/
HB_FUNC_STATIC( QDBUSCONNECTION_SESSIONBUS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    auto ptr = new QDBusConnection( QDBusConnection::sessionBus() );
    Qt5xHb::createReturnClass(ptr, "QDBUSCONNECTION", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QDBusConnection systemBus()
*/
HB_FUNC_STATIC( QDBUSCONNECTION_SYSTEMBUS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    auto ptr = new QDBusConnection( QDBusConnection::systemBus() );
    Qt5xHb::createReturnClass(ptr, "QDBUSCONNECTION", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QDBusConnection sender()
*/
HB_FUNC_STATIC( QDBUSCONNECTION_SENDER )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    auto ptr = new QDBusConnection( QDBusConnection::sender() );
    Qt5xHb::createReturnClass(ptr, "QDBUSCONNECTION", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC( QDBUSCONNECTION_NEWFROM )
{
  auto self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QDBUSCONNECTION_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDBUSCONNECTION_NEWFROM );
}

HB_FUNC_STATIC( QDBUSCONNECTION_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDBUSCONNECTION_NEWFROM );
}

HB_FUNC_STATIC( QDBUSCONNECTION_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QDBUSCONNECTION_SETSELFDESTRUCTION )
{
  auto self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    auto des = hb_itemPutL(nullptr, hb_parl(1));
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
