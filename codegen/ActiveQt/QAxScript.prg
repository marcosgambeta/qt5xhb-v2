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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QStringList>

$prototype=QAxScript ( const QString & name, QAxScriptManager * manager )
$constructor=|new|const QString &,QAxScriptManager *

$deleteMethod

$prototype=QVariant call ( const QString & function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
$internalMethod=|QVariant|call,call1|const QString &,const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant()

$prototype=QVariant call ( const QString & function, QList<QVariant> & arguments )
$internalMethod=|QVariant|call,call2|const QString &,QList<QVariant> &

/*
[1]QVariant call ( const QString & function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
[2]QVariant call ( const QString & function, QList<QVariant> & arguments )
*/

HB_FUNC_STATIC( QAXSCRIPT_CALL )
{
  if( ISBETWEEN(1,9) && ISCHAR(1) && (ISQVARIANT(2)||ISNIL(2)) && (ISQVARIANT(3)||ISNIL(3)) && (ISQVARIANT(4)||ISNIL(4)) && (ISQVARIANT(5)||ISNIL(5)) && (ISQVARIANT(6)||ISNIL(6)) && (ISQVARIANT(7)||ISNIL(7)) && (ISQVARIANT(8)||ISNIL(8)) && (ISQVARIANT(9)||ISNIL(9)) )
  {
    QAxScript_call1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QAxScript_call2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=call

$prototypeV2=QStringList functions( QAxScript::FunctionFlags flags = QAxScript::FunctionNames ) const

$prototypeV2=bool load( const QString & code, const QString & language = QString() )

$prototypeV2=QString scriptCode() const

$prototypeV2=QAxScriptEngine * scriptEngine() const

$prototypeV2=QString scriptName() const

%%
%% SIGNALS
%%

$prototype=void entered()
$signalMethod=|void|entered|

$prototype=void error( int code, const QString & description, int sourcePosition, const QString & sourceText )
$signalMethod=|void|error|int,const QString &,int,const QString &

$prototype=void finished()
$signalMethod=|void|finished,finished1,QOverload<>|

$prototype=void finished( const QVariant & result )
$signalMethod=|void|finished,finished2,QOverload<const QVariant &>|const QVariant &

$prototype=void finished( int code, const QString & source, const QString & description, const QString & help )
$signalMethod=|void|finished,finished3,QOverload<int COMMA const QString & COMMA const QString & COMMA const QString &>|int,const QString &,const QString &,const QString &

$prototype=void stateChanged( int state )
$signalMethod=|void|stateChanged|int

#pragma ENDDUMP
