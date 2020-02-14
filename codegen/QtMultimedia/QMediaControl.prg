%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QMediaControl(QObject *parent = nullptr) [protected]

$prototype=explicit QMediaControl(QMediaControlPrivate &dd, QObject *parent = nullptr) [protected]

$prototype=~QMediaControl()
$deleteMethod

#pragma ENDDUMP
