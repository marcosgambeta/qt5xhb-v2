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

#include <QtGui/QColor>

$prototype=QImageReader ()
$internalConstructor=|new1|

$prototype=QImageReader ( QIODevice * device, const QByteArray & format = QByteArray() )
$internalConstructor=|new2|QIODevice *,const QByteArray &=QByteArray()

$prototype=QImageReader ( const QString & fileName, const QByteArray & format = QByteArray() )
$internalConstructor=|new3|const QString &,const QByteArray &=QByteArray()

/*
[1]QImageReader ()
[2]QImageReader ( QIODevice * device, const QByteArray & format = QByteArray() )
[3]QImageReader ( const QString & fileName, const QByteArray & format = QByteArray() )
*/

HB_FUNC_STATIC( QIMAGEREADER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QImageReader_new1();
  }
  else if( ISBETWEEN(1,2) && ISQIODEVICE(1) && ISOPTQBYTEARRAY(2) )
  {
    QImageReader_new2();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQBYTEARRAY(2) )
  {
    QImageReader_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=bool autoDetectImageFormat() const

$prototypeV2=QColor backgroundColor() const

$prototypeV2=bool canRead() const

$prototypeV2=QRect clipRect() const

$prototypeV2=int currentImageNumber() const

$prototypeV2=QRect currentImageRect() const

$prototypeV2=bool decideFormatFromContent() const

$prototypeV2=QIODevice * device() const

$prototypeV2=QImageReader::ImageReaderError error() const

$prototypeV2=QString errorString() const

$prototypeV2=QString fileName() const

$prototypeV2=QByteArray format() const

$prototypeV2=int imageCount() const

$prototypeV2=bool jumpToImage( int imageNumber )

$prototypeV2=bool jumpToNextImage()

$prototypeV2=int loopCount() const

$prototypeV2=int nextImageDelay() const

$prototypeV2=int quality() const

$prototype=QImage read ()
$internalMethod=|QImage|read,read1|

$prototype=bool read ( QImage * image )
$internalMethod=|bool|read,read2|QImage *

/*
[1]QImage read ()
[2]bool read ( QImage * image )
*/

HB_FUNC_STATIC( QIMAGEREADER_READ )
{
  if( ISNUMPAR(0) )
  {
    QImageReader_read1();
  }
  else if( ISNUMPAR(1) && ISQIMAGE(1) )
  {
    QImageReader_read2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=read

$prototypeV2=QRect scaledClipRect() const

$prototypeV2=QSize scaledSize() const

$prototypeV2=void setAutoDetectImageFormat( bool enabled )

$prototypeV2=void setBackgroundColor( const QColor & color )

$prototypeV2=void setClipRect( const QRect & rect )

$prototypeV2=void setDecideFormatFromContent( bool ignored )

$prototypeV2=void setDevice( QIODevice * device )

$prototypeV2=void setFileName( const QString & fileName )

$prototypeV2=void setFormat( const QByteArray & format )

$prototypeV2=void setQuality( int quality )

$prototypeV2=void setScaledClipRect( const QRect & rect )

$prototypeV2=void setScaledSize( const QSize & size )

$prototypeV2=QSize size() const

$prototypeV2=bool supportsAnimation() const

$prototypeV2=bool supportsOption( QImageIOHandler::ImageOption option ) const

$prototypeV2=QString text( const QString & key ) const

$prototypeV2=QStringList textKeys() const

$prototype=QImage::Format imageFormat () const
$internalMethod=|QImage::Format|imageFormat,imageFormat1|

$prototype=static QByteArray imageFormat ( const QString & fileName )
$internalStaticMethod=|QByteArray|imageFormat,imageFormat2|const QString &

$prototype=static QByteArray imageFormat ( QIODevice * device )
$internalStaticMethod=|QByteArray|imageFormat,imageFormat3|QIODevice *

/*
[1]QImage::Format imageFormat () const
[2]QByteArray imageFormat ( const QString & fileName )
[3]QByteArray imageFormat ( QIODevice * device )
*/

HB_FUNC_STATIC( QIMAGEREADER_IMAGEFORMAT )
{
  if( ISNUMPAR(0) )
  {
    QImageReader_imageFormat1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QImageReader_imageFormat2();
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QImageReader_imageFormat3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=imageFormat

$prototypeV2=static QList<QByteArray> supportedImageFormats ()

$prototypeV2=5,12,0|static QList<QByteArray> QImageReader::imageFormatsForMimeType( const QByteArray & mimeType )

$extraMethods

#pragma ENDDUMP
