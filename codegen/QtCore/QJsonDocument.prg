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

#include <QtCore/QJsonArray>
#include <QtCore/QJsonObject>
#include <QtCore/QVariant>

$prototype=QJsonDocument()
$internalConstructor=|new1|

$prototype=QJsonDocument(const QJsonObject & object)
$internalConstructor=|new2|const QJsonObject &

$prototype=QJsonDocument(const QJsonArray & array)
$internalConstructor=|new3|const QJsonArray &

$prototype=QJsonDocument(const QJsonDocument & other)
$internalConstructor=|new4|const QJsonDocument &

/*
[1]QJsonDocument()
[2]QJsonDocument(const QJsonObject & object)
[3]QJsonDocument(const QJsonArray & array)
[4]QJsonDocument(const QJsonDocument & other)
*/

HB_FUNC_STATIC( QJSONDOCUMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QJsonDocument_new1();
  }
  else if( ISNUMPAR(1) && ISQJSONOBJECT(1) )
  {
    QJsonDocument_new2();
  }
  else if( ISNUMPAR(1) && ISQJSONARRAY(1) )
  {
    QJsonDocument_new3();
  }
  else if( ISNUMPAR(1) && ISQJSONDOCUMENT(1) )
  {
    QJsonDocument_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QJsonArray array() const

$prototypeV2=bool isArray() const

$prototypeV2=bool isEmpty() const

$prototypeV2=bool isNull() const

$prototypeV2=bool isObject() const

$prototypeV2=QJsonObject object() const

$prototypeV2=const char * rawData( int * size ) const

$prototypeV2=void setArray( const QJsonArray & array )

$prototypeV2=void setObject( const QJsonObject & object )

$prototypeV2=QByteArray toBinaryData() const

$prototypeV2=QByteArray toJson() const

$prototypeV2=QVariant toVariant() const

$prototypeV2=static QJsonDocument fromBinaryData( const QByteArray & data, QJsonDocument::DataValidation validation = QJsonDocument::Validate )

$prototypeV2=static QJsonDocument fromJson( const QByteArray & json, QJsonParseError * error = nullptr )

$prototypeV2=static QJsonDocument fromRawData( const char * data, int size, QJsonDocument::DataValidation validation = QJsonDocument::Validate )

$prototypeV2=static QJsonDocument fromVariant( const QVariant & variant )

$extraMethods

#pragma ENDDUMP
