%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

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

#include <QTextBlock>

$deleteMethod

$prototype=QString anchorAt ( const QPointF & position ) const
$method=|QString|anchorAt|const QPointF &

$prototype=virtual QRectF blockBoundingRect ( const QTextBlock & block ) const = 0
$virtualMethod=|QRectF|blockBoundingRect|const QTextBlock &

$prototype=QTextDocument * document () const
$method=|QTextDocument *|document|

$prototype=virtual QSizeF documentSize () const = 0
$virtualMethod=|QSizeF|documentSize|

$prototype=virtual QRectF frameBoundingRect ( QTextFrame * frame ) const = 0
$virtualMethod=|QRectF|frameBoundingRect|QTextFrame *

$prototype=QTextObjectInterface * handlerForObject ( int objectType ) const
$method=|QTextObjectInterface *|handlerForObject|int

$prototype=virtual int hitTest ( const QPointF & point, Qt::HitTestAccuracy accuracy ) const = 0
$virtualMethod=|int|hitTest|const QPointF &,Qt::HitTestAccuracy

$prototype=virtual int pageCount () const = 0
$virtualMethod=|int|pageCount|

$prototype=QPaintDevice * paintDevice () const
$method=|QPaintDevice *|paintDevice|

$prototype=void registerHandler ( int objectType, QObject * component )
$method=|void|registerHandler|int,QObject *

$prototype=void setPaintDevice ( QPaintDevice * device )
$method=|void|setPaintDevice|QPaintDevice *

%%
%% SIGNALS
%%

$prototype=void documentSizeChanged( const QSizeF & newSize )
$signalMethod=|void|documentSizeChanged|const QSizeF &

$prototype=void pageCountChanged( int newPages )
$signalMethod=|void|pageCountChanged|int

$prototype=void update( const QRectF & rect = QRectF( 0., 0., 1000000000., 1000000000. ) )
$signalMethod=|void|update|const QRectF &

$prototype=void updateBlock( const QTextBlock & block )
$signalMethod=|void|updateBlock|const QTextBlock &

#pragma ENDDUMP
