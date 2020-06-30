%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDBus

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtDBus/QDBusConnectionInterface>
#include <QtDBus/QDBusError>
#include <QtDBus/QDBusMessage>
#include <QtDBus/QDBusPendingCall>

$prototype=QDBusConnection(const QString &name)
$internalConstructor=|new1|const QString &

$prototype=QDBusConnection(const QDBusConnection &other)
$internalConstructor=|new2|const QDBusConnection &

/*
[1]QDBusConnection(const QString &name)
[2]QDBusConnection(const QDBusConnection &other)
*/

HB_FUNC_STATIC( QDBUSCONNECTION_NEW )
{
  // TODO: implementar
}

$deleteMethod

$prototypeV2=bool isConnected() const

$prototypeV2=QString baseService() const

$prototypeV2=QDBusError lastError() const

$prototypeV2=QString name() const

$prototypeV2=QDBusConnection::ConnectionCapabilities connectionCapabilities() const

$prototypeV2=bool send( const QDBusMessage & message ) const

$prototype=bool callWithCallback(const QDBusMessage &message, QObject *receiver,const char *returnMethod, const char *errorMethod,int timeout = -1) const
$internalMethod=|bool|callWithCallback,callWithCallback1|const QDBusMessage &,QObject *,const char *,const char *,int=-1

$prototype=bool callWithCallback(const QDBusMessage &message, QObject *receiver,const char *slot, int timeout = -1) const
$internalMethod=|bool|callWithCallback,callWithCallback2|const QDBusMessage &,QObject *,const char *,int=-1

/*
[1]bool callWithCallback(const QDBusMessage &message, QObject *receiver,const char *returnMethod, const char *errorMethod,int timeout = -1) const
[2]bool callWithCallback(const QDBusMessage &message, QObject *receiver,const char *slot, int timeout = -1) const
*/

HB_FUNC_STATIC( QDBUSCONNECTION_CALLWITHCALLBACK )
{
  // TODO: implementar
}
$addMethod=callWithCallback

$prototypeV2=QDBusMessage call( const QDBusMessage & message, QDBus::CallMode mode = QDBus::Block, int timeout = -1 ) const

$prototypeV2=QDBusPendingCall asyncCall( const QDBusMessage & message, int timeout = -1 ) const

$prototype=bool connect(const QString &service, const QString &path, const QString &interface,const QString &name, QObject *receiver, const char *slot)
$internalMethod=|bool|connect,connect1|const QString &,const QString &,const QString &,const QString &,QObject *,const char *

$prototype=bool connect(const QString &service, const QString &path, const QString &interface,const QString &name, const QString& signature,QObject *receiver, const char *slot)
$internalMethod=|bool|connect,connect2|const QString &,const QString &,const QString &,const QString &,const QString &,QObject *,const char *

$prototype=bool connect(const QString &service, const QString &path, const QString &interface,const QString &name, const QStringList &argumentMatch, const QString& signature,QObject *receiver, const char *slot)
$internalMethod=|bool|connect,connect3|const QString &,const QString &,const QString &,const QString &,const QStringList &,const QString &,QObject *,const char *

/*
[1]bool connect(const QString &service, const QString &path, const QString &interface,const QString &name, QObject *receiver, const char *slot)
[2]bool connect(const QString &service, const QString &path, const QString &interface,const QString &name, const QString& signature,QObject *receiver, const char *slot)
[3]bool connect(const QString &service, const QString &path, const QString &interface,const QString &name, const QStringList &argumentMatch, const QString& signature,QObject *receiver, const char *slot)
*/

HB_FUNC_STATIC( QDBUSCONNECTION_CONNECT )
{
  // TODO: implementar
}
$addMethod=connect

$prototype=bool disconnect(const QString &service, const QString &path, const QString &interface,const QString &name, QObject *receiver, const char *slot)
$internalMethod=|bool|disconnect,disconnect1|const QString &,const QString &,const QString &,const QString &,QObject *,const char *

$prototype=bool disconnect(const QString &service, const QString &path, const QString &interface,const QString &name, const QString& signature,QObject *receiver, const char *slot)
$internalMethod=|bool|disconnect,disconnect2|const QString &,const QString &,const QString &,const QString &,const QString &,QObject *,const char *

$prototype=bool disconnect(const QString &service, const QString &path, const QString &interface,const QString &name, const QStringList &argumentMatch, const QString& signature,QObject *receiver, const char *slot)
$internalMethod=|bool|disconnect,disconnect3|const QString &,const QString &,const QString &,const QString &,const QStringList &,const QString &,QObject *,const char *

/*
[1]bool disconnect(const QString &service, const QString &path, const QString &interface,const QString &name, QObject *receiver, const char *slot)
[2]bool disconnect(const QString &service, const QString &path, const QString &interface,const QString &name, const QString& signature,QObject *receiver, const char *slot)
[3]bool disconnect(const QString &service, const QString &path, const QString &interface,const QString &name, const QStringList &argumentMatch, const QString& signature,QObject *receiver, const char *slot)
*/

HB_FUNC_STATIC( QDBUSCONNECTION_DISCONNECT )
{
  // TODO: implementar
}
$addMethod=disconnect

$prototypeV2=bool registerObject( const QString & path, QObject * object, QDBusConnection::RegisterOptions options = QDBusConnection::ExportAdaptors )

$prototypeV2=void unregisterObject( const QString & path, QDBusConnection::UnregisterMode mode = QDBusConnection::UnregisterNode )

$prototypeV2=QObject * objectRegisteredAt( const QString & path ) const

$prototype=bool registerVirtualObject(const QString &path, QDBusVirtualObject *object,VirtualObjectRegisterOption options = SingleNode)
%% TODO: check
%% $method=|bool|registerVirtualObject|const QString &,QDBusVirtualObject *,VirtualObjectRegisterOption=SingleNode

$prototypeV2=bool registerService( const QString & serviceName )

$prototypeV2=bool unregisterService( const QString & serviceName )

$prototypeV2=QDBusConnectionInterface * interface() const

$prototypeV2=void * internalPointer() const

$prototype=static QDBusConnection connectToBus(BusType type, const QString &name)
$internalStaticMethod=|QDBusConnection|connectToBus,connectToBus1|QDBusConnection::BusType,const QString &

$prototype=static QDBusConnection connectToBus(const QString &address, const QString &name)
$internalStaticMethod=|QDBusConnection|connectToBus,connectToBus2|const QString &,const QString &

/*
[1]static QDBusConnection connectToBus(BusType type, const QString &name)
[2]static QDBusConnection connectToBus(const QString &address, const QString &name)
*/

HB_FUNC_STATIC( QDBUSCONNECTION_CONNECTTOBUS )
{
  // TODO: implementar
}
$addMethod=connectToBus

$prototypeV2=static QDBusConnection connectToPeer( const QString & address, const QString & name )

$prototypeV2=static void disconnectFromBus( const QString & name )

$prototypeV2=static void disconnectFromPeer( const QString & name )

$prototypeV2=static QByteArray localMachineId()

$prototypeV2=static QDBusConnection sessionBus()

$prototypeV2=static QDBusConnection systemBus()

$prototypeV2=static QDBusConnection sender()

$extraMethods

#pragma ENDDUMP
