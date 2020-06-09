%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore
$added=5,3,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QSignalBlocker(QObject *o) Q_DECL_NOTHROW
$constructor=|new|QObject *

$prototype=explicit QSignalBlocker(QObject &o) Q_DECL_NOTHROW
%% TODO: check

%% #ifdef Q_COMPILER_RVALUE_REFS
%%     inline QSignalBlocker(QSignalBlocker &&other) Q_DECL_NOTHROW;
%%     inline QSignalBlocker &operator=(QSignalBlocker &&other) Q_DECL_NOTHROW;
%% #endif

/*
[1]explicit QSignalBlocker(QObject *o) Q_DECL_NOTHROW
[2]explicit QSignalBlocker(QObject &o) Q_DECL_NOTHROW
*/

$prototype=~QSignalBlocker()
$deleteMethod

$prototypeV2=void reblock() Q_DECL_NOTHROW

$prototypeV2=void unblock() Q_DECL_NOTHROW

$extraMethods

#pragma ENDDUMP
