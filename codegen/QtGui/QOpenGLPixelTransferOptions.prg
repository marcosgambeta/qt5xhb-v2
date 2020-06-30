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

$prototype=QOpenGLPixelTransferOptions()
$internalConstructor=|new1|

$prototype=QOpenGLPixelTransferOptions(const QOpenGLPixelTransferOptions &)
$internalConstructor=|new2|const QOpenGLPixelTransferOptions &

/*
[1]QOpenGLPixelTransferOptions()
[2]QOpenGLPixelTransferOptions(const QOpenGLPixelTransferOptions &)
*/

HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_NEW )
{
  if( ISNUMPAR(0) )
  {
    QOpenGLPixelTransferOptions_new1();
  }
  else if( ISNUMPAR(1) && ISQOPENGLPIXELTRANSFEROPTIONS(1) )
  {
    QOpenGLPixelTransferOptions_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=void swap( QOpenGLPixelTransferOptions & other )

$prototypeV2=void setAlignment( int alignment )

$prototypeV2=int alignment() const

$prototypeV2=void setSkipImages( int skipImages )

$prototypeV2=int skipImages() const

$prototypeV2=void setSkipRows( int skipRows )

$prototypeV2=int skipRows() const

$prototypeV2=void setSkipPixels( int skipPixels )

$prototypeV2=int skipPixels() const

$prototypeV2=void setImageHeight( int imageHeight )

$prototypeV2=int imageHeight() const

$prototypeV2=void setRowLength( int rowLength )

$prototypeV2=int rowLength() const

$prototypeV2=void setLeastSignificantByteFirst( bool lsbFirst )

$prototypeV2=bool isLeastSignificantBitFirst() const

$prototypeV2=void setSwapBytesEnabled( bool swapBytes )

$prototypeV2=bool isSwapBytesEnabled() const

$extraMethods

#pragma ENDDUMP
