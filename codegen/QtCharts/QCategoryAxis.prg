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

$prototypeV2=qreal startValue( const QString & categoryLabel = QString() ) const

$prototypeV2=void setStartValue( qreal min )

%%
%% Q_PROPERTY(QStringList categoriesLabels READ categoriesLabels)
%%

$prototypeV2=QStringList categoriesLabels()

%%
%% Q_PROPERTY(int count READ count)
%%

$prototypeV2=int count() const

%%
%% Q_PROPERTY(AxisLabelsPosition labelsPosition READ labelsPosition WRITE setLabelsPosition NOTIFY labelsPositionChanged)
%%

$prototypeV2=QCategoryAxis::AxisLabelsPosition labelsPosition() const

$prototypeV2=void setLabelsPosition( QCategoryAxis::AxisLabelsPosition position )

%%
%%
%%

$prototypeV2=QAbstractAxis::AxisType type() const

$prototypeV2=void append( const QString & label, qreal categoryEndValue )

$prototypeV2=void remove( const QString & label )

$prototypeV2=void replaceLabel( const QString & oldLabel, const QString & newLabel )

$prototypeV2=qreal endValue( const QString & categoryLabel ) const

%%
%% SIGNALS
%%

$prototype=void categoriesChanged()
$signalMethod=|void|categoriesChanged|

$prototype=void labelsPositionChanged( QCategoryAxis::AxisLabelsPosition position )
$signalMethod=|void|labelsPositionChanged|QCategoryAxis::AxisLabelsPosition

#pragma ENDDUMP
