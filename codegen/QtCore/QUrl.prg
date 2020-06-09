%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QStringList>

$prototype=QUrl ()
$internalConstructor=|new1|

$prototype=QUrl ( const QString & url )
$internalConstructor=|new2|const QString &

$prototype=QUrl ( const QUrl & other )
$internalConstructor=|new3|const QUrl &

$prototype=QUrl ( const QString & url, ParsingMode parsingMode )
$internalConstructor=|new4|const QString &,QUrl::ParsingMode

/*
[1]QUrl ()
[2]QUrl ( const QString & url )
[3]QUrl ( const QUrl & other )
[4]QUrl ( const QString & url, ParsingMode parsingMode )
*/

HB_FUNC_STATIC( QURL_NEW )
{
  if( ISNUMPAR(0) )
  {
    QUrl_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QUrl_new2();
  }
  else if( ISNUMPAR(1) && ISQURL(1) )
  {
    QUrl_new3();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QUrl_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QString authority() const

$prototypeV2=void clear()

$prototypeV2=QString errorString() const

$prototypeV2=QString fragment() const

$prototypeV2=bool hasFragment() const

$prototypeV2=bool hasQuery() const

$prototypeV2=QString host() const

$prototypeV2=bool isEmpty() const

$prototypeV2=bool isLocalFile() const

$prototype=bool isParentOf ( const QUrl & childUrl ) const
$method=|bool|isParentOf|const QUrl &

$prototypeV2=bool isRelative() const

$prototypeV2=bool isValid() const

$prototypeV2=QString password() const

$prototypeV2=QString path() const

$prototype=int port () const
$internalMethod=|int|port,port1|

$prototype=int port ( int defaultPort ) const
$internalMethod=|int|port,port2|int

/*
[1]int port () const
[2]int port ( int defaultPort ) const
*/

HB_FUNC_STATIC( QURL_PORT )
{
  if( ISNUMPAR(0) )
  {
    QUrl_port1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QUrl_port2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=port

$prototype=QUrl resolved ( const QUrl & relative ) const
$method=|QUrl|resolved|const QUrl &

$prototypeV2=QString scheme() const

$prototype=void setAuthority ( const QString & authority )
$method=|void|setAuthority|const QString &

$prototype=void setFragment ( const QString & fragment )
$method=|void|setFragment|const QString &

$prototype=void setHost ( const QString & host )
$method=|void|setHost|const QString &

$prototype=void setPassword ( const QString & password )
$method=|void|setPassword|const QString &

$prototype=void setPath ( const QString & path )
$method=|void|setPath|const QString &

$prototype=void setPort ( int port )
$method=|void|setPort|int

$prototype=void setScheme ( const QString & scheme )
$method=|void|setScheme|const QString &

$prototype=void setUrl ( const QString & url )
$internalMethod=|void|setUrl,setUrl1|const QString &

$prototype=void setUrl ( const QString & url, ParsingMode parsingMode )
$internalMethod=|void|setUrl,setUrl2|const QString &,QUrl::ParsingMode

/*
[1]void setUrl ( const QString & url )
[2]void setUrl ( const QString & url, ParsingMode parsingMode )
*/

HB_FUNC_STATIC( QURL_SETURL )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QUrl_setUrl1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QUrl_setUrl2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setUrl

$prototype=void setUserInfo ( const QString & userInfo )
$method=|void|setUserInfo|const QString &

$prototype=void setUserName ( const QString & userName )
$method=|void|setUserName|const QString &

$prototype=void swap ( QUrl & other )
$method=|void|swap|QUrl &

$prototype=QByteArray toEncoded ( FormattingOptions options = None ) const
$method=|QByteArray|toEncoded|QUrl::FormattingOptions=QUrl::None

$prototypeV2=QString toLocalFile() const

$prototype=QString toString ( FormattingOptions options = None ) const
$method=|QString|toString|QUrl::FormattingOptions=QUrl::None

$prototypeV2=QString topLevelDomain() const

$prototypeV2=QString userInfo() const

$prototypeV2=QString userName() const

$prototype=static QString fromAce ( const QByteArray & domain )
$staticMethod=|QString|fromAce|const QByteArray &

$prototype=static QUrl fromEncoded ( const QByteArray & input )
$internalStaticMethod=|QUrl|fromEncoded,fromEncoded1|const QByteArray &

$prototype=static QUrl fromEncoded ( const QByteArray & input, ParsingMode parsingMode )
$internalStaticMethod=|QUrl|fromEncoded,fromEncoded2|const QByteArray &,QUrl::ParsingMode

/*
[1]QUrl fromEncoded ( const QByteArray & input )
[2]QUrl fromEncoded ( const QByteArray & input, ParsingMode parsingMode )
*/

HB_FUNC_STATIC( QURL_FROMENCODED )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QUrl_fromEncoded1();
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISNUM(2) )
  {
    QUrl_fromEncoded2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=fromEncoded

$prototype=static QUrl fromLocalFile ( const QString & localFile )
$staticMethod=|QUrl|fromLocalFile|const QString &

$prototype=static QString fromPercentEncoding ( const QByteArray & input )
$staticMethod=|QString|fromPercentEncoding|const QByteArray &

$prototype=static QUrl fromUserInput ( const QString & userInput )
$staticMethod=|QUrl|fromUserInput|const QString &

$prototype=static void setIdnWhitelist ( const QStringList & list )
$staticMethod=|void|setIdnWhitelist|const QStringList &

$prototype=static QByteArray toAce ( const QString & domain )
$staticMethod=|QByteArray|toAce|const QString &

$prototype=static QByteArray toPercentEncoding ( const QString & input, const QByteArray & exclude = QByteArray(), const QByteArray & include = QByteArray() )
$staticMethod=|QByteArray|toPercentEncoding|const QString &,const QByteArray &=QByteArray(),const QByteArray &=QByteArray()

$extraMethods

#pragma ENDDUMP
