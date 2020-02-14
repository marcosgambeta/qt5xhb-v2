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

$beginClassFrom=Q3DInputHandler

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit QTouch3DInputHandler(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=virtual ~QTouch3DInputHandler()
$deleteMethod

$prototype=virtual void touchEvent(QTouchEvent *event)
$virtualMethod=|void|touchEvent|QTouchEvent *

#pragma ENDDUMP
