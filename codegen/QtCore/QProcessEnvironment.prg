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

$prototype=QProcessEnvironment()
$internalConstructor=|new1|

$prototype=QProcessEnvironment(const QProcessEnvironment &other)
$internalConstructor=|new2|const QProcessEnvironment &

/*
[1]QProcessEnvironment()
[2]QProcessEnvironment(const QProcessEnvironment &other)
*/

HB_FUNC_STATIC( QPROCESSENVIRONMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QProcessEnvironment_new1();
  }
  else if( ISNUMPAR(1) && ISQPROCESSENVIRONMENT(1) )
  {
    QProcessEnvironment_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=void swap( QProcessEnvironment & other )

$prototypeV2=bool isEmpty() const

$prototypeV2=void clear()

$prototypeV2=bool contains( const QString & name ) const

$prototype=void insert(const QString &name, const QString &value)
$internalMethod=|void|insert,insert1|const QString &,const QString &

$prototype=void insert(const QProcessEnvironment &e)
$internalMethod=|void|insert,insert2|const QProcessEnvironment &

/*
[1]void insert(const QString &name, const QString &value)
[2]void insert(const QProcessEnvironment &e)
*/

HB_FUNC_STATIC( QPROCESSENVIRONMENT_INSERT )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QProcessEnvironment_insert1();
  }
  else if( ISNUMPAR(1) && ISQPROCESSENVIRONMENT(1) )
  {
    QProcessEnvironment_insert2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=insert

$prototypeV2=void remove( const QString & name )

$prototypeV2=QString value( const QString & name, const QString & defaultValue = QString() ) const

$prototypeV2=QStringList toStringList() const

$prototypeV2=QStringList keys() const

$prototypeV2=static QProcessEnvironment systemEnvironment()

$extraMethods

#pragma ENDDUMP
