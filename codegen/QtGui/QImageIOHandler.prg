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

#include <QtCore/QRect>
#include <QtCore/QVariant>

$deleteMethod

$prototypeV2=virtual bool canRead() const = 0

$prototypeV2=virtual int currentImageNumber() const

$prototypeV2=virtual QRect currentImageRect() const

$prototypeV2=QIODevice * device() const

$prototypeV2=QByteArray format() const

$prototypeV2=virtual int imageCount() const

$prototypeV2=virtual bool jumpToImage( int imageNumber )

$prototypeV2=virtual bool jumpToNextImage()

$prototypeV2=virtual int loopCount() const

$prototypeV2=virtual int nextImageDelay() const

$prototypeV2=virtual QVariant option( QImageIOHandler::ImageOption option ) const

$prototypeV2=virtual bool read( QImage * image ) = 0

$prototypeV2=void setDevice( QIODevice * device )

$prototypeV2=void setFormat( const QByteArray & format )

$prototypeV2=virtual void setOption( QImageIOHandler::ImageOption option, const QVariant & value )

$prototypeV2=virtual bool supportsOption( QImageIOHandler::ImageOption option ) const

$prototypeV2=virtual bool write( const QImage & image )

$extraMethods

#pragma ENDDUMP
