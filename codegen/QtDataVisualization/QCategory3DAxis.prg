%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization
$added=5,7,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstract3DAxis

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit QCategory3DAxis(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=virtual ~QCategory3DAxis()
$deleteMethod

%%
%% Q_PROPERTY(QStringList labels READ labels WRITE setLabels NOTIFY labelsChanged)
%%

$prototypeV2=QStringList labels() const

$prototypeV2=void setLabels( const QStringList & labels )

%%
%%
%%

%%
%% SIGNALS
%%

$prototype=void labelsChanged()
$signalMethod=|void|labelsChanged|

#pragma ENDDUMP
