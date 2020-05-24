%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetworkAuth
$added=5,10,0

$header

%% #ifndef QT_NO_HTTP
%% #endif // QT_NO_HTTP

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractOAuth

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QOAuth1(QObject *parent = nullptr)
$internalConstructor=|new1|QObject *=nullptr

$prototype=explicit QOAuth1(QNetworkAccessManager *manager, QObject *parent = nullptr)
$internalConstructor=|new2|QNetworkAccessManager *,QObject *=nullptr

$prototype=QOAuth1(const QString &clientIdentifier, const QString &clientSharedSecret, QNetworkAccessManager *manager, QObject *parent = nullptr)

/*
[1]explicit QOAuth1(QObject *parent = nullptr)
[2]explicit QOAuth1(QNetworkAccessManager *manager, QObject *parent = nullptr)
*/

HB_FUNC_STATIC( QOAUTH1_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QOAuth1_new1();
  }
  else if( ISBETWEEN(1,2) && ISQNETWORKACCESSMANAGER(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QOAuth1_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QString clientSharedSecret() const
$method=|QString|clientSharedSecret|

$prototype=void setClientSharedSecret(const QString &clientSharedSecret)
$method=|void|setClientSharedSecret|const QString &

$prototype=QPair<QString, QString> clientCredentials() const

$prototype=void setClientCredentials(const QPair<QString, QString> &clientCredentials)

$prototype=void setClientCredentials(const QString &clientIdentifier, const QString &clientSharedSecret)
$method=|void|setClientCredentials|const QString &,const QString &

/*
[1]void setClientCredentials(const QPair<QString, QString> &clientCredentials)
[2]void setClientCredentials(const QString &clientIdentifier, const QString &clientSharedSecret)
*/

$prototype=QString tokenSecret() const
$method=|QString|tokenSecret|

$prototype=void setTokenSecret(const QString &tokenSecret)
$method=|void|setTokenSecret|const QString &

$prototype=QPair<QString, QString> tokenCredentials() const

$prototype=void setTokenCredentials(const QPair<QString, QString> &tokenCredentials)

$prototype=void setTokenCredentials(const QString &token, const QString &tokenSecret)
$method=|void|setTokenCredentials|const QString &,const QString &

/*
[1]void setTokenCredentials(const QPair<QString, QString> &tokenCredentials)
[2]void setTokenCredentials(const QString &token, const QString &tokenSecret)
*/

$prototype=QUrl temporaryCredentialsUrl() const
$method=|QUrl|temporaryCredentialsUrl|

$prototype=void setTemporaryCredentialsUrl(const QUrl &url)
$method=|void|setTemporaryCredentialsUrl|const QUrl &

$prototype=QUrl tokenCredentialsUrl() const
$method=|QUrl|tokenCredentialsUrl|

$prototype=void setTokenCredentialsUrl(const QUrl &url)
$method=|void|setTokenCredentialsUrl|const QUrl &

$prototype=SignatureMethod signatureMethod() const
%% TODO: fix
%% $method=|QOAuth1::SignatureMethod|signatureMethod|

$prototype=void setSignatureMethod(SignatureMethod value)
$method=|void|setSignatureMethod|QOAuth1::SignatureMethod

$prototype=QNetworkReply *head(const QUrl &url, const QVariantMap &parameters = QVariantMap()) override

$prototype=QNetworkReply *get(const QUrl &url, const QVariantMap &parameters = QVariantMap()) override

$prototype=QNetworkReply *post(const QUrl &url, const QVariantMap &parameters = QVariantMap()) override

$prototype=QNetworkReply *put(const QUrl &url, const QVariantMap &parameters = QVariantMap()) override

$prototype=QNetworkReply *deleteResource(const QUrl &url, const QVariantMap &parameters = QVariantMap()) override

$prototype=void grant() override (slot)
$method=|void|grant|

$prototype=void continueGrantWithVerifier(const QString &verifier) (slot)
$method=|void|continueGrantWithVerifier|const QString &

$prototype=QNetworkReply *requestTemporaryCredentials(QNetworkAccessManager::Operation operation, const QUrl &url, const QVariantMap &parameters = QVariantMap()) [protected]

$prototype=QNetworkReply *requestTokenCredentials(QNetworkAccessManager::Operation operation, const QUrl &url, const QPair<QString, QString> &temporaryToken, const QVariantMap &parameters = QVariantMap()) [protected]

$prototype=void setup(QNetworkRequest *request, const QVariantMap &signingParameters, QNetworkAccessManager::Operation operation) [protected]

$prototype=static QByteArray nonce() [protected]

$prototype=static QByteArray generateAuthorizationHeader(const QVariantMap &oauthParams) [protected]

%%
%% SIGNALS
%%

$prototype=void clientSharedSecretChanged( const QString & credential )
$signalMethod=|void|clientSharedSecretChanged|const QString &

$prototype=void signatureMethodChanged( QOAuth1::SignatureMethod method )
$signalMethod=|void|signatureMethodChanged|QOAuth1::SignatureMethod

$prototype=void temporaryCredentialsUrlChanged( const QUrl & url )
$signalMethod=|void|temporaryCredentialsUrlChanged|const QUrl &

$prototype=void tokenCredentialsUrlChanged( const QUrl & url )
$signalMethod=|void|tokenCredentialsUrlChanged|const QUrl &

$prototype=void tokenSecretChanged( const QString & token )
$signalMethod=|void|tokenSecretChanged|const QString &

#pragma ENDDUMP
