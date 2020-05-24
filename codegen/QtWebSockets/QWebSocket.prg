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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtNetwork/QAuthenticator>
#include <QtWebSockets/QMaskGenerator>

$prototype=explicit QWebSocket(const QString &origin = QString(),QWebSocketProtocol::Version version = QWebSocketProtocol::VersionLatest,QObject *parent = nullptr)
$constructor=|new|const QString &=QString(),QWebSocketProtocol::Version=QWebSocketProtocol::VersionLatest,QObject *=nullptr

$deleteMethod

$prototype=void abort()
$method=|void|abort|

$prototype=QAbstractSocket::SocketError error() const
$method=|QAbstractSocket::SocketError|error|

$prototype=QString errorString() const
$method=|QString|errorString|

$prototype=bool flush()
$method=|bool|flush|

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=QHostAddress localAddress() const
$method=|QHostAddress|localAddress|

$prototype=quint16 localPort() const
$method=|quint16|localPort|

$prototype=QAbstractSocket::PauseModes pauseMode() const
$method=|QAbstractSocket::PauseModes|pauseMode|

$prototype=QHostAddress peerAddress() const
$method=|QHostAddress|peerAddress|

$prototype=QString peerName() const
$method=|QString|peerName|

$prototype=quint16 peerPort() const
$method=|quint16|peerPort|

$prototype=QNetworkProxy proxy() const
$method=|QNetworkProxy|proxy|

$prototype=void setProxy(const QNetworkProxy &networkProxy)
$method=|void|setProxy|const QNetworkProxy &

$prototype=const QMaskGenerator *maskGenerator() const
$method=|const QMaskGenerator *|maskGenerator|

$prototype=void setMaskGenerator(const QMaskGenerator *maskGenerator)
$method=|void|setMaskGenerator|const QMaskGenerator *

$prototype=qint64 readBufferSize() const
$method=|qint64|readBufferSize|

$prototype=void setReadBufferSize(qint64 size)
$method=|void|setReadBufferSize|qint64

$prototype=void resume()
$method=|void|resume|

$prototype=void setPauseMode(QAbstractSocket::PauseModes pauseMode)
$method=|void|setPauseMode|QAbstractSocket::PauseModes

$prototype=QAbstractSocket::SocketState state() const
$method=|QAbstractSocket::SocketState|state|

$prototype=QWebSocketProtocol::Version version() const
$method=|QWebSocketProtocol::Version|version|

$prototype=QString resourceName() const
$method=|QString|resourceName|

$prototype=QUrl requestUrl() const
$method=|QUrl|requestUrl|

$prototype=QString origin() const
$method=|QString|origin|

$prototype=QWebSocketProtocol::CloseCode closeCode() const
$method=|QWebSocketProtocol::CloseCode|closeCode|

$prototype=QString closeReason() const
$method=|QString|closeReason|

$prototype=qint64 sendTextMessage(const QString &message)
$method=|qint64|sendTextMessage|const QString &

$prototype=qint64 sendBinaryMessage(const QByteArray &data)
$method=|qint64|sendBinaryMessage|const QByteArray &

$prototype=void ignoreSslErrors(const QList<QSslError> &errors)
$internalMethod=|void|ignoreSslErrors,ignoreSslErrors1|const QList<QSslError> &

$prototype=void ignoreSslErrors()
$internalMethod=|void|ignoreSslErrors,ignoreSslErrors2|

/*
[1]void ignoreSslErrors(const QList<QSslError> &errors)
[2]void ignoreSslErrors()
*/

HB_FUNC_STATIC( QWEBSOCKET_IGNORESSLERRORS )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QWebSocket_ignoreSslErrors1();
  }
  else if( ISNUMPAR(0) )
  {
    QWebSocket_ignoreSslErrors2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=ignoreSslErrors

$prototype=QSslConfiguration sslConfiguration() const
$method=|QSslConfiguration|sslConfiguration|

$prototype=void setSslConfiguration(const QSslConfiguration &sslConfiguration)
$method=|void|setSslConfiguration|const QSslConfiguration &

$prototype=void close(QWebSocketProtocol::CloseCode closeCode = QWebSocketProtocol::CloseCodeNormal,const QString &reason = QString())
$method=|void|close|QWebSocketProtocol::CloseCode=QWebSocketProtocol::CloseCodeNormal,const QString &=QString()

$prototype=void open(const QUrl &url)
$method=|void|open|const QUrl &

$prototype=void ping(const QByteArray &payload = QByteArray())
$method=|void|ping|const QByteArray &=QByteArray()

%%
%% SIGNALS
%%

$prototype=void aboutToClose()
$signalMethod=|void|aboutToClose|

$prototype=void connected()
$signalMethod=|void|connected|

$prototype=void disconnected()
$signalMethod=|void|disconnected|

$prototype=void stateChanged( QAbstractSocket::SocketState state )
$signalMethod=|void|stateChanged|QAbstractSocket::SocketState

$prototype=void proxyAuthenticationRequired( const QNetworkProxy & proxy, QAuthenticator * pAuthenticator )
$signalMethod=|void|proxyAuthenticationRequired|const QNetworkProxy &,QAuthenticator *

$prototype=void readChannelFinished()
$signalMethod=|void|readChannelFinished|

$prototype=void textFrameReceived( const QString & frame, bool isLastFrame )
$signalMethod=|void|textFrameReceived|const QString &,bool

$prototype=void binaryFrameReceived( const QByteArray & frame, bool isLastFrame )
$signalMethod=|void|binaryFrameReceived|const QByteArray &,bool

$prototype=void textMessageReceived( const QString & message )
$signalMethod=|void|textMessageReceived|const QString &

$prototype=void binaryMessageReceived( const QByteArray & message )
$signalMethod=|void|binaryMessageReceived|const QByteArray &

$prototype=void error( QAbstractSocket::SocketError error )
$signalMethod=|void|error,error,QOverload<QAbstractSocket::SocketError>|QAbstractSocket::SocketError

$prototype=void pong( quint64 elapsedTime, const QByteArray & payload )
$signalMethod=|void|pong|quint64,const QByteArray &

$prototype=void bytesWritten( qint64 bytes )
$signalMethod=|void|bytesWritten|qint64

$prototype=void sslErrors( const QList<QSslError> & errors )
$signalMethod=|void|sslErrors|const QList<QSslError> &

#pragma ENDDUMP
