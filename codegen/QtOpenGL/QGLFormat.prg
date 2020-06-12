%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtOpenGL

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGLFormat ()
$internalConstructor=|new1|

$prototype=QGLFormat ( QGL::FormatOptions options, int plane = 0 )
$internalConstructor=|new2|QGL::FormatOptions,int=0

$prototype=QGLFormat ( const QGLFormat & other )
$internalConstructor=|new3|const QGLFormat &

/*
[1]QGLFormat ()
[2]QGLFormat ( QGL::FormatOptions options, int plane = 0 )
[3]QGLFormat ( const QGLFormat & other )
*/

HB_FUNC_STATIC( QGLFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGLFormat_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    QGLFormat_new2();
  }
  else if( ISNUMPAR(1) && ISQGLFORMAT(1) )
  {
    QGLFormat_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=bool accum() const

$prototypeV2=int accumBufferSize() const

$prototypeV2=bool alpha() const

$prototypeV2=int alphaBufferSize() const

$prototypeV2=int blueBufferSize() const

$prototypeV2=bool depth() const

$prototypeV2=int depthBufferSize() const

$prototypeV2=bool directRendering() const

$prototypeV2=bool doubleBuffer() const

$prototypeV2=int greenBufferSize() const

$prototypeV2=bool hasOverlay() const

$prototypeV2=int majorVersion() const

$prototypeV2=int minorVersion() const

$prototypeV2=int plane() const

$prototypeV2=QGLFormat::OpenGLContextProfile profile() const

$prototypeV2=int redBufferSize() const

$prototypeV2=bool rgba() const

$prototypeV2=bool sampleBuffers() const

$prototypeV2=int samples() const

$prototype=void setAccum ( bool enable )
$method=|void|setAccum|bool

$prototype=void setAccumBufferSize ( int size )
$method=|void|setAccumBufferSize|int

$prototype=void setAlpha ( bool enable )
$method=|void|setAlpha|bool

$prototype=void setAlphaBufferSize ( int size )
$method=|void|setAlphaBufferSize|int

$prototype=void setBlueBufferSize ( int size )
$method=|void|setBlueBufferSize|int

$prototype=void setDepth ( bool enable )
$method=|void|setDepth|bool

$prototype=void setDepthBufferSize ( int size )
$method=|void|setDepthBufferSize|int

$prototype=void setDirectRendering ( bool enable )
$method=|void|setDirectRendering|bool

$prototype=void setDoubleBuffer ( bool enable )
$method=|void|setDoubleBuffer|bool

$prototype=void setGreenBufferSize ( int size )
$method=|void|setGreenBufferSize|int

$prototype=void setOption ( QGL::FormatOptions opt )
$method=|void|setOption|QGL::FormatOptions

$prototype=void setOverlay ( bool enable )
$method=|void|setOverlay|bool

$prototype=void setPlane ( int plane )
$method=|void|setPlane|int

$prototype=void setProfile ( OpenGLContextProfile profile )
$method=|void|setProfile|QGLFormat::OpenGLContextProfile

$prototype=void setRedBufferSize ( int size )
$method=|void|setRedBufferSize|int

$prototype=void setRgba ( bool enable )
$method=|void|setRgba|bool

$prototype=void setSampleBuffers ( bool enable )
$method=|void|setSampleBuffers|bool

$prototype=void setSamples ( int numSamples )
$method=|void|setSamples|int

$prototype=void setStencil ( bool enable )
$method=|void|setStencil|bool

$prototype=void setStencilBufferSize ( int size )
$method=|void|setStencilBufferSize|int

$prototype=void setStereo ( bool enable )
$method=|void|setStereo|bool

$prototype=void setSwapInterval ( int interval )
$method=|void|setSwapInterval|int

$prototype=void setVersion ( int major, int minor )
$method=|void|setVersion|int,int

$prototypeV2=bool stencil() const

$prototypeV2=int stencilBufferSize() const

$prototypeV2=bool stereo() const

$prototypeV2=int swapInterval() const

$prototype=bool testOption ( QGL::FormatOptions opt ) const
$method=|bool|testOption|QGL::FormatOptions

$prototypeV2=static QGLFormat defaultFormat()

$prototypeV2=static QGLFormat defaultOverlayFormat()

$prototypeV2=static bool hasOpenGL()

$prototypeV2=static bool hasOpenGLOverlays()

$prototypeV2=static QGLFormat::OpenGLVersionFlags openGLVersionFlags()

$prototype=static void setDefaultFormat ( const QGLFormat & f )
$staticMethod=|void|setDefaultFormat|const QGLFormat &

$prototype=static void setDefaultOverlayFormat ( const QGLFormat & f )
$staticMethod=|void|setDefaultOverlayFormat|const QGLFormat &

$extraMethods

#pragma ENDDUMP
