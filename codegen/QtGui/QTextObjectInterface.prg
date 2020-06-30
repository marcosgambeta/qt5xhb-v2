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

$prototypeV2=virtual QSizeF intrinsicSize( QTextDocument * doc, int posInDocument, const QTextFormat & format ) = 0

$prototypeV2=virtual void drawObject( QPainter * painter, const QRectF & rect, QTextDocument * doc, int posInDocument, const QTextFormat & format ) = 0

$extraMethods

#pragma ENDDUMP
