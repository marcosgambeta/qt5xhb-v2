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

#include <QtDBus/QDBusConnection>

$prototype=QDBusContext()
$constructor=|new|

$deleteMethod

$prototypeV2=bool calledFromDBus() const

$prototypeV2=QDBusConnection connection() const

$prototypeV2=const QDBusMessage & message() const

$prototypeV2=bool isDelayedReply() const

$prototypeV2=void setDelayedReply( bool enable ) const

$prototype=void sendErrorReply(const QString &name, const QString &msg = QString()) const
$internalMethod=|void|sendErrorReply,sendErrorReply1|const QString &,const QString &=QString()

$prototype=void sendErrorReply(QDBusError::ErrorType type, const QString &msg = QString()) const
$internalMethod=|void|sendErrorReply,sendErrorReply2|QDBusError::ErrorType,const QString &=QString()

/*
[1]void sendErrorReply(const QString &name, const QString &msg = QString()) const
[2]void sendErrorReply(QDBusError::ErrorType type, const QString &msg = QString()) const
*/

HB_FUNC_STATIC( QDBUSCONTEXT_SENDERRORREPLY )
{
  // TODO: implementar
}
$addMethod=sendErrorReply

$extraMethods

#pragma ENDDUMP
