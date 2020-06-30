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

$prototype=QCommandLineOption(const QString &name, const QString &description = QString(),const QString &valueName = QString(),const QString &defaultValue = QString())
$internalConstructor=|new1|const QString &,const QString &=QString(),const QString &=QString(),const QString &=QString()

$prototype=QCommandLineOption(const QStringList &names, const QString &description = QString(),const QString &valueName = QString(),const QString &defaultValue = QString())
$internalConstructor=|new2|const QStringList &,const QString &=QString(),const QString &=QString(),const QString &=QString()

$prototype=QCommandLineOption(const QCommandLineOption &other)
$internalConstructor=|new3|const QCommandLineOption &

/*
[1]QCommandLineOption(const QString &name, const QString &description = QString(),const QString &valueName = QString(),const QString &defaultValue = QString())
[2]QCommandLineOption(const QStringList &names, const QString &description = QString(),const QString &valueName = QString(),const QString &defaultValue = QString())
[3]QCommandLineOption(const QCommandLineOption &other)
*/

HB_FUNC_STATIC( QCOMMANDLINEOPTION_NEW )
{
  if( ISBETWEEN(1,4) && ISCHAR(1) && ISOPTCHAR(2) && ISOPTCHAR(3) && ISOPTCHAR(4) )
  {
    QCommandLineOption_new1();
  }
  else if( ISBETWEEN(1,4) && ISARRAY(1) && ISOPTCHAR(2) && ISOPTCHAR(3) && ISOPTCHAR(4) )
  {
    QCommandLineOption_new2();
  }
  else if( ISNUMPAR(1) && ISQCOMMANDLINEOPTION(1) )
  {
    QCommandLineOption_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=void swap( QCommandLineOption & other )

$prototypeV2=QStringList names() const

$prototypeV2=void setValueName( const QString & name )

$prototypeV2=QString valueName() const

$prototypeV2=void setDescription( const QString & description )

$prototypeV2=QString description() const

$prototypeV2=void setDefaultValue( const QString & defaultValue )

$prototypeV2=void setDefaultValues( const QStringList & defaultValues )

$prototypeV2=QStringList defaultValues() const

$extraMethods

#pragma ENDDUMP
