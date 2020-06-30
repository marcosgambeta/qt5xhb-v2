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

$beginClassFrom=QStringListModel

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototypeV2=void createIndex( const QString & customFilterName )

$prototypeV2=QModelIndex filter( const QString & filter, const QString & wildcard = QString() )

$prototypeV2=bool isCreatingIndex() const

%%
%% SIGNALS
%%

$prototype=void indexCreated()
$signalMethod=|void|indexCreated|

$prototype=void indexCreationStarted()
$signalMethod=|void|indexCreationStarted|

#pragma ENDDUMP
