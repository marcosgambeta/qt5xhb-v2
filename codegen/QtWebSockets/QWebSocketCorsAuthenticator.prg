%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebSockets
$added=5,3,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QLatin1String>
#include <QtCore/QString>

$prototype=explicit QWebSocketCorsAuthenticator(const QString &origin)
$internalConstructor=|new1|const QString &

$prototype=explicit QWebSocketCorsAuthenticator(const QWebSocketCorsAuthenticator &other)
$internalConstructor=|new2|const QWebSocketCorsAuthenticator &

/*
[1]explicit QWebSocketCorsAuthenticator(const QString &origin)
[2]explicit QWebSocketCorsAuthenticator(const QWebSocketCorsAuthenticator &other)
*/

HB_FUNC_STATIC( QWEBSOCKETCORSAUTHENTICATOR_NEW )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QWebSocketCorsAuthenticator_new1();
  }
  else if( ISNUMPAR(1) && ISQWEBSOCKETCORSAUTHENTICATOR(1) )
  {
    QWebSocketCorsAuthenticator_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void swap(QWebSocketCorsAuthenticator &other)
$method=|void|swap|QWebSocketCorsAuthenticator &

$prototype=QString origin() const
$method=|QString|origin|

$prototype=bool allowed() const
$method=|bool|allowed|

$prototype=void setAllowed(bool allowed)
$method=|void|setAllowed|bool

$extraMethods

#pragma ENDDUMP
