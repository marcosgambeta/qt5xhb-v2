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

$prototype=QExposeEvent(const QRegion & rgn)
$constructor=|new|const QRegion &

$deleteMethod

$prototypeV2=const QRegion & region() const

#pragma ENDDUMP
