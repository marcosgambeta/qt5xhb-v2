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

$beginClassFrom=QScxmlDataModel

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QScxmlNullDataModel(QObject *parent = nullptr)

$prototype=~QScxmlNullDataModel()
$deleteMethod

$prototype=Q_INVOKABLE bool setup(const QVariantMap &initialDataValues) override

$prototype=QString evaluateToString(QScxmlExecutableContent::EvaluatorId id, bool *ok) override final

$prototype=bool evaluateToBool(QScxmlExecutableContent::EvaluatorId id, bool *ok) override final

$prototype=QVariant evaluateToVariant(QScxmlExecutableContent::EvaluatorId id, bool *ok) override final

$prototype=void evaluateToVoid(QScxmlExecutableContent::EvaluatorId id, bool *ok) override final

$prototype=void evaluateAssignment(QScxmlExecutableContent::EvaluatorId id, bool *ok) override final

$prototype=void evaluateInitialization(QScxmlExecutableContent::EvaluatorId id, bool *ok) override final

$prototype=void evaluateForeach(QScxmlExecutableContent::EvaluatorId id, bool *ok, ForeachLoopBody *body) override final

$prototype=void setScxmlEvent(const QScxmlEvent &event) override

$prototype=QVariant scxmlProperty(const QString &name) const override

$prototype=bool hasScxmlProperty(const QString &name) const override

$prototype=bool setScxmlProperty(const QString &name, const QVariant &value, const QString &context) override

#pragma ENDDUMP
