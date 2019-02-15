%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtScxml

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

$prototype=QScxmlDynamicScxmlServiceFactory(const QScxmlExecutableContent::InvokeInfo &invokeInfo, const QVector<QScxmlExecutableContent::StringId> &names, const QVector<QScxmlExecutableContent::ParameterInfo> &parameters, QObject *parent = nullptr)

$deleteMethod

$prototype=QScxmlInvokableService *invoke(QScxmlStateMachine *parentStateMachine) override

#pragma ENDDUMP
