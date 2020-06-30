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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QTextBlock>

$deleteMethod

$prototypeV2=QString anchorAt( const QPointF & position ) const

$prototypeV2=virtual QRectF blockBoundingRect( const QTextBlock & block ) const = 0

$prototypeV2=QTextDocument * document() const

$prototypeV2=virtual QSizeF documentSize() const = 0

$prototypeV2=virtual QRectF frameBoundingRect( QTextFrame * frame ) const = 0

$prototypeV2=QTextObjectInterface * handlerForObject( int objectType ) const

$prototypeV2=virtual int hitTest( const QPointF & point, Qt::HitTestAccuracy accuracy ) const = 0

$prototypeV2=virtual int pageCount() const = 0

$prototypeV2=QPaintDevice * paintDevice() const

$prototypeV2=void registerHandler( int objectType, QObject * component )

$prototypeV2=void setPaintDevice( QPaintDevice * device )

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
