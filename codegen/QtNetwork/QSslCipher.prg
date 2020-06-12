%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

%% #ifndef QT_NO_SSL
%% #endif // QT_NO_SSL

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSslCipher()
$internalConstructor=|new1|

$prototype=explicit QSslCipher(const QString &name)
$internalConstructor=5,3,0|new2|const QString &

$prototype=QSslCipher( const QString & name, QSsl::SslProtocol protocol )
$internalConstructor=|new3|const QString &,QSsl::SslProtocol

$prototype=QSslCipher( const QSslCipher & other )
$internalConstructor=|new4|const QSslCipher &

/*
[1]QSslCipher()
[2]explicit QSslCipher(const QString &name)
[3]QSslCipher( const QString & name, QSsl::SslProtocol protocol )
[4]QSslCipher( const QSslCipher & other )
*/

HB_FUNC_STATIC( QSSLCIPHER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSslCipher_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSslCipher_new2();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QSslCipher_new3();
  }
  else if( ISNUMPAR(1) && ISQSSLCIPHER(1) )
  {
    QSslCipher_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QSslCipher()
$deleteMethod

$prototypeV2=QString authenticationMethod() const

$prototypeV2=QString encryptionMethod() const

$prototypeV2=bool isNull() const

$prototypeV2=QString keyExchangeMethod() const

$prototypeV2=QString name() const

$prototypeV2=QSsl::SslProtocol protocol() const

$prototypeV2=QString protocolString() const

$prototypeV2=int supportedBits() const

$prototypeV2=int usedBits() const

$prototype=void swap(QSslCipher &other) Q_DECL_NOTHROW
$method=|void|swap|QSslCipher &

$extraMethods

#pragma ENDDUMP
