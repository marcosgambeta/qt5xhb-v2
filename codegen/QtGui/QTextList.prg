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

$beginClassFrom=QTextBlockGroup

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTextList(QTextDocument *doc)
$constructor=|new|QTextDocument *

$deleteMethod

$prototypeV2=int count() const

$prototypeV2=bool isEmpty() const

$prototypeV2=QTextBlock item( int i ) const

$prototypeV2=int itemNumber( const QTextBlock & ) const

$prototypeV2=QString itemText( const QTextBlock & ) const

$prototypeV2=void removeItem( int i )

$prototypeV2=void remove( const QTextBlock & )

$prototypeV2=void add( const QTextBlock & block )

$prototypeV2=void setFormat( const QTextListFormat & format )

$prototypeV2=QTextListFormat format() const

#pragma ENDDUMP
