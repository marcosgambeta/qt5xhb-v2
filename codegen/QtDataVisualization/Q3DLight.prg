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

$beginClassFrom=Q3DObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit Q3DLight(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=virtual ~Q3DLight()
$deleteMethod

%%
%% Q_PROPERTY(bool autoPosition READ isAutoPosition WRITE setAutoPosition NOTIFY autoPositionChanged REVISION 1)
%%

$prototypeV2=5,9,0|void setAutoPosition( bool enabled )

$prototypeV2=5,9,0|bool isAutoPosition()

%%
%%
%%

%%
%% SIGNALS
%%

$prototype=void autoPositionChanged( bool autoPosition )
$signalMethod=5,9,0|void|autoPositionChanged|bool

#pragma ENDDUMP
