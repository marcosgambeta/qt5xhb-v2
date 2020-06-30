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

$prototype=QDBusMessage()
$internalConstructor=|new1|

$prototype=QDBusMessage(const QDBusMessage &other)
$internalConstructor=|new2|const QDBusMessage &

/*
[1]QDBusMessage()
[2]QDBusMessage(const QDBusMessage &other)
*/

HB_FUNC_STATIC( QDBUSMESSAGE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDBusMessage_new1();
  }
  else if( ISNUMPAR(1) && ISQDBUSMESSAGE(1) )
  {
    QDBusMessage_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QDBusMessage createReply(const QList<QVariant> &arguments = QList<QVariant>()) const
%% TODO: implementar
%% $internalMethod=|QDBusMessage|createReply,createReply1|const QList<QVariant> &=QList<QVariant>()

$prototype=QDBusMessage createReply(const QVariant &argument) const
$internalMethod=|QDBusMessage|createReply,createReply2|const QVariant &

/*
[1]QDBusMessage createReply(const QList<QVariant> &arguments = QList<QVariant>()) const
[2]QDBusMessage createReply(const QVariant &argument) const
*/

HB_FUNC_STATIC( QDBUSMESSAGE_CREATEREPLY )
{
%%  if( ISNUMPAR(1) && ISARRAY(1) )
%%  {
%%    QDBusMessage_createReply1();
%%  }
  if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    QDBusMessage_createReply2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=createReply

$prototype=QDBusMessage createErrorReply(const QString name, const QString &msg) const
$internalMethod=|QDBusMessage|createErrorReply,createErrorReply1|const QString &,const QString &

$prototype=QDBusMessage createErrorReply(const QDBusError &err) const
$internalMethod=|QDBusMessage|createErrorReply,createErrorReply2|const QDBusError &

$prototype=QDBusMessage createErrorReply(QDBusError::ErrorType type, const QString &msg) const
$internalMethod=|QDBusMessage|createErrorReply,createErrorReply3|QDBusError::ErrorType,const QString &

/*
[1]QDBusMessage createErrorReply(const QString name, const QString &msg) const
[2]QDBusMessage createErrorReply(const QDBusError &err) const
[3]QDBusMessage createErrorReply(QDBusError::ErrorType type, const QString &msg) const
*/

HB_FUNC_STATIC( QDBUSMESSAGE_CREATEERRORREPLY )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QDBusMessage_createErrorReply1();
  }
  else if( ISNUMPAR(1) && ISQDBUSERROR(1) )
  {
    QDBusMessage_createErrorReply2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    QDBusMessage_createErrorReply3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=createErrorReply

$prototypeV2=QString service() const

$prototypeV2=QString path() const

$prototypeV2=QString interface() const

$prototypeV2=QString member() const

$prototypeV2=QString errorName() const

$prototypeV2=QString errorMessage() const

$prototypeV2=QDBusMessage::MessageType type() const

$prototypeV2=QString signature() const

$prototypeV2=bool isReplyRequired() const

$prototypeV2=void setDelayedReply( bool enable ) const

$prototypeV2=bool isDelayedReply() const

$prototypeV2=void setAutoStartService( bool enable )

$prototypeV2=bool autoStartService() const

$prototypeV2=void setArguments( const QList<QVariant> & arguments )

$prototypeV2=QList<QVariant> arguments() const

$prototypeV2=static QDBusMessage createSignal( const QString & path, const QString & interface, const QString & name )

$prototypeV2=static QDBusMessage createMethodCall( const QString & destination, const QString & path, const QString & interface, const QString & method )

$prototype=static QDBusMessage createError(const QString &name, const QString &msg)
$internalStaticMethod=|QDBusMessage|createError,createError1|const QString &,const QString &

$prototype=static inline QDBusMessage createError(const QDBusError &err)
$internalStaticMethod=|QDBusMessage|createError,createError2|const QDBusError &

$prototype=static inline QDBusMessage createError(QDBusError::ErrorType type, const QString &msg)
$internalStaticMethod=|QDBusMessage|createError,createError3|QDBusError::ErrorType,const QString &

/*
[1]static QDBusMessage createError(const QString &name, const QString &msg)
[2]static inline QDBusMessage createError(const QDBusError &err)
[3]static inline QDBusMessage createError(QDBusError::ErrorType type, const QString &msg)
*/

HB_FUNC_STATIC( QDBUSMESSAGE_CREATEERROR )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QDBusMessage_createError1();
  }
  else if( ISNUMPAR(1) && ISQDBUSERROR(1) )
  {
    QDBusMessage_createError2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    QDBusMessage_createError3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=createError

$prototypeV2=5,12,0|bool QDBusMessage::isInteractiveAuthorizationAllowed() const

$prototypeV2=5,12,0|void QDBusMessage::setInteractiveAuthorizationAllowed( bool enable )

$extraMethods

#pragma ENDDUMP
