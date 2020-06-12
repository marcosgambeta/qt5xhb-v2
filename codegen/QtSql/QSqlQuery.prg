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

#include <QtCore/QVariant>
#include <QtSql/QSqlDriver>
#include <QtSql/QSqlError>
#include <QtSql/QSqlRecord>

$prototype=explicit QSqlQuery ( QSqlResult * result )
$internalConstructor=|new1|QSqlResult *

$prototype=explicit QSqlQuery ( const QString & query = QString(), QSqlDatabase db = QSqlDatabase() )
$internalConstructor=|new2|const QString &=QString(),QSqlDatabase=QSqlDatabase()

$prototype=explicit QSqlQuery ( QSqlDatabase db )
$internalConstructor=|new3|QSqlDatabase

$prototype=QSqlQuery ( const QSqlQuery & other )
$internalConstructor=|new4|const QSqlQuery &

/*
[1]explicit QSqlQuery ( QSqlResult * result )
[2]explicit QSqlQuery ( const QString & query = QString(), QSqlDatabase db = QSqlDatabase() )
[3]explicit QSqlQuery ( QSqlDatabase db )
[4]QSqlQuery ( const QSqlQuery & other )
*/

HB_FUNC_STATIC( QSQLQUERY_NEW )
{
  if( ISNUMPAR(1) && ISQSQLRESULT(1) )
  {
    QSqlQuery_new1();
  }
  else if( ISBETWEEN(1,2) && ISOPTCHAR(1) && (ISQSQLDATABASE(2)||ISNIL(2)) )
  {
    QSqlQuery_new2();
  }
  else if( ISNUMPAR(1) && ISQSQLDATABASE(1) )
  {
    QSqlQuery_new3();
  }
  else if( ISNUMPAR(1) && ISQSQLQUERY(1) )
  {
    QSqlQuery_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void addBindValue ( const QVariant & val, QSql::ParamType paramType = QSql::In )
$method=|void|addBindValue|const QVariant &,QSql::ParamType=QSql::In

$prototypeV2=int at() const

$prototype=void bindValue ( const QString & placeholder, const QVariant & val, QSql::ParamType paramType = QSql::In )
$internalMethod=|void|bindValue,bindValue1|const QString &,const QVariant &,QSql::ParamType=QSql::In

$prototype=void bindValue ( int pos, const QVariant & val, QSql::ParamType paramType = QSql::In )
$internalMethod=|void|bindValue,bindValue2|int,const QVariant &,QSql::ParamType=QSql::In

/*
[1]void bindValue ( const QString & placeholder, const QVariant & val, QSql::ParamType paramType = QSql::In )
[2]void bindValue ( int pos, const QVariant & val, QSql::ParamType paramType = QSql::In )
*/

HB_FUNC_STATIC( QSQLQUERY_BINDVALUE )
{
  if( ISBETWEEN(2,3) && ISCHAR(1) && ISQVARIANT(2) && ISOPTNUM(3) )
  {
    QSqlQuery_bindValue1();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISQVARIANT(2) && ISOPTNUM(3) )
  {
    QSqlQuery_bindValue2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=bindValue

$prototype=QVariant boundValue ( const QString & placeholder ) const
$internalMethod=|QVariant|boundValue,boundValue1|const QString &

$prototype=QVariant boundValue ( int pos ) const
$internalMethod=|QVariant|boundValue,boundValue2|int

/*
[1]QVariant boundValue ( const QString & placeholder ) const
[2]QVariant boundValue ( int pos ) const
*/

HB_FUNC_STATIC( QSQLQUERY_BOUNDVALUE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSqlQuery_boundValue1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSqlQuery_boundValue2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=boundValue

$prototypeV2=void clear()

$prototype=const QSqlDriver * driver () const
$method=|const QSqlDriver *|driver|

$prototype=bool exec ( const QString & query )
$internalMethod=|bool|exec,exec1|const QString &

$prototype=bool exec ()
$internalMethod=|bool|exec,exec2|

/*
[1]bool exec ( const QString & query )
[2]bool exec ()
*/

HB_FUNC_STATIC( QSQLQUERY_EXEC )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSqlQuery_exec1();
  }
  else if( ISNUMPAR(0) )
  {
    QSqlQuery_exec2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=exec

$prototype=bool execBatch ( BatchExecutionMode mode = ValuesAsRows )
$method=|bool|execBatch|QSqlQuery::BatchExecutionMode=QSqlQuery::ValuesAsRows

$prototypeV2=QString executedQuery() const

$prototypeV2=void finish()

$prototypeV2=bool first()

$prototypeV2=bool isActive() const

$prototypeV2=bool isForwardOnly() const

$prototype=void setForwardOnly ( bool forward )
$method=|void|setForwardOnly|bool

$prototype=bool isNull ( int field ) const
$internalMethod=|bool|isNull,isNull1|int

$prototype=bool isNull(const QString &name) const
%% TODO: check Qt version
$internalMethod=5,3,0|bool|isNull,isNull2|const QString &

/*
[1]bool isNull ( int field ) const
[2]bool isNull(const QString &name) const
*/

HB_FUNC_STATIC( QSQLQUERY_ISNULL )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSqlQuery_isNull1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSqlQuery_isNull2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=isNull

$prototypeV2=bool isSelect() const

$prototypeV2=bool isValid() const

$prototypeV2=bool last()

$prototypeV2=QSqlError lastError() const

$prototypeV2=QVariant lastInsertId() const

$prototypeV2=QString lastQuery() const

$prototypeV2=bool next()

$prototypeV2=bool nextResult()

$prototypeV2=int numRowsAffected() const

$prototypeV2=QSql::NumericalPrecisionPolicy numericalPrecisionPolicy() const

$prototype=void setNumericalPrecisionPolicy ( QSql::NumericalPrecisionPolicy precisionPolicy )
$method=|void|setNumericalPrecisionPolicy|QSql::NumericalPrecisionPolicy

$prototype=bool prepare ( const QString & query )
$method=|bool|prepare|const QString &

$prototypeV2=bool previous()

$prototypeV2=QSqlRecord record() const

$prototype=const QSqlResult * result () const
$method=|const QSqlResult *|result|

$prototype=bool seek ( int index, bool relative = false )
$method=|bool|seek|int,bool=false

$prototypeV2=int size() const

$prototype=QVariant value ( int index ) const
$internalMethod=|QVariant|value,value1|int

$prototype=QVariant value(const QString& name) const
$internalMethod=|QVariant|value,value2|const QString &

/*
[1]QVariant value ( int index ) const
[2]QVariant value(const QString& name) const
*/

HB_FUNC_STATIC( QSQLQUERY_VALUE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSqlQuery_value1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSqlQuery_value2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=value

$extraMethods

#pragma ENDDUMP
