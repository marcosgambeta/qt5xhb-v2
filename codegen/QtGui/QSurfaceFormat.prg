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

$prototype=void setDepthBufferSize(int size)
$method=|void|setDepthBufferSize|int

$prototypeV2=int depthBufferSize() const

$prototype=void setStencilBufferSize(int size)
$method=|void|setStencilBufferSize|int

$prototypeV2=int stencilBufferSize() const

$prototype=void setRedBufferSize(int size)
$method=|void|setRedBufferSize|int

$prototypeV2=int redBufferSize() const

$prototype=void setGreenBufferSize(int size)
$method=|void|setGreenBufferSize|int

$prototypeV2=int greenBufferSize() const

$prototype=void setBlueBufferSize(int size)
$method=|void|setBlueBufferSize|int

$prototypeV2=int blueBufferSize() const

$prototype=void setAlphaBufferSize(int size)
$method=|void|setAlphaBufferSize|int

$prototypeV2=int alphaBufferSize() const

$prototype=void setSamples(int numSamples)
$method=|void|setSamples|int

$prototypeV2=int samples() const

$prototype=void setSwapBehavior(SwapBehavior behavior)
$method=|void|setSwapBehavior|QSurfaceFormat::SwapBehavior

$prototypeV2=QSurfaceFormat::SwapBehavior swapBehavior() const

$prototypeV2=bool hasAlpha() const

$prototype=void setProfile(OpenGLContextProfile profile)
$method=|void|setProfile|QSurfaceFormat::OpenGLContextProfile

$prototypeV2=QSurfaceFormat::OpenGLContextProfile profile() const

$prototype=void setRenderableType(RenderableType type)
$method=|void|setRenderableType|QSurfaceFormat::RenderableType

$prototypeV2=QSurfaceFormat::RenderableType renderableType() const

$prototype=void setMajorVersion(int majorVersion)
$method=|void|setMajorVersion|int

$prototypeV2=int majorVersion() const

$prototype=void setMinorVersion(int minorVersion)
$method=|void|setMinorVersion|int

$prototypeV2=int minorVersion() const

$prototypeV2=bool stereo() const

$prototype=void setStereo(bool enable)
$method=|void|setStereo|bool

$prototype=void setOption(QSurfaceFormat::FormatOptions opt)
$method=|void|setOption|QSurfaceFormat::FormatOptions

$prototype=bool testOption(QSurfaceFormat::FormatOptions opt) const
$method=|bool|testOption|QSurfaceFormat::FormatOptions

$extraMethods

#pragma ENDDUMP
