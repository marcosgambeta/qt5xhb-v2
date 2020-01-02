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

$beginClassFrom=QScxmlDataModel

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QScxmlCppDataModel(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototype=Q_INVOKABLE bool setup(const QVariantMap &initialDataValues) override

$prototype=void evaluateAssignment(QScxmlExecutableContent::EvaluatorId id, bool *ok) override
$method=|void|evaluateAssignment|QScxmlExecutableContent::EvaluatorId,bool *

$prototype=void evaluateInitialization(QScxmlExecutableContent::EvaluatorId id, bool *ok) override
$method=|void|evaluateInitialization|QScxmlExecutableContent::EvaluatorId,bool *

$prototype=void evaluateForeach(QScxmlExecutableContent::EvaluatorId id, bool *ok, ForeachLoopBody *body) override

$prototype=void setScxmlEvent(const QScxmlEvent &scxmlEvent) override final
$method=|void|setScxmlEvent|const QScxmlEvent &

$prototype=const QScxmlEvent &scxmlEvent() const
$method=|const QScxmlEvent &|scxmlEvent|

$prototype=QVariant scxmlProperty(const QString &name) const override
$method=|QVariant|scxmlProperty|const QString &

$prototype=bool hasScxmlProperty(const QString &name) const override
$method=|bool|hasScxmlProperty|const QString &

$prototype=bool setScxmlProperty(const QString &name, const QVariant &value, const QString &context) override
$method=|bool|setScxmlProperty|const QString &,const QVariant &,const QString &

$prototype=bool inState(const QString &stateName) const
$method=|bool|inState|const QString &

#pragma ENDDUMP
