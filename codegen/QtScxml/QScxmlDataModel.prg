%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtScxml
$added=5,7,0

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
$constructor=|new|QObject *=nullptr

$prototype=explicit QScxmlDataModel(QScxmlDataModelPrivate &dd, QObject *parent = nullptr) [protected]

$deleteMethod

%%
%% Q_PROPERTY(QScxmlStateMachine *stateMachine READ stateMachine WRITE setStateMachine NOTIFY stateMachineChanged)
%%

$prototype=QScxmlStateMachine *stateMachine() const
$method=|QScxmlStateMachine *|stateMachine|

$prototype=void setStateMachine(QScxmlStateMachine *stateMachine)
$method=|void|setStateMachine|QScxmlStateMachine *

%%
%%
%%

$prototype=Q_INVOKABLE virtual bool setup(const QVariantMap &initialDataValues) = 0

$prototype=virtual QString evaluateToString(QScxmlExecutableContent::EvaluatorId id, bool *ok) = 0
$virtualMethod=|QString|evaluateToString|QScxmlExecutableContent::EvaluatorId,bool *

$prototype=virtual bool evaluateToBool(QScxmlExecutableContent::EvaluatorId id, bool *ok) = 0
$virtualMethod=|bool|evaluateToBool|QScxmlExecutableContent::EvaluatorId,bool *

$prototype=virtual QVariant evaluateToVariant(QScxmlExecutableContent::EvaluatorId id, bool *ok) = 0
$virtualMethod=|QVariant|evaluateToVariant|QScxmlExecutableContent::EvaluatorId,bool *

$prototype=virtual void evaluateToVoid(QScxmlExecutableContent::EvaluatorId id, bool *ok) = 0
$virtualMethod=|void|evaluateToVoid|QScxmlExecutableContent::EvaluatorId,bool *

$prototype=virtual void evaluateAssignment(QScxmlExecutableContent::EvaluatorId id, bool *ok) = 0
$virtualMethod=|void|evaluateAssignment|QScxmlExecutableContent::EvaluatorId,bool *

$prototype=virtual void evaluateInitialization(QScxmlExecutableContent::EvaluatorId id, bool *ok) = 0
$virtualMethod=|void|evaluateInitialization|QScxmlExecutableContent::EvaluatorId,bool *

$prototype=virtual void evaluateForeach(QScxmlExecutableContent::EvaluatorId id, bool *ok, ForeachLoopBody *body) = 0

$prototype=virtual void setScxmlEvent(const QScxmlEvent &event) = 0
$virtualMethod=|void|setScxmlEvent|const QScxmlEvent &

$prototype=virtual QVariant scxmlProperty(const QString &name) const = 0
$virtualMethod=|QVariant|scxmlProperty|const QString &

$prototype=virtual bool hasScxmlProperty(const QString &name) const = 0
$virtualMethod=|bool|hasScxmlProperty|const QString &

$prototype=virtual bool setScxmlProperty(const QString &name, const QVariant &value, const QString &context) = 0
$virtualMethod=|bool|setScxmlProperty|const QString &,const QVariant &,const QString &

%%
%% SIGNALS
%%

$prototype=void stateMachineChanged(QScxmlStateMachine *stateMachine)
$signalMethod=|void|stateMachineChanged|QScxmlStateMachine *

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
