%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSql

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QSqlField ( const QString & fieldName = QString(), QVariant::Type type = QVariant::Invalid )
$internalConstructor=|new1|const QString &=QString(),QVariant::Type=QVariant::Invalid

$prototype=QSqlField ( const QSqlField & other )
$internalConstructor=|new2|const QSqlField &

/*
[1]explicit QSqlField ( const QString & fieldName = QString(), QVariant::Type type = QVariant::Invalid )
[2]QSqlField ( const QSqlField & other )
*/

HB_FUNC_STATIC( QSQLFIELD_NEW )
{
  if( ISBETWEEN(0,2) && ISOPTCHAR(1) && ISOPTNUM(2) )
  {
    QSqlField_new1();
  }
  else if( ISNUMPAR(1) && ISQSQLFIELD(1) )
  {
    QSqlField_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=void clear()

$prototypeV2=QVariant defaultValue() const

$prototype=void setDefaultValue ( const QVariant & value )
$method=|void|setDefaultValue|const QVariant &

$prototypeV2=bool isAutoValue() const

$prototype=void setAutoValue ( bool autoVal )
$method=|void|setAutoValue|bool

$prototypeV2=bool isGenerated() const

$prototype=void setGenerated ( bool gen )
$method=|void|setGenerated|bool

$prototypeV2=bool isNull() const

$prototypeV2=bool isReadOnly() const

$prototype=void setReadOnly ( bool readOnly )
$method=|void|setReadOnly|bool

$prototypeV2=bool isValid() const

$prototypeV2=int length() const

$prototype=void setLength ( int fieldLength )
$method=|void|setLength|int

$prototypeV2=QString name() const

$prototype=void setName ( const QString & name )
$method=|void|setName|const QString &

$prototypeV2=int precision() const

$prototype=void setPrecision ( int precision )
$method=|void|setPrecision|int

$prototypeV2=QSqlField::RequiredStatus requiredStatus() const

$prototype=void setRequiredStatus ( RequiredStatus required )
$method=|void|setRequiredStatus|QSqlField::RequiredStatus

$prototype=void setRequired ( bool required )
$method=|void|setRequired|bool

$prototypeV2=QVariant::Type type() const

$prototype=void setType ( QVariant::Type type )
$method=|void|setType|QVariant::Type

$prototypeV2=QVariant value() const

$prototype=void setValue ( const QVariant & value )
$method=|void|setValue|const QVariant &

$prototype=void setSqlType(int type)
$method=|void|setSqlType|int

$prototypeV2=int typeID() const

$extraMethods

#pragma ENDDUMP
