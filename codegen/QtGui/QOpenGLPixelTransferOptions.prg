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

$prototype=void swap(QOpenGLPixelTransferOptions &other)
$method=|void|swap|QOpenGLPixelTransferOptions &

$prototype=void setAlignment(int alignment)
$method=|void|setAlignment|int

$prototypeV2=int alignment() const

$prototype=void setSkipImages(int skipImages)
$method=|void|setSkipImages|int

$prototypeV2=int skipImages() const

$prototype=void setSkipRows(int skipRows)
$method=|void|setSkipRows|int

$prototypeV2=int skipRows() const

$prototype=void setSkipPixels(int skipPixels)
$method=|void|setSkipPixels|int

$prototypeV2=int skipPixels() const

$prototype=void setImageHeight(int imageHeight)
$method=|void|setImageHeight|int

$prototypeV2=int imageHeight() const

$prototype=void setRowLength(int rowLength)
$method=|void|setRowLength|int

$prototypeV2=int rowLength() const

$prototype=void setLeastSignificantByteFirst(bool lsbFirst)
$method=|void|setLeastSignificantByteFirst|bool

$prototypeV2=bool isLeastSignificantBitFirst() const

$prototype=void setSwapBytesEnabled(bool swapBytes)
$method=|void|setSwapBytesEnabled|bool

$prototypeV2=bool isSwapBytesEnabled() const

$extraMethods

#pragma ENDDUMP
