%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetworkAuth

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

$includes=5,10,0

#include <QtNetwork/QNetworkAccessManager>
#include <QtNetworkAuth/QAbstractOAuthReplyHandler>

$prototype=explicit QAbstractOAuth(QAbstractOAuthPrivate &, QObject *parent = nullptr) [protected]

$prototype=virtual ~QAbstractOAuth()
$deleteMethod=5,10,0

%%
%% Q_PROPERTY(QString clientIdentifier READ clientIdentifier WRITE setClientIdentifier NOTIFY clientIdentifierChanged)
%%

$prototype=QString clientIdentifier() const
$method=5,10,0|QString|clientIdentifier|

$prototype=void setClientIdentifier(const QString &clientIdentifier)
$method=5,10,0|void|setClientIdentifier|const QString &

%%
%% Q_PROPERTY(QString token READ token WRITE setToken NOTIFY tokenChanged)
%%

$prototype=QString token() const
$method=5,10,0|QString|token|

$prototype=void setToken(const QString &token)
$method=5,10,0|void|setToken|const QString &

%%
%% Q_PROPERTY(Status status  READ status NOTIFY statusChanged)
%%

$prototype=Status status() const
%% TODO: fix
%% $method=|QAbstractOAuth::Status|status|

%%
%% Q_PROPERTY(QUrl authorizationUrl READ authorizationUrl WRITE setAuthorizationUrl NOTIFY authorizationUrlChanged)
%%

$prototype=QUrl authorizationUrl() const
$method=5,10,0|QUrl|authorizationUrl|

$prototype=void setAuthorizationUrl(const QUrl &url)
$method=5,10,0|void|setAuthorizationUrl|const QUrl &

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
$method=5,10,0|void|setContentType|QAbstractOAuth::ContentType

%%
%%
%%

$prototype=QNetworkAccessManager *networkAccessManager() const
$method=5,10,0|QNetworkAccessManager *|networkAccessManager|

$prototype=void setNetworkAccessManager(QNetworkAccessManager *networkAccessManager)
$method=5,10,0|void|setNetworkAccessManager|QNetworkAccessManager *

$prototype=QAbstractOAuthReplyHandler *replyHandler() const
$method=5,10,0|QAbstractOAuthReplyHandler *|replyHandler|

$prototype=void setReplyHandler(QAbstractOAuthReplyHandler *handler)
$method=5,10,0|void|setReplyHandler|QAbstractOAuthReplyHandler *

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

$prototype=virtual void grant() = 0 (slot)
$virtualMethod=5,10,0|void|grant|

$prototype=void setStatus(Status status) [protected]

$prototype=QString callback() const [protected]

$prototype=virtual void resourceOwnerAuthorization(const QUrl &url, const QVariantMap &parameters) [protected]

$prototype=static QByteArray generateRandomString(quint8 length) [protected]

%%
%% SIGNALS
%%

$prototype=void clientIdentifierChanged( const QString & clientIdentifier )
$signalMethod=5,10,0|void|clientIdentifierChanged|const QString &

$prototype=void tokenChanged( const QString & token )
$signalMethod=5,10,0|void|tokenChanged|const QString &

$prototype=void statusChanged( QAbstractOAuth::Status status )
$signalMethod=5,10,0|void|statusChanged|QAbstractOAuth::Status

$prototype=void authorizationUrlChanged( const QUrl & url )
$signalMethod=5,10,0|void|authorizationUrlChanged|const QUrl &

$prototype=void extraTokensChanged( const QVariantMap & tokens )
%% TODO: $signalMethod=5,10,0|void|extraTokensChanged|const QVariantMap &

$prototype=void contentTypeChanged( QAbstractOAuth::ContentType contentType )
$signalMethod=5,10,0|void|contentTypeChanged|QAbstractOAuth::ContentType

$prototype=void requestFailed( const QAbstractOAuth::Error error )
$signalMethod=5,10,0|void|requestFailed|QAbstractOAuth::Error

$prototype=void authorizeWithBrowser( const QUrl & url )
$signalMethod=5,10,0|void|authorizeWithBrowser|const QUrl &

$prototype=void granted()
$signalMethod=5,10,0|void|granted|

$prototype=void finished( QNetworkReply * reply )
$signalMethod=5,10,0|void|finished|QNetworkReply *

$prototype=void replyDataReceived( const QByteArray & data )
$signalMethod=5,10,0|void|replyDataReceived|const QByteArray &

#pragma ENDDUMP
