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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QOAuth1Signature(const QUrl &url = QUrl(), HttpRequestMethod method = HttpRequestMethod::Post, const QVariantMap &parameters = QVariantMap())
%% TODO: implementar QVariantMap
%% $internalConstructor=|new1|const QUrl &=QUrl(),QOAuth1Signature::HttpRequestMethod=HttpRequestMethod::Post,const QVariantMap &=QVariantMap()

$prototype=QOAuth1Signature(const QUrl &url, const QString &clientSharedKey, const QString &tokenSecret, HttpRequestMethod method = HttpRequestMethod::Post, const QVariantMap &parameters = QVariantMap())
%% TODO: implementar QVariantMap
%% $internalConstructor=|new2|const QUrl &,const QString &,const QString &,QOAuth1Signature::HttpRequestMethod=HttpRequestMethod::Post,const QVariantMap &=QVariantMap()

$prototype=QOAuth1Signature(const QOAuth1Signature &other)
$internalConstructor=|new3|const QOAuth1Signature &

$prototype=QOAuth1Signature(QOAuth1Signature &&other)

/*
[1]explicit QOAuth1Signature(const QUrl &url = QUrl(), HttpRequestMethod method = HttpRequestMethod::Post, const QVariantMap &parameters = QVariantMap())
[2]QOAuth1Signature(const QUrl &url, const QString &clientSharedKey, const QString &tokenSecret, HttpRequestMethod method = HttpRequestMethod::Post, const QVariantMap &parameters = QVariantMap())
[3]QOAuth1Signature(const QOAuth1Signature &other)
[4]QOAuth1Signature(QOAuth1Signature &&other)
*/

HB_FUNC_STATIC( QOAUTH1SIGNATURE_NEW )
{
  if( ISNUMPAR(1) && ISQOAUTH1SIGNATURE(1) )
  {
    QOAuth1Signature_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QOAuth1Signature()
$deleteMethod

$prototype=HttpRequestMethod httpRequestMethod() const
%% TODO: fix
%% $method=|QOAuth1Signature::HttpRequestMethod|httpRequestMethod|

$prototype=void setHttpRequestMethod(HttpRequestMethod method)
$method=|void|setHttpRequestMethod|QOAuth1Signature::HttpRequestMethod

$prototype=QUrl url() const
$method=|QUrl|url|

$prototype=void setUrl(const QUrl &url)
$method=|void|setUrl|const QUrl &

$prototype=QVariantMap parameters() const

$prototype=void setParameters(const QVariantMap &parameters)

$prototype=void addRequestBody(const QUrlQuery &body)
$method=|void|addRequestBody|const QUrlQuery &

$prototype=void insert(const QString &key, const QVariant &value)
$method=|void|insert|const QString &,const QVariant &

$prototype=QList<QString> keys() const
$method=|QList<QString>|keys|

$prototype=QVariant take(const QString &key)
$method=|QVariant|take|const QString &

$prototype=QVariant value(const QString &key, const QVariant &defaultValue = QVariant()) const
$method=|QVariant|value|const QString &,const QVariant &=QVariant()

$prototype=QString clientSharedKey() const
$method=|QString|clientSharedKey|

$prototype=void setClientSharedKey(const QString &secret)
$method=|void|setClientSharedKey|const QString &

$prototype=QString tokenSecret() const
$method=|QString|tokenSecret|

$prototype=void setTokenSecret(const QString &secret)
$method=|void|setTokenSecret|const QString &

$prototype=QByteArray hmacSha1() const
$method=|QByteArray|hmacSha1|

$prototype=QByteArray rsaSha1() const
$method=|QByteArray|rsaSha1|

$prototype=QByteArray plainText() const
$internalMethod=|QByteArray|plainText,plainText1|

$prototype=static QByteArray plainText(const QString &clientSharedSecret, const QString &tokenSecret)
$internalStaticMethod=|QByteArray|plainText,plainText2|const QString &,const QString &

/*
[1]QByteArray plainText() const
[2]static QByteArray plainText(const QString &clientSharedSecret, const QString &tokenSecret)
*/

HB_FUNC_STATIC( QOAUTH1SIGNATURE_PLAINTEXT )
{
  if( ISNUMPAR(0) )
  {
    QOAuth1Signature_plainText1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QOAuth1Signature_plainText2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=plainText

$prototype=void swap(QOAuth1Signature &other)
$method=|void|swap|QOAuth1Signature &

$extraMethods

#pragma ENDDUMP
