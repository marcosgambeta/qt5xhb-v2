%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

#include <QUrl>

$deleteMethod

$prototype=QModelIndex indexOf ( const QUrl & link )
$method=|QModelIndex|indexOf|const QUrl &

%%
%% SIGNALS
%%

$prototype=void linkActivated( const QUrl & link )
$signalMethod=|void|linkActivated|const QUrl &

#pragma ENDDUMP
