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

$prototype=QUrlQuery()
$internalConstructor=|new1|

$prototype=QUrlQuery(const QUrl & url)
$internalConstructor=|new2|const QUrl &

$prototype=QUrlQuery(const QString & queryString)
$internalConstructor=|new3|const QString &

$prototype=QUrlQuery(const QUrlQuery & other)
$internalConstructor=|new4|const QUrlQuery &

/*
[1]QUrlQuery()
[2]QUrlQuery(const QUrl & url)
[3]QUrlQuery(const QString & queryString)
[4]QUrlQuery(const QUrlQuery & other)
*/

HB_FUNC_STATIC( QURLQUERY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QUrlQuery_new1();
  }
  else if( ISNUMPAR(1) && ISQURL(1) )
  {
    QUrlQuery_new2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QUrlQuery_new3();
  }
  else if( ISNUMPAR(1) && ISQURLQUERY(1) )
  {
    QUrlQuery_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=void addQueryItem( const QString & key, const QString & value )

$prototypeV2=QStringList allQueryItemValues( const QString & key, QUrl::ComponentFormattingOptions encoding = QUrl::PrettyDecoded ) const

$prototypeV2=void clear()

$prototypeV2=bool hasQueryItem( const QString & key ) const

$prototypeV2=bool isEmpty() const

$prototypeV2=QString query( QUrl::ComponentFormattingOptions encoding = QUrl::PrettyDecoded ) const

$prototypeV2=QString queryItemValue( const QString & key, QUrl::ComponentFormattingOptions encoding = QUrl::PrettyDecoded ) const

$prototypeV2=QChar queryPairDelimiter() const

$prototypeV2=QChar queryValueDelimiter() const

$prototypeV2=void removeAllQueryItems( const QString & key )

$prototypeV2=void removeQueryItem( const QString & key )

$prototypeV2=void setQuery( const QString & queryString )

$prototypeV2=void swap( QUrlQuery & other )

$prototypeV2=QString toString( QUrl::ComponentFormattingOptions encoding = QUrl::PrettyDecoded ) const

$prototypeV2=static QChar defaultQueryPairDelimiter()

$prototypeV2=static QChar defaultQueryValueDelimiter()

$extraMethods

#pragma ENDDUMP
