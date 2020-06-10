%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QOpenGLDebugMessage()
$internalConstructor=|new1|

$prototype=QOpenGLDebugMessage(const QOpenGLDebugMessage &debugMessage)
$internalConstructor=|new2|const QOpenGLDebugMessage &

/*
[1]QOpenGLDebugMessage()
[2]QOpenGLDebugMessage(const QOpenGLDebugMessage &debugMessage)
*/

HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QOpenGLDebugMessage_new1();
  }
  else if( ISNUMPAR(1) && ISQOPENGLDEBUGMESSAGE(1) )
  {
    QOpenGLDebugMessage_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void swap(QOpenGLDebugMessage &debugMessage)
$method=|void|swap|QOpenGLDebugMessage &

$prototypeV2=QOpenGLDebugMessage::Source source() const

$prototypeV2=QOpenGLDebugMessage::Type type() const

$prototypeV2=QOpenGLDebugMessage::Severity severity() const

$prototypeV2=GLuint id() const

$prototypeV2=QString message() const

$prototype=static QOpenGLDebugMessage createApplicationMessage(const QString &text,GLuint id = 0,Severity severity = NotificationSeverity,Type type = OtherType)
$staticMethod=|QOpenGLDebugMessage|createApplicationMessage|const QString &,GLuint=0,QOpenGLDebugMessage::Severity=QOpenGLDebugMessage::NotificationSeverity,QOpenGLDebugMessage::Type=QOpenGLDebugMessage::OtherType

$prototype=static QOpenGLDebugMessage createThirdPartyMessage(const QString &text,GLuint id = 0,Severity severity = NotificationSeverity,Type type = OtherType)
$staticMethod=|QOpenGLDebugMessage|createThirdPartyMessage|const QString &,GLuint=0,QOpenGLDebugMessage::Severity=QOpenGLDebugMessage::NotificationSeverity,QOpenGLDebugMessage::Type=QOpenGLDebugMessage::OtherType

$extraMethods

#pragma ENDDUMP
