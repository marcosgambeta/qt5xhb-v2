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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QScxmlDataModel(QObject *parent = nullptr)

$prototype=explicit QScxmlDataModel(QScxmlDataModelPrivate &dd, QObject *parent = nullptr) [protected]

$deleteMethod

%%
%% Q_PROPERTY(QScxmlStateMachine *stateMachine READ stateMachine WRITE setStateMachine NOTIFY stateMachineChanged)
%%

$prototype=QScxmlStateMachine *stateMachine() const

$prototype=void setStateMachine(QScxmlStateMachine *stateMachine)

%%
%%
%%

$prototype=Q_INVOKABLE virtual bool setup(const QVariantMap &initialDataValues) = 0

$prototype=virtual QString evaluateToString(QScxmlExecutableContent::EvaluatorId id, bool *ok) = 0

$prototype=virtual bool evaluateToBool(QScxmlExecutableContent::EvaluatorId id, bool *ok) = 0

$prototype=virtual QVariant evaluateToVariant(QScxmlExecutableContent::EvaluatorId id, bool *ok) = 0

$prototype=virtual void evaluateToVoid(QScxmlExecutableContent::EvaluatorId id, bool *ok) = 0

$prototype=virtual void evaluateAssignment(QScxmlExecutableContent::EvaluatorId id, bool *ok) = 0

$prototype=virtual void evaluateInitialization(QScxmlExecutableContent::EvaluatorId id, bool *ok) = 0

$prototype=virtual void evaluateForeach(QScxmlExecutableContent::EvaluatorId id, bool *ok, ForeachLoopBody *body) = 0

$prototype=virtual void setScxmlEvent(const QScxmlEvent &event) = 0

$prototype=virtual QVariant scxmlProperty(const QString &name) const = 0

$prototype=virtual bool hasScxmlProperty(const QString &name) const = 0

$prototype=virtual bool setScxmlProperty(const QString &name, const QVariant &value, const QString &context) = 0

%%
%% SIGNALS
%%

$prototype=void stateMachineChanged(QScxmlStateMachine *stateMachine)

#pragma ENDDUMP

%% TODO:
%% public:
%%     class Q_SCXML_EXPORT ForeachLoopBody
%%     {
%%         Q_DISABLE_COPY(ForeachLoopBody)
%%     public:
%%         ForeachLoopBody();
%%         virtual ~ForeachLoopBody();
%%         virtual void run(bool *ok) = 0;
%%     };
