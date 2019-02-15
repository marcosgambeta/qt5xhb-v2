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

$prototype=explicit QScxmlCppDataModel(QObject *parent = nullptr)

$deleteMethod

$prototype=Q_INVOKABLE bool setup(const QVariantMap &initialDataValues) override

$prototype=void evaluateAssignment(QScxmlExecutableContent::EvaluatorId id, bool *ok) override

$prototype=void evaluateInitialization(QScxmlExecutableContent::EvaluatorId id, bool *ok) override

$prototype=void evaluateForeach(QScxmlExecutableContent::EvaluatorId id, bool *ok, ForeachLoopBody *body) override

$prototype=void setScxmlEvent(const QScxmlEvent &scxmlEvent) override final

$prototype=const QScxmlEvent &scxmlEvent() const

$prototype=QVariant scxmlProperty(const QString &name) const override

$prototype=bool hasScxmlProperty(const QString &name) const override

$prototype=bool setScxmlProperty(const QString &name, const QVariant &value, const QString &context) override

$prototype=bool inState(const QString &stateName) const

#pragma ENDDUMP
