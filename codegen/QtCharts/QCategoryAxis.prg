%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts
$added=5,7,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QValueAxis

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtCharts;

$prototype=explicit QCategoryAxis(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=QCategoryAxis(QCategoryAxisPrivate &d, QObject *parent = nullptr) [protected]

$prototype=~QCategoryAxis()
$deleteMethod

%%
%% Q_PROPERTY(qreal startValue READ startValue WRITE setStartValue)
%%

$prototype=qreal startValue(const QString &categoryLabel = QString()) const
$method=|qreal|startValue|const QString &=QString()

$prototype=void setStartValue(qreal min)
$method=|void|setStartValue|qreal

%%
%% Q_PROPERTY(QStringList categoriesLabels READ categoriesLabels)
%%

$prototype=QStringList categoriesLabels()
$method=|QStringList|categoriesLabels|

%%
%% Q_PROPERTY(int count READ count)
%%

$prototype=int count() const
$method=|int|count|

%%
%% Q_PROPERTY(AxisLabelsPosition labelsPosition READ labelsPosition WRITE setLabelsPosition NOTIFY labelsPositionChanged)
%%

$prototype=QCategoryAxis::AxisLabelsPosition labelsPosition() const
$method=|QCategoryAxis::AxisLabelsPosition|labelsPosition|

$prototype=void setLabelsPosition(QCategoryAxis::AxisLabelsPosition position)
$method=|void|setLabelsPosition|QCategoryAxis::AxisLabelsPosition

%%
%%
%%

$prototype=AxisType type() const
$method=|QAbstractAxis::AxisType|type|

$prototype=void append(const QString &label, qreal categoryEndValue)
$method=|void|append|const QString &,qreal

$prototype=void remove(const QString &label)
$method=|void|remove|const QString &

$prototype=void replaceLabel(const QString &oldLabel, const QString &newLabel)
$method=|void|replaceLabel|const QString &,const QString &

$prototype=qreal endValue(const QString &categoryLabel) const
$method=|qreal|endValue|const QString &

%%
%% SIGNALS
%%

$prototype=void categoriesChanged()
$signalMethod=|void|categoriesChanged|

$prototype=void labelsPositionChanged( QCategoryAxis::AxisLabelsPosition position )
$signalMethod=|void|labelsPositionChanged|QCategoryAxis::AxisLabelsPosition

#pragma ENDDUMP
