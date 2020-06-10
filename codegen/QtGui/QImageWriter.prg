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

$prototype=QImageWriter ()
$internalConstructor=|new1|

$prototype=QImageWriter ( QIODevice * device, const QByteArray & format )
$internalConstructor=|new2|QIODevice *,const QByteArray &

$prototype=QImageWriter ( const QString & fileName, const QByteArray & format = QByteArray() )
$internalConstructor=|new3|const QString &,const QByteArray &=QByteArray()

/*
[1]QImageWriter ()
[2]QImageWriter ( QIODevice * device, const QByteArray & format )
[3]QImageWriter ( const QString & fileName, const QByteArray & format = QByteArray() )
*/

HB_FUNC_STATIC( QIMAGEWRITER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QImageWriter_new1();
  }
  else if( ISNUMPAR(2) && ISQIODEVICE(1) && ISQBYTEARRAY(2) )
  {
    QImageWriter_new2();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQBYTEARRAY(2) )
  {
    QImageWriter_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=bool canWrite() const

$prototypeV2=int compression() const

$prototypeV2=QIODevice * device() const

$prototypeV2=QImageWriter::ImageWriterError error() const

$prototypeV2=QString errorString() const

$prototypeV2=QString fileName() const

$prototypeV2=QByteArray format() const

$prototypeV2=float gamma() const

$prototypeV2=int quality() const

$prototype=void setCompression ( int compression )
$method=|void|setCompression|int

$prototype=void setDevice ( QIODevice * device )
$method=|void|setDevice|QIODevice *

$prototype=void setFileName ( const QString & fileName )
$method=|void|setFileName|const QString &

$prototype=void setFormat ( const QByteArray & format )
$method=|void|setFormat|const QByteArray &

$prototype=void setGamma ( float gamma )
$method=|void|setGamma|float

$prototype=void setQuality ( int quality )
$method=|void|setQuality|int

$prototype=void setText ( const QString & key, const QString & text )
$method=|void|setText|const QString &,const QString &

$prototype=bool supportsOption ( QImageIOHandler::ImageOption option ) const
$method=|bool|supportsOption|QImageIOHandler::ImageOption

$prototype=bool write ( const QImage & image )
$method=|bool|write|const QImage &

$prototype=static QList<QByteArray> supportedImageFormats ()
$staticMethod=|QList<QByteArray>|supportedImageFormats|

$prototype=static QList<QByteArray> QImageWriter::imageFormatsForMimeType(const QByteArray &mimeType)
$staticMethod=5,12,0|QList<QByteArray>|imageFormatsForMimeType|const QByteArray &

$extraMethods

#pragma ENDDUMP
