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

$prototype=QVideoSurfaceFormat ()
$internalConstructor=|new1|

$prototype=QVideoSurfaceFormat ( const QSize & size, QVideoFrame::PixelFormat format, QAbstractVideoBuffer::HandleType type = QAbstractVideoBuffer::NoHandle )
$internalConstructor=|new2|const QSize &,QVideoFrame::PixelFormat,QAbstractVideoBuffer::HandleType=QAbstractVideoBuffer::NoHandle

$prototype=QVideoSurfaceFormat ( const QVideoSurfaceFormat & other )
$internalConstructor=|new3|const QVideoSurfaceFormat &

/*
[1]QVideoSurfaceFormat ()
[2]QVideoSurfaceFormat ( const QSize & size, QVideoFrame::PixelFormat pixelFormat, QAbstractVideoBuffer::HandleType handleType = QAbstractVideoBuffer::NoHandle )
[3]QVideoSurfaceFormat ( const QVideoSurfaceFormat & other )
*/

HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QVideoSurfaceFormat_new1();
  }
  else if( ISBETWEEN(2,3) && ISQSIZE(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QVideoSurfaceFormat_new2();
  }
  else if( ISNUMPAR(1) && ISQVIDEOSURFACEFORMAT(1) )
  {
    QVideoSurfaceFormat_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QVideoSurfaceFormat()
$deleteMethod

$prototypeV2=int frameHeight() const

$prototypeV2=qreal frameRate() const

$prototypeV2=QSize frameSize() const

$prototypeV2=int frameWidth() const

$prototypeV2=QAbstractVideoBuffer::HandleType handleType() const

$prototypeV2=bool isValid() const

$prototypeV2=QSize pixelAspectRatio() const

$prototypeV2=QVideoFrame::PixelFormat pixelFormat() const

$prototype=QVariant property ( const char * name ) const
$method=|QVariant|property|const char *

$prototype=QList<QByteArray> propertyNames () const
$method=|QList<QByteArray>|propertyNames|

$prototypeV2=QVideoSurfaceFormat::Direction scanLineDirection() const

$prototype=void setFrameRate ( qreal rate )
$method=|void|setFrameRate|qreal

$prototype=void setFrameSize ( const QSize & size )
$internalMethod=|void|setFrameSize,setFrameSize1|const QSize &

$prototype=void setFrameSize ( int width, int height )
$internalMethod=|void|setFrameSize,setFrameSize2|int,int

/*
[1]void setFrameSize ( const QSize & size )
[2]void setFrameSize ( int width, int height )
*/

HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SETFRAMESIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QVideoSurfaceFormat_setFrameSize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QVideoSurfaceFormat_setFrameSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setFrameSize

$prototype=void setPixelAspectRatio ( const QSize & ratio )
$internalMethod=|void|setPixelAspectRatio,setPixelAspectRatio1|const QSize &

$prototype=void setPixelAspectRatio ( int horizontal, int vertical )
$internalMethod=|void|setPixelAspectRatio,setPixelAspectRatio2|int,int

/*
[1]void setPixelAspectRatio ( const QSize & ratio )
[2]void setPixelAspectRatio ( int horizontal, int vertical )
*/

HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SETPIXELASPECTRATIO )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QVideoSurfaceFormat_setPixelAspectRatio1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QVideoSurfaceFormat_setPixelAspectRatio2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setPixelAspectRatio

$prototype=void setProperty ( const char * name, const QVariant & value )
$method=|void|setProperty|const char *,const QVariant &

$prototype=void setScanLineDirection ( Direction direction )
$method=|void|setScanLineDirection|QVideoSurfaceFormat::Direction

$prototype=void setViewport ( const QRect & viewport )
$method=|void|setViewport|const QRect &

$prototype=void setYCbCrColorSpace ( YCbCrColorSpace colorSpace )
$method=|void|setYCbCrColorSpace|QVideoSurfaceFormat::YCbCrColorSpace

$prototypeV2=QSize sizeHint() const

$prototypeV2=QRect viewport() const

$prototypeV2=QVideoSurfaceFormat::YCbCrColorSpace yCbCrColorSpace() const

$extraMethods

#pragma ENDDUMP
