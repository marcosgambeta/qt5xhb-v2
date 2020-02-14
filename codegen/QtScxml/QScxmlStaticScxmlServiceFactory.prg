%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtScxml
$added=5,8,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QScxmlInvokableServiceFactory

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QScxmlStaticScxmlServiceFactory(const QMetaObject *metaObject, const QScxmlExecutableContent::InvokeInfo &invokeInfo, const QVector<QScxmlExecutableContent::StringId> &nameList, const QVector<QScxmlExecutableContent::ParameterInfo> &parameters, QObject *parent = nullptr)

$deleteMethod

$prototype=QScxmlInvokableService *invoke(QScxmlStateMachine *parentStateMachine) override
$method=|QScxmlInvokableService *|invoke|QScxmlStateMachine *

#pragma ENDDUMP
