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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=virtual void deleteText( int startOffset, int endOffset ) = 0

$prototypeV2=virtual void insertText( int offset, const QString & text ) = 0

$prototypeV2=virtual void replaceText( int startOffset, int endOffset, const QString & text ) = 0

$extraMethods

#pragma ENDDUMP
