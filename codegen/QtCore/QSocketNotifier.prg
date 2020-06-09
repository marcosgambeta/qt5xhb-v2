%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSocketNotifier(qintptr socket, Type, QObject *parent = nullptr)
$constructor=|new|qintptr,QSocketNotifier::Type,QObject *=nullptr

$deleteMethod

$prototypeV2=qintptr socket() const

$prototypeV2=QSocketNotifier::Type type() const

$prototypeV2=bool isEnabled() const

$prototype=void setEnabled(bool)
$method=|void|setEnabled|bool

#pragma ENDDUMP
