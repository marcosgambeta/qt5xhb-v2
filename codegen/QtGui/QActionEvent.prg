%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtWidgets/QAction>

$prototype=QActionEvent ( int type, QAction * action, QAction * before = nullptr )
$constructor=|new|int,QAction *,QAction *=nullptr

$deleteMethod

$prototypeV2=QAction * action() const

$prototypeV2=QAction * before() const

#pragma ENDDUMP
