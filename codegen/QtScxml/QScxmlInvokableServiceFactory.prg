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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QScxmlInvokableServiceFactory(const QScxmlExecutableContent::InvokeInfo &invokeInfo, const QVector<QScxmlExecutableContent::StringId> &names, const QVector<QScxmlExecutableContent::ParameterInfo> &parameters, QObject *parent = nullptr)

$prototype=QScxmlInvokableServiceFactory(QScxmlInvokableServiceFactoryPrivate &dd, QObject *parent) [protected]

$deleteMethod

%%
%% Q_PROPERTY(QScxmlExecutableContent::InvokeInfo invokeInfo READ invokeInfo CONSTANT)
%%

$prototype=const QScxmlExecutableContent::InvokeInfo &invokeInfo() const

%%
%% Q_PROPERTY(QVector<QScxmlExecutableContent::ParameterInfo> parameters READ parameters CONSTANT)
%%

$prototype=const QVector<QScxmlExecutableContent::ParameterInfo> &parameters() const

%%
%% Q_PROPERTY(QVector<QScxmlExecutableContent::StringId> names READ names CONSTANT)
%%

$prototype=const QVector<QScxmlExecutableContent::StringId> &names() const

%%
%%
%%

$prototype=virtual QScxmlInvokableService *invoke(QScxmlStateMachine *parentStateMachine) = 0

#pragma ENDDUMP
