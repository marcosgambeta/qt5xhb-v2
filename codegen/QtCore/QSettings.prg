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

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QStringList>

$prototype=QSettings ( const QString & organization, const QString & application = QString(), QObject * parent = nullptr )
$internalConstructor=|new1|const QString &,const QString &=QString(),QObject *=nullptr

$prototype=QSettings ( Scope scope, const QString & organization, const QString & application = QString(), QObject * parent = nullptr )
$internalConstructor=|new2|QSettings::Scope,const QString &,const QString &=QString(),QObject *=nullptr

$prototype=QSettings ( Format format, Scope scope, const QString & organization, const QString & application = QString(), QObject * parent = nullptr )
$internalConstructor=|new3|QSettings::Format,QSettings::Scope,const QString &,const QString &=QString(),QObject *=nullptr

$prototype=QSettings ( const QString & fileName, Format format, QObject * parent = nullptr )
$internalConstructor=|new4|const QString &,QSettings::Format,QObject *=nullptr

$prototype=QSettings ( QObject * parent = nullptr )
$internalConstructor=|new5|QObject *=nullptr

/*
[1]QSettings ( const QString & organization, const QString & application = QString(), QObject * parent = nullptr )
[2]QSettings ( Scope scope, const QString & organization, const QString & application = QString(), QObject * parent = nullptr )
[3]QSettings ( Format format, Scope scope, const QString & organization, const QString & application = QString(), QObject * parent = nullptr )
[4]QSettings ( const QString & fileName, Format format, QObject * parent = nullptr )
[5]QSettings ( QObject * parent = nullptr )
*/

HB_FUNC_STATIC( QSETTINGS_NEW )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTCHAR(2) && ISOPTQOBJECT(3) )
  {
    QSettings_new1();
  }
  else if( ISBETWEEN(2,4) && ISNUM(1) && ISCHAR(2) && ISOPTCHAR(3) && ISOPTQOBJECT(4) )
  {
    QSettings_new2();
  }
  else if( ISBETWEEN(3,5) && ISNUM(1) && ISNUM(2) && ISCHAR(3) && ISOPTCHAR(4) && ISOPTQOBJECT(5) )
  {
    QSettings_new3();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && ISOPTQOBJECT(3) )
  {
    QSettings_new4();
  }
  else if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QSettings_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QStringList allKeys() const

$prototypeV2=QString applicationName() const

$prototypeV2=void beginGroup( const QString & prefix )

$prototypeV2=int beginReadArray( const QString & prefix )

$prototypeV2=void beginWriteArray( const QString & prefix, int size = -1 )

$prototypeV2=QStringList childGroups() const

$prototypeV2=QStringList childKeys() const

$prototypeV2=void clear()

$prototypeV2=bool contains( const QString & key ) const

$prototypeV2=void endArray()

$prototypeV2=void endGroup()

$prototypeV2=bool fallbacksEnabled() const

$prototypeV2=QString fileName() const

$prototypeV2=QSettings::Format format() const

$prototypeV2=QString group() const

$prototypeV2=QTextCodec * iniCodec() const

$prototypeV2=bool isWritable() const

$prototypeV2=QString organizationName() const

$prototypeV2=void remove( const QString & key )

$prototypeV2=QSettings::Scope scope() const

$prototypeV2=void setArrayIndex( int i )

$prototypeV2=void setFallbacksEnabled( bool b )

$prototype=void setIniCodec ( QTextCodec * codec )
$internalMethod=|void|setIniCodec,setIniCodec1|QTextCodec *

$prototype=void setIniCodec ( const char * codecName )
$internalMethod=|void|setIniCodec,setIniCodec2|const char *

/*
[1]void setIniCodec ( QTextCodec * codec )
[2]void setIniCodec ( const char * codecName )
*/

HB_FUNC_STATIC( QSETTINGS_SETINICODEC )
{
  if( ISNUMPAR(1) && ISQTEXTCODEC(1) )
  {
    QSettings_setIniCodec1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSettings_setIniCodec2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setIniCodec

$prototypeV2=void setValue( const QString & key, const QVariant & value )

$prototypeV2=QSettings::Status status() const

$prototypeV2=void sync()

$prototypeV2=QVariant value( const QString & key, const QVariant & defaultValue = QVariant() ) const

$prototypeV2=static QSettings::Format defaultFormat()

$prototypeV2=static void setDefaultFormat( QSettings::Format format )

$prototypeV2=static void setPath( QSettings::Format format, QSettings::Scope scope, const QString & path )

#pragma ENDDUMP
