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

$beginClassFrom=QAbstractOAuth2

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QOAuth2AuthorizationCodeFlow(QObject *parent = nullptr)
$internalConstructor=|new1|QObject *=nullptr

$prototype=explicit QOAuth2AuthorizationCodeFlow(QNetworkAccessManager *manager, QObject *parent = nullptr)
$internalConstructor=|new2|QNetworkAccessManager *,QObject *=nullptr

$prototype=QOAuth2AuthorizationCodeFlow(const QString &clientIdentifier, QNetworkAccessManager *manager, QObject *parent = nullptr)
$internalConstructor=|new3|const QString &,QNetworkAccessManager *,QObject *=nullptr

$prototype=QOAuth2AuthorizationCodeFlow(const QUrl &authorizationUrl, const QUrl &accessTokenUrl, QNetworkAccessManager *manager, QObject *parent = nullptr)
$internalConstructor=|new4|const QUrl &,const QUrl &,QNetworkAccessManager *,QObject *=nullptr

$prototype=QOAuth2AuthorizationCodeFlow(const QString &clientIdentifier, const QUrl &authorizationUrl, const QUrl &accessTokenUrl, QNetworkAccessManager *manager, QObject *parent = nullptr)
$internalConstructor=|new5|const QString &,const QUrl &,const QUrl &,QNetworkAccessManager *,QObject *=nullptr

/*
[1]explicit QOAuth2AuthorizationCodeFlow(QObject *parent = nullptr)
[2]explicit QOAuth2AuthorizationCodeFlow(QNetworkAccessManager *manager, QObject *parent = nullptr)
[3]QOAuth2AuthorizationCodeFlow(const QString &clientIdentifier, QNetworkAccessManager *manager, QObject *parent = nullptr)
[4]QOAuth2AuthorizationCodeFlow(const QUrl &authorizationUrl, const QUrl &accessTokenUrl, QNetworkAccessManager *manager, QObject *parent = nullptr)
[5]QOAuth2AuthorizationCodeFlow(const QString &clientIdentifier, const QUrl &authorizationUrl, const QUrl &accessTokenUrl, QNetworkAccessManager *manager, QObject *parent = nullptr)
*/

HB_FUNC_STATIC( QOAUTH2AUTHORIZATIONCODEFLOW_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QOAuth2AuthorizationCodeFlow_new1();
  }
  else if( ISBETWEEN(1,2) && ISQNETWORKACCESSMANAGER(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QOAuth2AuthorizationCodeFlow_new2();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISQNETWORKACCESSMANAGER(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    QOAuth2AuthorizationCodeFlow_new3();
  }
  else if( ISBETWEEN(3,4) && ISQURL(1) && ISQURL(2) && ISQNETWORKACCESSMANAGER(3) && (ISQOBJECT(4)||ISNIL(4)) )
  {
    QOAuth2AuthorizationCodeFlow_new4();
  }
  else if( ISBETWEEN(4,5) && ISCHAR(1) && ISQURL(2) && ISQURL(3) && ISQNETWORKACCESSMANAGER(4) && (ISQOBJECT(5)||ISNIL(5)) )
  {
    QOAuth2AuthorizationCodeFlow_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QOAuth2AuthorizationCodeFlow()
$deleteMethod

%%
%% Q_PROPERTY(QUrl accessTokenUrl READ accessTokenUrl WRITE setAccessTokenUrl NOTIFY accessTokenUrlChanged)
%%

$prototypeV2=QUrl accessTokenUrl() const

$prototype=void setAccessTokenUrl(const QUrl &accessTokenUrl)
$method=|void|setAccessTokenUrl|const QUrl &

%%
%%
%%

$prototypeV2=void grant() override (slot)

$prototypeV2=void refreshAccessToken() (slot)

$prototype=QUrl buildAuthenticateUrl(const QVariantMap &parameters = QVariantMap()) [protected]

$prototype=void requestAccessToken(const QString &code) [protected]

$prototype=void resourceOwnerAuthorization(const QUrl &url, const QVariantMap &parameters = QVariantMap()) override [protected]

%%
%% SIGNALS
%%

$prototype=void accessTokenUrlChanged( const QUrl & accessTokenUrl )
$signalMethod=|void|accessTokenUrlChanged|const QUrl &

#pragma ENDDUMP
