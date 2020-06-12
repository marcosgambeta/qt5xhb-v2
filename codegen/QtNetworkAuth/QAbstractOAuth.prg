%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetworkAuth
$added=5,10,0

$header

%% TODO: class guarded by #ifndef QT_NO_HTTP ... #endif // QT_NO_HTTP
%% typedef std::function<void(Stage, QVariantMap*)> ModifyParametersFunction;

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtNetwork/QNetworkAccessManager>
#include <QtNetwork/QNetworkReply>
#include <QtNetworkAuth/QAbstractOAuthReplyHandler>

$prototype=explicit QAbstractOAuth(QAbstractOAuthPrivate &, QObject *parent = nullptr) [protected]

$prototype=virtual ~QAbstractOAuth()
$deleteMethod

%%
%% Q_PROPERTY(QString clientIdentifier READ clientIdentifier WRITE setClientIdentifier NOTIFY clientIdentifierChanged)
%%

$prototypeV2=QString clientIdentifier() const

$prototype=void setClientIdentifier(const QString &clientIdentifier)
$method=|void|setClientIdentifier|const QString &

%%
%% Q_PROPERTY(QString token READ token WRITE setToken NOTIFY tokenChanged)
%%

$prototypeV2=QString token() const

$prototype=void setToken(const QString &token)
$method=|void|setToken|const QString &

%%
%% Q_PROPERTY(Status status  READ status NOTIFY statusChanged)
%%

$prototype=Status status() const
%% TODO: fix
%% $method=|QAbstractOAuth::Status|status|

%%
%% Q_PROPERTY(QUrl authorizationUrl READ authorizationUrl WRITE setAuthorizationUrl NOTIFY authorizationUrlChanged)
%%

$prototypeV2=QUrl authorizationUrl() const

$prototype=void setAuthorizationUrl(const QUrl &url)
$method=|void|setAuthorizationUrl|const QUrl &

%%
%% Q_PROPERTY(QVariantMap extraTokens READ extraTokens NOTIFY extraTokensChanged)
%%

$prototype=QVariantMap extraTokens() const
%% $method=|QVariantMap|extraTokens|

%%
%% Q_PROPERTY(QAbstractOAuth::ContentType contentType READ contentType WRITE setContentType NOTIFY contentTypeChanged)
%%

$prototype=ContentType contentType() const
%% TODO: fix
%% $method=|QAbstractOAuth::ContentType|contentType|

$prototype=void setContentType(ContentType contentType)
$method=|void|setContentType|QAbstractOAuth::ContentType

%%
%%
%%

$prototypeV2=QNetworkAccessManager * networkAccessManager() const

$prototype=void setNetworkAccessManager(QNetworkAccessManager *networkAccessManager)
$method=|void|setNetworkAccessManager|QNetworkAccessManager *

$prototypeV2=QAbstractOAuthReplyHandler * replyHandler() const

$prototype=void setReplyHandler(QAbstractOAuthReplyHandler *handler)
$method=|void|setReplyHandler|QAbstractOAuthReplyHandler *

$prototype=Q_INVOKABLE virtual QNetworkReply *head(const QUrl &url, const QVariantMap &parameters = QVariantMap()) = 0
%% $virtualMethod=|QNetworkReply *|head|const QUrl &,const QVariantMap &=QVariantMap()

$prototype=Q_INVOKABLE virtual QNetworkReply *get(const QUrl &url, const QVariantMap &parameters = QVariantMap()) = 0
%% $virtualMethod=|QNetworkReply *|get|const QUrl &,const QVariantMap &=QVariantMap()

$prototype=Q_INVOKABLE virtual QNetworkReply *post(const QUrl &url, const QVariantMap &parameters = QVariantMap()) = 0
%% $virtualMethod=|QNetworkReply *|post|const QUrl &,const QVariantMap &=QVariantMap()

$prototype=Q_INVOKABLE virtual QNetworkReply *put(const QUrl &url, const QVariantMap &parameters = QVariantMap()) = 0
%% $virtualMethod=|QNetworkReply *|put|const QUrl &,const QVariantMap &=QVariantMap()

$prototype=Q_INVOKABLE virtual QNetworkReply *deleteResource( const QUrl &url, const QVariantMap &parameters = QVariantMap()) = 0
%% $virtualMethod=|QNetworkReply *|deleteResource|const QUrl &,const QVariantMap &=QVariantMap()

$prototype=ModifyParametersFunction modifyParametersFunction() const
%% TODO: implementar

$prototype=void setModifyParametersFunction(const ModifyParametersFunction &modifyParametersFunction)
%% TODO: implementar

$prototypeV2=virtual void grant() = 0 (slot)

$prototype=void setStatus(Status status) [protected]

$prototype=QString callback() const [protected]

$prototype=virtual void resourceOwnerAuthorization(const QUrl &url, const QVariantMap &parameters) [protected]

$prototype=static QByteArray generateRandomString(quint8 length) [protected]

%%
%% SIGNALS
%%

$prototype=void clientIdentifierChanged( const QString & clientIdentifier )
$signalMethod=|void|clientIdentifierChanged|const QString &

$prototype=void tokenChanged( const QString & token )
$signalMethod=|void|tokenChanged|const QString &

$prototype=void statusChanged( QAbstractOAuth::Status status )
$signalMethod=|void|statusChanged|QAbstractOAuth::Status

$prototype=void authorizationUrlChanged( const QUrl & url )
$signalMethod=|void|authorizationUrlChanged|const QUrl &

$prototype=void extraTokensChanged( const QVariantMap & tokens )
%% TODO: $signalMethod=|void|extraTokensChanged|const QVariantMap &

$prototype=void contentTypeChanged( QAbstractOAuth::ContentType contentType )
$signalMethod=|void|contentTypeChanged|QAbstractOAuth::ContentType

$prototype=void requestFailed( const QAbstractOAuth::Error error )
$signalMethod=|void|requestFailed|QAbstractOAuth::Error

$prototype=void authorizeWithBrowser( const QUrl & url )
$signalMethod=|void|authorizeWithBrowser|const QUrl &

$prototype=void granted()
$signalMethod=|void|granted|

$prototype=void finished( QNetworkReply * reply )
$signalMethod=|void|finished|QNetworkReply *

$prototype=void replyDataReceived( const QByteArray & data )
$signalMethod=|void|replyDataReceived|const QByteArray &

#pragma ENDDUMP
