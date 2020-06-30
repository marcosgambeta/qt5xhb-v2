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

$prototypeV2=virtual void selection( int selectionIndex, int * startOffset, int * endOffset ) const = 0

$prototypeV2=virtual int selectionCount() const = 0

$prototypeV2=virtual void addSelection( int startOffset, int endOffset ) = 0

$prototypeV2=virtual void removeSelection( int selectionIndex ) = 0

$prototypeV2=virtual void setSelection( int selectionIndex, int startOffset, int endOffset ) = 0

$prototypeV2=virtual int cursorPosition() const = 0

$prototypeV2=virtual void setCursorPosition( int position ) = 0

$prototypeV2=virtual QString text( int startOffset, int endOffset ) const = 0

$prototypeV2=virtual int characterCount() const = 0

$prototypeV2=virtual QRect characterRect( int offset ) const = 0

$prototypeV2=virtual int offsetAtPoint( const QPoint & point ) const = 0

$prototypeV2=virtual void scrollToSubstring( int startIndex, int endIndex ) = 0

$prototypeV2=virtual QString attributes( int offset, int * startOffset, int * endOffset ) const = 0

$extraMethods

#pragma ENDDUMP
