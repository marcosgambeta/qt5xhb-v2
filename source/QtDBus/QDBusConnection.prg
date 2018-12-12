/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

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

PROCEDURE destroyObject () CLASS QDBusConnection
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDBusConnection>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QDBusConnection>
#endif

#include <QDBusError>
#include <QDBusMessage>
#include <QDBusPendingCall>
#include <QDBusConnectionInterface>

/*
QDBusConnection(const QString &name)
*/
void QDBusConnection_new1 ()
{
  QDBusConnection * o = new QDBusConnection ( PQSTRING(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QDBusConnection(const QDBusConnection &other)
*/
void QDBusConnection_new2 ()
{
  QDBusConnection * o = new QDBusConnection ( *PQDBUSCONNECTION(1) );
  _qt5xhb_returnNewObject( o, true );
}

//[1]QDBusConnection(const QString &name)
//[2]QDBusConnection(const QDBusConnection &other)

HB_FUNC_STATIC( QDBUSCONNECTION_NEW )
{
  // TODO: implementar
}

HB_FUNC_STATIC( QDBUSCONNECTION_DELETE )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isConnected() const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_ISCONNECTED )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isConnected () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString baseService() const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_BASESERVICE )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->baseService () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QDBusError lastError() const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_LASTERROR )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDBusError * ptr = new QDBusError( obj->lastError () );
      _qt5xhb_createReturnClass ( ptr, "QDBUSERROR", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString name() const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_NAME )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->name () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
ConnectionCapabilities connectionCapabilities() const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_CONNECTIONCAPABILITIES )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->connectionCapabilities () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool send(const QDBusMessage &message) const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_SEND )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDBUSMESSAGE(1) )
    {
#endif
      RBOOL( obj->send ( *PQDBUSMESSAGE(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool callWithCallback(const QDBusMessage &message, QObject *receiver,const char *returnMethod, const char *errorMethod,int timeout = -1) const
*/
void QDBusConnection_callWithCallback1 ()
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RBOOL( obj->callWithCallback ( *PQDBUSMESSAGE(1), PQOBJECT(2), PCONSTCHAR(3), PCONSTCHAR(4), OPINT(5,-1) ) );
  }
}

/*
bool callWithCallback(const QDBusMessage &message, QObject *receiver,const char *slot, int timeout = -1) const
*/
void QDBusConnection_callWithCallback2 ()
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RBOOL( obj->callWithCallback ( *PQDBUSMESSAGE(1), PQOBJECT(2), PCONSTCHAR(3), OPINT(4,-1) ) );
  }
}

//[1]bool callWithCallback(const QDBusMessage &message, QObject *receiver,const char *returnMethod, const char *errorMethod,int timeout = -1) const
//[2]bool callWithCallback(const QDBusMessage &message, QObject *receiver,const char *slot, int timeout = -1) const

HB_FUNC_STATIC( QDBUSCONNECTION_CALLWITHCALLBACK )
{
  // TODO: implementar
}

/*
QDBusMessage call(const QDBusMessage &message, QDBus::CallMode mode = QDBus::Block,int timeout = -1) const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_CALL )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && ISQDBUSMESSAGE(1) && ISOPTNUM(2) && ISOPTNUM(3) )
    {
#endif
      QDBusMessage * ptr = new QDBusMessage( obj->call ( *PQDBUSMESSAGE(1), ISNIL(2)? (QDBus::CallMode) QDBus::Block : (QDBus::CallMode) hb_parni(2), OPINT(3,-1) ) );
      _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QDBusPendingCall asyncCall(const QDBusMessage &message, int timeout = -1) const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_ASYNCCALL )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQDBUSMESSAGE(1) && ISOPTNUM(2) )
    {
#endif
      QDBusPendingCall * ptr = new QDBusPendingCall( obj->asyncCall ( *PQDBUSMESSAGE(1), OPINT(2,-1) ) );
      _qt5xhb_createReturnClass ( ptr, "QDBUSPENDINGCALL", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool connect(const QString &service, const QString &path, const QString &interface,const QString &name, QObject *receiver, const char *slot)
*/
void QDBusConnection_connect1 ()
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RBOOL( obj->connect ( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQOBJECT(5), PCONSTCHAR(6) ) );
  }
}

/*
bool connect(const QString &service, const QString &path, const QString &interface,const QString &name, const QString& signature,QObject *receiver, const char *slot)
*/
void QDBusConnection_connect2 ()
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RBOOL( obj->connect ( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQSTRING(5), PQOBJECT(6), PCONSTCHAR(7) ) );
  }
}

/*
bool connect(const QString &service, const QString &path, const QString &interface,const QString &name, const QStringList &argumentMatch, const QString& signature,QObject *receiver, const char *slot)
*/
void QDBusConnection_connect3 ()
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RBOOL( obj->connect ( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQSTRINGLIST(5), PQSTRING(6), PQOBJECT(7), PCONSTCHAR(8) ) );
  }
}

//[1]bool connect(const QString &service, const QString &path, const QString &interface,const QString &name, QObject *receiver, const char *slot)
//[2]bool connect(const QString &service, const QString &path, const QString &interface,const QString &name, const QString& signature,QObject *receiver, const char *slot)
//[3]bool connect(const QString &service, const QString &path, const QString &interface,const QString &name, const QStringList &argumentMatch, const QString& signature,QObject *receiver, const char *slot)

HB_FUNC_STATIC( QDBUSCONNECTION_CONNECT )
{
  // TODO: implementar
}

/*
bool disconnect(const QString &service, const QString &path, const QString &interface,const QString &name, QObject *receiver, const char *slot)
*/
void QDBusConnection_disconnect1 ()
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RBOOL( obj->disconnect ( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQOBJECT(5), PCONSTCHAR(6) ) );
  }
}

/*
bool disconnect(const QString &service, const QString &path, const QString &interface,const QString &name, const QString& signature,QObject *receiver, const char *slot)
*/
void QDBusConnection_disconnect2 ()
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RBOOL( obj->disconnect ( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQSTRING(5), PQOBJECT(6), PCONSTCHAR(7) ) );
  }
}

/*
bool disconnect(const QString &service, const QString &path, const QString &interface,const QString &name, const QStringList &argumentMatch, const QString& signature,QObject *receiver, const char *slot)
*/
void QDBusConnection_disconnect3 ()
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RBOOL( obj->disconnect ( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQSTRINGLIST(5), PQSTRING(6), PQOBJECT(7), PCONSTCHAR(8) ) );
  }
}

//[1]bool disconnect(const QString &service, const QString &path, const QString &interface,const QString &name, QObject *receiver, const char *slot)
//[2]bool disconnect(const QString &service, const QString &path, const QString &interface,const QString &name, const QString& signature,QObject *receiver, const char *slot)
//[3]bool disconnect(const QString &service, const QString &path, const QString &interface,const QString &name, const QStringList &argumentMatch, const QString& signature,QObject *receiver, const char *slot)

HB_FUNC_STATIC( QDBUSCONNECTION_DISCONNECT )
{
  // TODO: implementar
}

/*
bool registerObject(const QString &path, QObject *object,RegisterOptions options = ExportAdaptors)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_REGISTEROBJECT )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISCHAR(1) && ISQOBJECT(2) && ISOPTNUM(3) )
    {
#endif
      RBOOL( obj->registerObject ( PQSTRING(1), PQOBJECT(2), ISNIL(3)? (QDBusConnection::RegisterOptions) QDBusConnection::ExportAdaptors : (QDBusConnection::RegisterOptions) hb_parni(3) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void unregisterObject(const QString &path, UnregisterMode mode = UnregisterNode)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_UNREGISTEROBJECT )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
    {
#endif
      obj->unregisterObject ( PQSTRING(1), ISNIL(2)? (QDBusConnection::UnregisterMode) QDBusConnection::UnregisterNode : (QDBusConnection::UnregisterMode) hb_parni(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QObject *objectRegisteredAt(const QString &path) const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_OBJECTREGISTEREDAT )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      QObject * ptr = obj->objectRegisteredAt ( PQSTRING(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool registerVirtualObject(const QString &path, QDBusVirtualObject *object,VirtualObjectRegisterOption options = SingleNode)
*/

/*
bool registerService(const QString &serviceName)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_REGISTERSERVICE )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      RBOOL( obj->registerService ( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool unregisterService(const QString &serviceName)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_UNREGISTERSERVICE )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      RBOOL( obj->unregisterService ( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QDBusConnectionInterface *interface() const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_INTERFACE )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDBusConnectionInterface * ptr = obj->interface ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QDBUSCONNECTIONINTERFACE" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void *internalPointer() const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_INTERNALPOINTER )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      hb_retptr( (void *) obj->internalPointer () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
static QDBusConnection connectToBus(BusType type, const QString &name)
*/
void QDBusConnection_connectToBus1 ()
{

      QDBusConnection * ptr = new QDBusConnection( QDBusConnection::connectToBus ( (QDBusConnection::BusType) hb_parni(1), PQSTRING(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QDBUSCONNECTION", true );
}

/*
static QDBusConnection connectToBus(const QString &address, const QString &name)
*/
void QDBusConnection_connectToBus2 ()
{

      QDBusConnection * ptr = new QDBusConnection( QDBusConnection::connectToBus ( PQSTRING(1), PQSTRING(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QDBUSCONNECTION", true );
}

//[1]static QDBusConnection connectToBus(BusType type, const QString &name)
//[2]static QDBusConnection connectToBus(const QString &address, const QString &name)

HB_FUNC_STATIC( QDBUSCONNECTION_CONNECTTOBUS )
{
  // TODO: implementar
}

/*
static QDBusConnection connectToPeer(const QString &address, const QString &name)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_CONNECTTOPEER )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
#endif
      QDBusConnection * ptr = new QDBusConnection( QDBusConnection::connectToPeer ( PQSTRING(1), PQSTRING(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QDBUSCONNECTION", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static void disconnectFromBus(const QString &name)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_DISCONNECTFROMBUS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
  {
#endif
      QDBusConnection::disconnectFromBus ( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void disconnectFromPeer(const QString &name)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_DISCONNECTFROMPEER )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
  {
#endif
      QDBusConnection::disconnectFromPeer ( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
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
      QByteArray * ptr = new QByteArray( QDBusConnection::localMachineId () );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
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
      QDBusConnection * ptr = new QDBusConnection( QDBusConnection::sessionBus () );
      _qt5xhb_createReturnClass ( ptr, "QDBUSCONNECTION", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
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
      QDBusConnection * ptr = new QDBusConnection( QDBusConnection::systemBus () );
      _qt5xhb_createReturnClass ( ptr, "QDBUSCONNECTION", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
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
      QDBusConnection * ptr = new QDBusConnection( QDBusConnection::sender () );
      _qt5xhb_createReturnClass ( ptr, "QDBUSCONNECTION", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QDBUSCONNECTION_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
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
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDBUSCONNECTION_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
