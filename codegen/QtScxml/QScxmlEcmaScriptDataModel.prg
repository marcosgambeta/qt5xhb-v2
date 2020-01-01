%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtScxml
$added=5,7,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QScxmlDataModel

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QScxmlEcmaScriptDataModel(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototype=Q_INVOKABLE bool setup(const QVariantMap &initialDataValues) override

$prototype=QString evaluateToString(QScxmlExecutableContent::EvaluatorId id, bool *ok) override final
$method=|QString|evaluateToString|QScxmlExecutableContent::EvaluatorId,bool *

$prototype=bool evaluateToBool(QScxmlExecutableContent::EvaluatorId id, bool *ok) override final
$method=|bool|evaluateToBool|QScxmlExecutableContent::EvaluatorId,bool *

$prototype=QVariant evaluateToVariant(QScxmlExecutableContent::EvaluatorId id, bool *ok) override final
$method=|QVariant|evaluateToVariant|QScxmlExecutableContent::EvaluatorId,bool *

$prototype=void evaluateToVoid(QScxmlExecutableContent::EvaluatorId id, bool *ok) override final
$method=|void|evaluateToVoid|QScxmlExecutableContent::EvaluatorId,bool *

$prototype=void evaluateAssignment(QScxmlExecutableContent::EvaluatorId id, bool *ok) override final
$method=|void|evaluateAssignment|QScxmlExecutableContent::EvaluatorId,bool *

$prototype=void evaluateInitialization(QScxmlExecutableContent::EvaluatorId id, bool *ok) override final
$method=|void|evaluateInitialization|QScxmlExecutableContent::EvaluatorId,bool *

$prototype=void evaluateForeach(QScxmlExecutableContent::EvaluatorId id, bool *ok, ForeachLoopBody *body) override final

$prototype=void setScxmlEvent(const QScxmlEvent &event) override
$method=|void|setScxmlEvent|const QScxmlEvent &

$prototype=QVariant scxmlProperty(const QString &name) const override
$method=|QVariant|scxmlProperty|const QString &

$prototype=bool hasScxmlProperty(const QString &name) const override
$method=|bool|hasScxmlProperty|const QString &

$prototype=bool setScxmlProperty(const QString &name, const QVariant &value, const QString &context) override
$method=|bool|setScxmlProperty|const QString &,const QVariant &,const QString &

#pragma ENDDUMP
