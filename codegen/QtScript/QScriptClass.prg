%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtScript

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtScript/QScriptEngine>

$prototype=QScriptClass(QScriptEngine * engine)
$constructor=|new|QScriptEngine *

$deleteMethod

$prototypeV2=QScriptEngine * engine() const

$prototype=virtual QVariant extension(Extension extension, const QVariant & argument = QVariant())
$virtualMethod=|QVariant|extension|QScriptClass::Extension,const QVariant &=QVariant()

$prototypeV2=virtual QString name() const

$prototype=virtual QScriptClassPropertyIterator * newIterator(const QScriptValue & object)
$virtualMethod=|QScriptClassPropertyIterator *|newIterator|const QScriptValue &

$prototype=virtual QScriptValue property(const QScriptValue & object, const QScriptString & name, uint id)
$virtualMethod=|QScriptValue|property|const QScriptValue &,const QScriptString &,uint

$prototype=virtual QScriptValue::PropertyFlags propertyFlags(const QScriptValue & object, const QScriptString & name, uint id)
$virtualMethod=|QScriptValue::PropertyFlags|propertyFlags|const QScriptValue &,const QScriptString &,uint

$prototypeV2=virtual QScriptValue prototype() const

$prototype=virtual QueryFlags queryProperty(const QScriptValue & object, const QScriptString & name, QueryFlags flags, uint * id)
%% TODO: $virtualMethod=|QScriptClass::QueryFlags|queryProperty|const QScriptValue &,const QScriptString &,QScriptClass::QueryFlags,uint *

$prototype=virtual void setProperty(QScriptValue & object, const QScriptString & name, uint id, const QScriptValue & value)
$virtualMethod=|void|setProperty|QScriptValue &,const QScriptString &,uint,const QScriptValue &

$prototype=virtual bool supportsExtension(Extension extension) const
$virtualMethod=|bool|supportsExtension|QScriptClass::Extension

$extraMethods

#pragma ENDDUMP
