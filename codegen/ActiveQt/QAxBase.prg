%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=ActiveQt

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <ActiveQt/QAxObject>
#include <QtCore/QStringList>

$deleteMethod

$prototype=QVariant asVariant () const
$method=|QVariant|asVariant|

$prototype=virtual void clear ()
$virtualMethod=|void|clear|

$prototype=QString control () const
$method=|QString|control|

$prototype=void disableClassInfo ()
$method=|void|disableClassInfo|

$prototype=void disableEventSink ()
$method=|void|disableEventSink|

$prototype=void disableMetaObject ()
$method=|void|disableMetaObject|

$prototype=QVariant dynamicCall ( const char * function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
$internalMethod=|QVariant|dynamicCall,dynamicCall1|const char *,const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant()

$prototype=QVariant dynamicCall ( const char * function, QList<QVariant> & vars )
$internalMethod=|QVariant|dynamicCall,dynamicCall2|const char *,QList<QVariant> &

/*
[1]QVariant dynamicCall ( const char * function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
[2]QVariant dynamicCall ( const char * function, QList<QVariant> & vars )
*/

HB_FUNC_STATIC( QAXBASE_DYNAMICCALL )
{
  if( ISBETWEEN(1,9) && ISCHAR(1) && (ISQVARIANT(2)||ISNIL(2)) && (ISQVARIANT(3)||ISNIL(3)) && (ISQVARIANT(4)||ISNIL(4)) && (ISQVARIANT(5)||ISNIL(5)) && (ISQVARIANT(6)||ISNIL(6)) && (ISQVARIANT(7)||ISNIL(7)) && (ISQVARIANT(8)||ISNIL(8)) && (ISQVARIANT(9)||ISNIL(9)) )
  {
    QAxBase_dynamicCall1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QAxBase_dynamicCall2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=dynamicCall

$prototype=QString generateDocumentation ()
$method=|QString|generateDocumentation|

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=virtual bool propertyWritable ( const char * prop ) const
$virtualMethod=|bool|propertyWritable|const char *

$prototype=QAxObject * querySubObject ( const char * name, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
$internalMethod=|QAxObject *|querySubObject,querySubObject1|const char *,const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant()

$prototype=QAxObject * querySubObject ( const char * name, QList<QVariant> & vars )
$internalMethod=|QAxObject *|querySubObject,querySubObject2|const char *,QList<QVariant> &

/*
[1]QAxObject * querySubObject ( const char * name, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
[2]QAxObject * querySubObject ( const char * name, QList<QVariant> & vars )
*/

HB_FUNC_STATIC( QAXBASE_QUERYSUBOBJECT )
{
  if( ISBETWEEN(1,9) && ISCHAR(1) && (ISQVARIANT(2)||ISNIL(2)) && (ISQVARIANT(3)||ISNIL(3)) && (ISQVARIANT(4)||ISNIL(4)) && (ISQVARIANT(5)||ISNIL(5)) && (ISQVARIANT(6)||ISNIL(6)) && (ISQVARIANT(7)||ISNIL(7)) && (ISQVARIANT(8)||ISNIL(8)) && (ISQVARIANT(9)||ISNIL(9)) )
  {
    QAxBase_querySubObject1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QAxBase_querySubObject2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=querySubObject

$prototype=bool setControl ( const QString & )
$method=|bool|setControl|const QString &

$prototype=virtual void setPropertyWritable ( const char * prop, bool ok )
$virtualMethod=|void|setPropertyWritable|const char *,bool

$prototype=QStringList verbs () const
$method=|QStringList|verbs|

$prototype=unsigned long QAxBase::classContext() const
$method=5,13,0|unsigned long|classContext|

$prototype=void QAxBase::setClassContext(unsigned long classContext)
$method=5,13,0|void|setClassContext|unsigned long

$extraMethods

%%
%% SIGNALS
%%

$prototype=void exception( int code, const QString & source, const QString & desc, const QString & help )
%% TODO: $signalMethod=|void|exception|int,const QString &,const QString &,const QString &

$prototype=void propertyChanged( const QString & name )
%% TODO: $signalMethod=|void|propertyChanged|const QString &

$prototype=void signal( const QString & name, int argc, void * argv )
%% TODO: $signalMethod=|void|signal|const QString &,int,void *

#pragma ENDDUMP
