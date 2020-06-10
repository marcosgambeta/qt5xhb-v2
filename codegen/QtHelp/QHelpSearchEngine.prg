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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtHelp/QHelpSearchQueryWidget>
#include <QtHelp/QHelpSearchResultWidget>

$prototype=QHelpSearchEngine ( QHelpEngineCore * helpEngine, QObject * parent = nullptr )
$constructor=|new|QHelpEngineCore *,QObject *=nullptr

$deleteMethod

$prototypeV2=int hitCount() const

$prototype=QList<QHelpSearchQuery> query () const
$method=|QList<QHelpSearchQuery>|query|

$prototypeV2=QHelpSearchQueryWidget * queryWidget()

$prototypeV2=QHelpSearchResultWidget * resultWidget()

$prototypeV2=void cancelIndexing()

$prototypeV2=void cancelSearching()

$prototypeV2=void reindexDocumentation()

$prototype=void search ( const QList<QHelpSearchQuery> & queryList )
$method=|void|search|const QList<QHelpSearchQuery> &

%%
%% SIGNALS
%%

$prototype=void indexingFinished()
$signalMethod=|void|indexingFinished|

$prototype=void indexingStarted()
$signalMethod=|void|indexingStarted|

$prototype=void searchingFinished( int hits )
$signalMethod=|void|searchingFinished|int

$prototype=void searchingStarted()
$signalMethod=|void|searchingStarted|

#pragma ENDDUMP
