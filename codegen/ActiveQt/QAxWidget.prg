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

$beginClassFrom=QWidget,QAxBase

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <ActiveQt/QAxObject>
#include <QtCore/QStringList>

$prototype=QAxWidget ( QWidget * parent = nullptr, Qt::WindowFlags f = 0 )
$internalConstructor=|new1|QWidget *=nullptr,Qt::WindowFlags=0

$prototype=QAxWidget ( const QString & c, QWidget * parent = nullptr, Qt::WindowFlags f = 0 )
$internalConstructor=|new2|const QString &,QWidget *=nullptr,Qt::WindowFlags=0

$prototype=QAxWidget ( IUnknown * iface, QWidget * parent = nullptr, Qt::WindowFlags f = 0 )
$internalConstructor=|new3|IUnknown *,QWidget *=nullptr,Qt::WindowFlags=0

/*
[1]QAxWidget ( QWidget * parent = nullptr, Qt::WindowFlags f = 0 )
[2]QAxWidget ( const QString & c, QWidget * parent = nullptr, Qt::WindowFlags f = 0 )
[3]QAxWidget ( IUnknown * iface, QWidget * parent = nullptr, Qt::WindowFlags f = 0 )
*/

HB_FUNC_STATIC( QAXWIDGET_NEW )
{
  if( ISBETWEEN(0,2) && ISOPTQWIDGET(1) && ISOPTNUM(2) )
  {
    QAxWidget_new1();
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTQWIDGET(2) && ISOPTNUM(3) )
  {
    QAxWidget_new2();
  }
  else if( ISBETWEEN(1,3) && ISPOINTER(1) && ISOPTQWIDGET(2) && ISOPTNUM(3) )
  {
    QAxWidget_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=virtual QAxAggregated * createAggregate()

$prototypeV2=bool doVerb( const QString & verb )

$prototypeV2=virtual void clear()

$prototypeV2=virtual QSize minimumSizeHint() const

$prototypeV2=virtual QSize sizeHint() const

// QAxBase methods - begin

// m�todos da classe QAxBase, adicionados aqui, para
// resolver problemas na utiliza��o dos m�todos

$prototypeV2=QVariant asVariant() const

$prototypeV2=QString control() const

$prototypeV2=void disableClassInfo()

$prototypeV2=void disableEventSink()

$prototypeV2=void disableMetaObject()

$prototype=QVariant dynamicCall ( const char * function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
$internalMethod=|QVariant|dynamicCall,dynamicCall1|const char *,const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant()

$prototype=QVariant dynamicCall ( const char * function, QList<QVariant> & vars )
$internalMethod=|QVariant|dynamicCall,dynamicCall2|const char *,QList<QVariant> &

/*
[1]QVariant dynamicCall ( const char * function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
[2]QVariant dynamicCall ( const char * function, QList<QVariant> & vars )
*/

HB_FUNC_STATIC( QAXWIDGET_DYNAMICCALL )
{
  if( ISBETWEEN(1,9) && ISCHAR(1) && (ISQVARIANT(2)||ISNIL(2)) && (ISQVARIANT(3)||ISNIL(3)) && (ISQVARIANT(4)||ISNIL(4)) && (ISQVARIANT(5)||ISNIL(5)) && (ISQVARIANT(6)||ISNIL(6)) && (ISQVARIANT(7)||ISNIL(7)) && (ISQVARIANT(8)||ISNIL(8)) && (ISQVARIANT(9)||ISNIL(9)) )
  {
    QAxWidget_dynamicCall1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QAxWidget_dynamicCall2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=dynamicCall

$prototypeV2=QString generateDocumentation()

$prototypeV2=bool isNull() const

$prototypeV2=virtual bool propertyWritable( const char * prop ) const

$prototype=QAxObject * querySubObject ( const char * name, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
$internalMethod=|QAxObject *|querySubObject,querySubObject1|const char *,const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant()

$prototype=QAxObject * querySubObject ( const char * name, QList<QVariant> & vars )
$internalMethod=|QAxObject *|querySubObject,querySubObject2|const char *,QList<QVariant> &

/*
[1]QAxObject * querySubObject ( const char * name, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
[2]QAxObject * querySubObject ( const char * name, QList<QVariant> & vars )
*/

HB_FUNC_STATIC( QAXWIDGET_QUERYSUBOBJECT )
{
  if( ISBETWEEN(1,9) && ISCHAR(1) && (ISQVARIANT(2)||ISNIL(2)) && (ISQVARIANT(3)||ISNIL(3)) && (ISQVARIANT(4)||ISNIL(4)) && (ISQVARIANT(5)||ISNIL(5)) && (ISQVARIANT(6)||ISNIL(6)) && (ISQVARIANT(7)||ISNIL(7)) && (ISQVARIANT(8)||ISNIL(8)) && (ISQVARIANT(9)||ISNIL(9)) )
  {
    QAxWidget_querySubObject1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QAxWidget_querySubObject2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=querySubObject

$prototypeV2=bool setControl( const QString & )

$prototypeV2=virtual void setPropertyWritable( const char * prop, bool ok )

$prototypeV2=QStringList verbs() const

// QAxBase methods - end

%%
%% SIGNALS
%%

%% $prototype=void exception( int code, const QString & source, const QString & desc, const QString & help )
%% $signalMethod=|void|exception|int,const QString &,const QString &,const QString &

%% $prototype=void propertyChanged( const QString & name )
%% $signalMethod=|void|propertyChanged|const QString &

%% $prototype=void signal( const QString & name, int argc, void * argv )
%% $signalMethod=|void|signal|const QString &,int,void *

#pragma ENDDUMP
