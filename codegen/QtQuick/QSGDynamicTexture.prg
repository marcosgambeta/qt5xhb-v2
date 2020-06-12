%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQuick

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QSGTexture

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototypeV2=virtual bool updateTexture() = 0

#pragma ENDDUMP
