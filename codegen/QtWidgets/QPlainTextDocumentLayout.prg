%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractTextDocumentLayout

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QPlainTextDocumentLayout ( QTextDocument * document )
$constructor=|new|QTextDocument *

$deleteMethod

$prototypeV2=int cursorWidth() const

$prototype=void ensureBlockLayout ( const QTextBlock & block ) const
$method=|void|ensureBlockLayout|const QTextBlock &

$prototypeV2=void requestUpdate()

$prototype=void setCursorWidth ( int width )
$method=|void|setCursorWidth|int

$prototype=virtual QRectF blockBoundingRect ( const QTextBlock & block ) const
$virtualMethod=|QRectF|blockBoundingRect|const QTextBlock &

$prototypeV2=virtual QSizeF documentSize() const

$prototype=virtual QRectF frameBoundingRect ( QTextFrame * ) const
$virtualMethod=|QRectF|frameBoundingRect|QTextFrame *

$prototype=virtual int hitTest ( const QPointF &, Qt::HitTestAccuracy ) const
$virtualMethod=|int|hitTest|const QPointF &,Qt::HitTestAccuracy

$prototypeV2=virtual int pageCount() const

#pragma ENDDUMP
