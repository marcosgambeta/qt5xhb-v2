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

$beginClassFrom=QListView

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=void activateCurrentItem()

$prototypeV2=void filterIndices( const QString & filter, const QString & wildcard = QString() )

%%
%% SIGNALS
%%

$prototype=void linkActivated( const QUrl & link, const QString & keyword )
$signalMethod=|void|linkActivated|const QUrl &,const QString &

#pragma ENDDUMP
