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

$prototypeV2=void abort()

$prototypeV2=QAbstractSocket::SocketError error() const

$prototypeV2=QString errorString() const

$prototypeV2=bool flush()

$prototypeV2=bool isValid() const

$prototypeV2=QHostAddress localAddress() const

$prototypeV2=quint16 localPort() const

$prototypeV2=QAbstractSocket::PauseModes pauseMode() const

$prototypeV2=QHostAddress peerAddress() const

$prototypeV2=QString peerName() const

$prototypeV2=quint16 peerPort() const

$prototypeV2=QNetworkProxy proxy() const

$prototype=void setProxy(const QNetworkProxy &networkProxy)
$method=|void|setProxy|const QNetworkProxy &

$prototype=const QMaskGenerator *maskGenerator() const
$method=|const QMaskGenerator *|maskGenerator|

$prototype=void setMaskGenerator(const QMaskGenerator *maskGenerator)
$method=|void|setMaskGenerator|const QMaskGenerator *

$prototypeV2=qint64 readBufferSize() const

$prototype=void setReadBufferSize(qint64 size)
$method=|void|setReadBufferSize|qint64

$prototypeV2=void resume()

$prototype=void setPauseMode(QAbstractSocket::PauseModes pauseMode)
$method=|void|setPauseMode|QAbstractSocket::PauseModes

$prototypeV2=QAbstractSocket::SocketState state() const

$prototypeV2=QWebSocketProtocol::Version version() const

$prototypeV2=QString resourceName() const

$prototypeV2=QUrl requestUrl() const

$prototypeV2=QString origin() const

$prototypeV2=QWebSocketProtocol::CloseCode closeCode() const

$prototypeV2=QString closeReason() const

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

$prototypeV2=QSslConfiguration sslConfiguration() const

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
