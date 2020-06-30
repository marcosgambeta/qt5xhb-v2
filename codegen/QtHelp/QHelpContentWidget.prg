%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtHelp

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QTreeView

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QUrl>

$deleteMethod

$prototypeV2=QModelIndex indexOf( const QUrl & link )

%%
%% SIGNALS
%%

$prototype=void linkActivated( const QUrl & link )
$signalMethod=|void|linkActivated|const QUrl &

#pragma ENDDUMP
