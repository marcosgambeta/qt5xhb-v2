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

$prototype=QSurfaceFormat()
$internalConstructor=|new1|

$prototype=QSurfaceFormat(FormatOptions options)
$internalConstructor=|new2|QSurfaceFormat::FormatOptions

$prototype=QSurfaceFormat(const QSurfaceFormat &other)
$internalConstructor=|new3|const QSurfaceFormat &

/*
[1]QSurfaceFormat()
[2]QSurfaceFormat(FormatOptions options)
[3]QSurfaceFormat(const QSurfaceFormat &other)
*/

HB_FUNC_STATIC( QSURFACEFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSurfaceFormat_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSurfaceFormat_new2();
  }
  else if( ISNUMPAR(1) && ISQSURFACEFORMAT(1) )
  {
    QSurfaceFormat_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=void setDepthBufferSize( int size )

$prototypeV2=int depthBufferSize() const

$prototypeV2=void setStencilBufferSize( int size )

$prototypeV2=int stencilBufferSize() const

$prototypeV2=void setRedBufferSize( int size )

$prototypeV2=int redBufferSize() const

$prototypeV2=void setGreenBufferSize( int size )

$prototypeV2=int greenBufferSize() const

$prototypeV2=void setBlueBufferSize( int size )

$prototypeV2=int blueBufferSize() const

$prototypeV2=void setAlphaBufferSize( int size )

$prototypeV2=int alphaBufferSize() const

$prototypeV2=void setSamples( int numSamples )

$prototypeV2=int samples() const

$prototypeV2=void setSwapBehavior( QSurfaceFormat::SwapBehavior behavior )

$prototypeV2=QSurfaceFormat::SwapBehavior swapBehavior() const

$prototypeV2=bool hasAlpha() const

$prototypeV2=void setProfile( QSurfaceFormat::OpenGLContextProfile profile )

$prototypeV2=QSurfaceFormat::OpenGLContextProfile profile() const

$prototypeV2=void setRenderableType( QSurfaceFormat::RenderableType type )

$prototypeV2=QSurfaceFormat::RenderableType renderableType() const

$prototypeV2=void setMajorVersion( int majorVersion )

$prototypeV2=int majorVersion() const

$prototypeV2=void setMinorVersion( int minorVersion )

$prototypeV2=int minorVersion() const

$prototypeV2=bool stereo() const

$prototypeV2=void setStereo( bool enable )

$prototypeV2=void setOption( QSurfaceFormat::FormatOptions opt )

$prototypeV2=bool testOption( QSurfaceFormat::FormatOptions opt ) const

$extraMethods

#pragma ENDDUMP
