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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QUrl>

$deleteMethod

$prototypeV2=QHelpContentItem * child( int row ) const

$prototypeV2=int childCount() const

$prototypeV2=int childPosition( QHelpContentItem * child ) const

$prototypeV2=QHelpContentItem * parent() const

$prototypeV2=int row() const

$prototypeV2=QString title() const

$prototypeV2=QUrl url() const

$extraMethods

#pragma ENDDUMP
