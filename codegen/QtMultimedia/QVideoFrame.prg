%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QVariant>

$prototype=QVideoFrame ()
$internalConstructor=|new1|

$prototype=QVideoFrame ( QAbstractVideoBuffer * buffer, const QSize & size, PixelFormat format )
$internalConstructor=|new2|QAbstractVideoBuffer *,const QSize &,QVideoFrame::PixelFormat

$prototype=QVideoFrame ( int bytes, const QSize & size, int bytesPerLine, PixelFormat format )
$internalConstructor=|new3|int,const QSize &,int,QVideoFrame::PixelFormat

$prototype=QVideoFrame ( const QImage & image )
$internalConstructor=|new4|const QImage &

$prototype=QVideoFrame ( const QVideoFrame & other )
$internalConstructor=|new5|const QVideoFrame &

/*
[1]QVideoFrame ()
[2]QVideoFrame ( QAbstractVideoBuffer * buffer, const QSize & size, PixelFormat format )
[3]QVideoFrame ( int bytes, const QSize & size, int bytesPerLine, PixelFormat format )
[4]QVideoFrame ( const QImage & image )
[5]QVideoFrame ( const QVideoFrame & other )
*/

HB_FUNC_STATIC( QVIDEOFRAME_NEW )
{
  if( ISNUMPAR(0) )
  {
    QVideoFrame_new1();
  }
  else if( ISNUMPAR(3) && ISQABSTRACTVIDEOBUFFER(1) && ISQSIZE(2) && ISNUM(3)  )
  {
    QVideoFrame_new2();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISQSIZE(2) && ISNUM(3) && ISNUM(4) )
  {
    QVideoFrame_new3();
  }
  else if( ISNUMPAR(1) && ISQIMAGE(1) )
  {
    QVideoFrame_new4();
  }
  else if( ISNUMPAR(1) && ISQVIDEOFRAME(1) )
  {
    QVideoFrame_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QVideoFrame()
$deleteMethod

%% TODO: implementar

$prototype=uchar * bits ()
%% $method=|uchar *|bits,bits1|

$prototype=uchar *bits(int plane)
%% $method=|uchar *|bits,bits2|int

$prototype=const uchar * bits () const
%% $method=|const uchar *|bits,bits3|

$prototype=const uchar *bits(int plane) const
%% $method=|const uchar *|bits,bits4|int

/*
[1]uchar *bits()
[2]uchar *bits(int plane)
[3]const uchar *bits() const
[4]const uchar *bits(int plane) const
*/

%%HB_FUNC_STATIC( QVIDEOFRAME_BITS )
%%{
%%   if( ISNUMPAR(0) )
%%   {
%%     HB_FUNC_EXEC( QVIDEOFRAME_BITS1 );
%%   }
%%   else if( ISNUMPAR(1) && ISNUM(1) )
%%   {
%%     HB_FUNC_EXEC( QVIDEOFRAME_BITS2 );
%%   }
%%   else
%%   {
%%    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
%%   }
%%}

$prototype=int bytesPerLine () const
$internalMethod=|int|bytesPerLine,bytesPerLine1|

$prototype=int bytesPerLine(int plane) const
$internalMethod=|int|bytesPerLine,bytesPerLine2|int

/*
[1]int bytesPerLine () const
[2]int bytesPerLine(int plane) const
*/

HB_FUNC_STATIC( QVIDEOFRAME_BYTESPERLINE )
{
  if( ISNUMPAR(0) )
  {
    QVideoFrame_bytesPerLine1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QVideoFrame_bytesPerLine2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=bytesPerLine

$prototypeV2=qint64 endTime() const

$prototypeV2=QVideoFrame::FieldType fieldType() const

$prototypeV2=QVariant handle() const

$prototypeV2=QAbstractVideoBuffer::HandleType handleType() const

$prototypeV2=int height() const

$prototypeV2=bool isMapped() const

$prototypeV2=bool isReadable() const

$prototypeV2=bool isValid() const

$prototypeV2=bool isWritable() const

$prototype=bool map ( QAbstractVideoBuffer::MapMode mode )
$method=|bool|map|QAbstractVideoBuffer::MapMode

$prototypeV2=QAbstractVideoBuffer::MapMode mapMode() const

$prototypeV2=int mappedBytes() const

$prototypeV2=QVideoFrame::PixelFormat pixelFormat() const

$prototype=void setEndTime ( qint64 time )
$method=|void|setEndTime|qint64

$prototype=void setFieldType ( FieldType field )
$method=|void|setFieldType|QVideoFrame::FieldType

$prototype=void setStartTime ( qint64 time )
$method=|void|setStartTime|qint64

$prototypeV2=QSize size() const

$prototypeV2=qint64 startTime() const

$prototypeV2=void unmap()

$prototypeV2=int width() const

$prototypeV2=int planeCount() const

$prototype=QVariantMap availableMetaData() const
%% TODO: QVariantMap

$prototype=QVariant metaData(const QString &key) const
$method=|QVariant|metaData|const QString &

$prototype=void setMetaData(const QString &key, const QVariant &value)
$method=|void|setMetaData|const QString &,const QVariant &

$prototype=static QImage::Format imageFormatFromPixelFormat ( PixelFormat format )
$staticMethod=|QImage::Format|imageFormatFromPixelFormat|QVideoFrame::PixelFormat

$prototype=static PixelFormat pixelFormatFromImageFormat ( QImage::Format format )
$staticMethod=|QVideoFrame::PixelFormat|pixelFormatFromImageFormat|QImage::Format

$extraMethods

#pragma ENDDUMP
