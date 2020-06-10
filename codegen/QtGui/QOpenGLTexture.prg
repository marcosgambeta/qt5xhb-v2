%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui
$added=5,2,0

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

$prototype=QOpenGLTexture(Target target)
$internalConstructor=|new1|QOpenGLTexture::Target

$prototype=QOpenGLTexture(const QImage& image, MipMapGeneration genMipMaps = GenerateMipMaps)
$internalConstructor=|new2|const QImage &,QOpenGLTexture::MipMapGeneration=QOpenGLTexture::GenerateMipMaps

/*
[1]QOpenGLTexture(Target target)
[2]QOpenGLTexture(const QImage& image, MipMapGeneration genMipMaps = GenerateMipMaps)
*/

HB_FUNC_STATIC( QOPENGLTEXTURE_NEW )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QOpenGLTexture_new1();
  }
  else if( ISBETWEEN(1,2) && ISQIMAGE(1) && ISOPTNUM(2) )
  {
    QOpenGLTexture_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=bool create()

$prototypeV2=void destroy()

$prototypeV2=bool isCreated() const

$prototypeV2=GLuint textureId() const

$prototype=void bind()
$internalMethod=|void|bind,bind1|

$prototype=void bind(uint unit, TextureUnitReset reset = DontResetTextureUnit)
$internalMethod=|void|bind,bind2|uint,QOpenGLTexture::TextureUnitReset=QOpenGLTexture::DontResetTextureUnit

/*
[1]void bind()
[2]void bind(uint unit, TextureUnitReset reset = DontResetTextureUnit)
*/

HB_FUNC_STATIC( QOPENGLTEXTURE_BIND )
{
  if( ISNUMPAR(0) )
  {
    QOpenGLTexture_bind1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    QOpenGLTexture_bind2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=bind

$prototype=void release()
$internalMethod=|void|release,release1|

$prototype=void release(uint unit, TextureUnitReset reset = DontResetTextureUnit)
$internalMethod=|void|release,release2|uint,QOpenGLTexture::TextureUnitReset=QOpenGLTexture::DontResetTextureUnit

/*
[1]void release()
[2]void release(uint unit, TextureUnitReset reset = DontResetTextureUnit)
*/

HB_FUNC_STATIC( QOPENGLTEXTURE_RELEASE )
{
  if( ISNUMPAR(0) )
  {
    QOpenGLTexture_release1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    QOpenGLTexture_release2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=release

$prototype=bool isBound() const
$internalMethod=|bool|isBound,isBound1|

$prototype=bool isBound(uint unit)
$internalMethod=|bool|isBound,isBound2|uint

/*
[1]bool isBound() const
[2]bool isBound(uint unit)
*/

HB_FUNC_STATIC( QOPENGLTEXTURE_ISBOUND )
{
  if( ISNUMPAR(0) )
  {
    QOpenGLTexture_isBound1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QOpenGLTexture_isBound2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=isBound

$prototype=void setFormat(TextureFormat format)
$method=|void|setFormat|QOpenGLTexture::TextureFormat

$prototypeV2=QOpenGLTexture::TextureFormat format() const

$prototype=void setSize(int width, int height = 1, int depth = 1)
$method=|void|setSize|int,int=1,int=1

$prototypeV2=int width() const

$prototypeV2=int height() const

$prototypeV2=int depth() const

$prototype=void setMipLevels(int levels)
$method=|void|setMipLevels|int

$prototypeV2=int mipLevels() const

$prototypeV2=int maximumMipLevels() const

$prototype=void setLayers(int layers)
$method=|void|setLayers|int

$prototypeV2=int layers() const

$prototypeV2=int faces() const

$prototypeV2=void allocateStorage()

$prototypeV2=bool isStorageAllocated() const

$prototype=QOpenGLTexture *createTextureView(Target target,TextureFormat viewFormat,int minimumMipmapLevel, int maximumMipmapLevel,int minimumLayer, int maximumLayer) const
$method=|QOpenGLTexture *|createTextureView|QOpenGLTexture::Target,QOpenGLTexture::TextureFormat,int,int,int,int

$prototypeV2=bool isTextureView() const

$prototype=void setData(int mipLevel, int layer, CubeMapFace cubeFace,PixelFormat sourceFormat, PixelType sourceType,void *data, const QOpenGLPixelTransferOptions * const options = nullptr)
%% TODO: $internalMethod=|void|setData,setData1|int,int,QOpenGLTexture::CubeMapFace,QOpenGLTexture::PixelFormat,QOpenGLTexture::PixelType,void *,const QOpenGLPixelTransferOptions *=nullptr

$prototype=void setData(int mipLevel, int layer,PixelFormat sourceFormat, PixelType sourceType,void *data, const QOpenGLPixelTransferOptions * const options = nullptr)
%% TODO: $internalMethod=|void|setData,setData2|int,int,QOpenGLTexture::PixelFormat,QOpenGLTexture::PixelType,void *,const QOpenGLPixelTransferOptions * const=nullptr

$prototype=void setData(int mipLevel,PixelFormat sourceFormat, PixelType sourceType,void *data, const QOpenGLPixelTransferOptions * const options = nullptr)
%% TODO: $internalMethod=|void|setData,setData3|int,QOpenGLTexture::PixelFormat,QOpenGLTexture::PixelType,void *,const QOpenGLPixelTransferOptions * const=nullptr

$prototype=void setData(PixelFormat sourceFormat, PixelType sourceType,void *data, const QOpenGLPixelTransferOptions * const options = nullptr)
%% TODO: $internalMethod=|void|setData,setData4|QOpenGLTexture::PixelFormat,QOpenGLTexture::PixelType,void *,const QOpenGLPixelTransferOptions * const=nullptr

$prototype=void setData(const QImage& image, MipMapGeneration genMipMaps = GenerateMipMaps)
%% TODO: $internalMethod=|void|setData,setData5|const QImage &,QOpenGLTexture::MipMapGeneration=QOpenGLTexture::GenerateMipMaps

/*
[1]void setData(int mipLevel, int layer, CubeMapFace cubeFace,PixelFormat sourceFormat, PixelType sourceType,void *data, const QOpenGLPixelTransferOptions * const options = nullptr)
[2]void setData(int mipLevel, int layer,PixelFormat sourceFormat, PixelType sourceType,void *data, const QOpenGLPixelTransferOptions * const options = nullptr)
[3]void setData(int mipLevel,PixelFormat sourceFormat, PixelType sourceType,void *data, const QOpenGLPixelTransferOptions * const options = nullptr)
[4]void setData(PixelFormat sourceFormat, PixelType sourceType,void *data, const QOpenGLPixelTransferOptions * const options = nullptr)
[5]void setData(const QImage& image, MipMapGeneration genMipMaps = GenerateMipMaps)
*/

%% TODO: implementar
HB_FUNC_STATIC( QOPENGLTEXTURE_SETDATA )
{
%%  //if( ... )
%%  //{
%%  //  HB_FUNC_EXEC( QOPENGLTEXTURE_SETDATA1 );
%%  //}
%%  //else if( ... )
%%  //{
%%  //  HB_FUNC_EXEC( QOPENGLTEXTURE_SETDATA2 );
%%  //}
%%  //else
%%  //{
%%  //  hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
%%  //}
}
$addMethod=setData

$prototype=void setCompressedData(int mipLevel, int layer, CubeMapFace cubeFace,int dataSize, void *data,const QOpenGLPixelTransferOptions * const options = 0)
%% TODO: $method=|void|setCompressedData,setCompressedData1|int,int,QOpenGLTexture::CubeMapFace,int,void *,const QOpenGLPixelTransferOptions * const=0

$prototype=void setCompressedData(int mipLevel, int layer,int dataSize, void *data,const QOpenGLPixelTransferOptions * const options = 0)
%% TODO: $method=|void|setCompressedData,setCompressedData2|int,int,int,void *,const QOpenGLPixelTransferOptions * const=0

$prototype=void setCompressedData(int mipLevel, int dataSize, void *data,const QOpenGLPixelTransferOptions * const options = 0)
%% TODO: $method=|void|setCompressedData,setCompressedData3|int,int,void *,const QOpenGLPixelTransferOptions * const=0

$prototype=void setCompressedData(int dataSize, void *data,const QOpenGLPixelTransferOptions * const options = 0)
%% TODO: $method=|void|setCompressedData,setCompressedData4|int,void *,const QOpenGLPixelTransferOptions * const=0

/*
[1]void setCompressedData(int mipLevel, int layer, CubeMapFace cubeFace,int dataSize, void *data,const QOpenGLPixelTransferOptions * const options = 0)
[2]void setCompressedData(int mipLevel, int layer,int dataSize, void *data,const QOpenGLPixelTransferOptions * const options = 0)
[3]void setCompressedData(int mipLevel, int dataSize, void *data,const QOpenGLPixelTransferOptions * const options = 0)
[4]void setCompressedData(int dataSize, void *data,const QOpenGLPixelTransferOptions * const options = 0)
*/

%% TODO: implementar
HB_FUNC_STATIC( QOPENGLTEXTURE_SETCOMPRESSEDDATA )
{
%%  //if( ... )
%%  //{
%%  //  HB_FUNC_EXEC( QOPENGLTEXTURE_SETCOMPRESSEDDATA1 );
%%  //}
%%  //else if( ... )
%%  //{
%%  //  HB_FUNC_EXEC( QOPENGLTEXTURE_SETCOMPRESSEDDATA2 );
%%  //}
%%  //else
%%  //{
%%  //  hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
%%  //}
}
$addMethod=setCompressedData

$prototype=void setMipBaseLevel(int baseLevel)
$method=|void|setMipBaseLevel|int

$prototypeV2=int mipBaseLevel() const

$prototype=void setMipMaxLevel(int maxLevel)
$method=|void|setMipMaxLevel|int

$prototypeV2=int mipMaxLevel() const

$prototype=void setMipLevelRange(int baseLevel, int maxLevel)
$method=|void|setMipLevelRange|int,int

$prototype=void setAutoMipMapGenerationEnabled(bool enabled)
$method=|void|setAutoMipMapGenerationEnabled|bool

$prototypeV2=bool isAutoMipMapGenerationEnabled() const

$prototype=void generateMipMaps()
$internalMethod=|void|generateMipMaps,generateMipMaps1|

$prototype=void generateMipMaps(int baseLevel, bool resetBaseLevel = true)
$internalMethod=|void|generateMipMaps,generateMipMaps2|int,bool=true

/*
[1]void generateMipMaps()
[2]void generateMipMaps(int baseLevel, bool resetBaseLevel = true)
*/

HB_FUNC_STATIC( QOPENGLTEXTURE_GENERATEMIPMAPS )
{
  if( ISNUMPAR(0) )
  {
    QOpenGLTexture_generateMipMaps1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTLOG(2) )
  {
    QOpenGLTexture_generateMipMaps2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=generateMipMaps

$prototype=void setSwizzleMask(SwizzleComponent component, SwizzleValue value)
$internalMethod=|void|setSwizzleMask,setSwizzleMask1|QOpenGLTexture::SwizzleComponent,QOpenGLTexture::SwizzleValue

$prototype=void setSwizzleMask(SwizzleValue r, SwizzleValue g,SwizzleValue b, SwizzleValue a)
$internalMethod=|void|setSwizzleMask,setSwizzleMask2|QOpenGLTexture::SwizzleValue,QOpenGLTexture::SwizzleValue,QOpenGLTexture::SwizzleValue,QOpenGLTexture::SwizzleValue

/*
[1]void setSwizzleMask(SwizzleComponent component, SwizzleValue value)
[2]void setSwizzleMask(SwizzleValue r, SwizzleValue g,SwizzleValue b, SwizzleValue a)
*/

HB_FUNC_STATIC( QOPENGLTEXTURE_SETSWIZZLEMASK )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QOpenGLTexture_setSwizzleMask1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QOpenGLTexture_setSwizzleMask2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setSwizzleMask

$prototype=SwizzleValue swizzleMask(SwizzleComponent component) const
$method=|QOpenGLTexture::SwizzleValue|swizzleMask|QOpenGLTexture::SwizzleComponent

$prototype=void setDepthStencilMode(DepthStencilMode mode)
$method=|void|setDepthStencilMode|QOpenGLTexture::DepthStencilMode

$prototypeV2=QOpenGLTexture::DepthStencilMode depthStencilMode() const

$prototype=void setMinificationFilter(Filter filter)
$method=|void|setMinificationFilter|QOpenGLTexture::Filter

$prototypeV2=QOpenGLTexture::Filter minificationFilter() const

$prototype=void setMagnificationFilter(Filter filter)
$method=|void|setMagnificationFilter|QOpenGLTexture::Filter

$prototypeV2=QOpenGLTexture::Filter magnificationFilter() const

$prototype=void setMinMagFilters(Filter minificationFilter,Filter magnificationFilter)
$method=|void|setMinMagFilters|QOpenGLTexture::Filter,QOpenGLTexture::Filter

$prototype=void setMaximumAnisotropy(float anisotropy)
$method=|void|setMaximumAnisotropy|float

$prototypeV2=float maximumAnisotropy() const

$prototype=void setWrapMode(WrapMode mode)
$internalMethod=|void|setWrapMode,setWrapMode1|QOpenGLTexture::WrapMode

$prototype=void setWrapMode(CoordinateDirection direction, WrapMode mode)
$internalMethod=|void|setWrapMode,setWrapMode2|QOpenGLTexture::CoordinateDirection,QOpenGLTexture::WrapMode

/*
[1]void setWrapMode(WrapMode mode)
[2]void setWrapMode(CoordinateDirection direction, WrapMode mode)
*/

HB_FUNC_STATIC( QOPENGLTEXTURE_SETWRAPMODE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QOpenGLTexture_setWrapMode1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QOpenGLTexture_setWrapMode2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setWrapMode

$prototype=WrapMode wrapMode(CoordinateDirection direction) const
$method=|QOpenGLTexture::WrapMode|wrapMode|QOpenGLTexture::CoordinateDirection

$prototype=void setBorderColor(QColor color)
$method=|void|setBorderColor,setBorderColor1|QColor

$prototype=void setBorderColor(float r, float g, float b, float a)
$method=|void|setBorderColor,setBorderColor2|float,float,float,float

$prototype=void setBorderColor(int r, int g, int b, int a)
$method=|void|setBorderColor,setBorderColor3|int,int,int,int

$prototype=void setBorderColor(uint r, uint g, uint b, uint a)
$method=|void|setBorderColor,setBorderColor4|uint,uint,uint,uint

/*
[1]void setBorderColor(QColor color)
[2]void setBorderColor(float r, float g, float b, float a)
[3]void setBorderColor(int r, int g, int b, int a)
[4]void setBorderColor(uint r, uint g, uint b, uint a)
*/

%% TODO: resolver conflitos entre casos 2, 3 e 4
HB_FUNC_STATIC( QOPENGLTEXTURE_SETBORDERCOLOR )
{
  if( ISNUMPAR(1) && ISQCOLOR(1) )
  {
    HB_FUNC_EXEC( QOPENGLTEXTURE_SETBORDERCOLOR1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QOPENGLTEXTURE_SETBORDERCOLOR2 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QOPENGLTEXTURE_SETBORDERCOLOR3 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QOPENGLTEXTURE_SETBORDERCOLOR4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setBorderColor

$prototype=QColor borderColor() const
$method=|QColor|borderColor,borderColor1|

$prototype=void borderColor(float *border) const
%% TODO: $method=|void|borderColor,borderColor2|float *

$prototype=void borderColor(int *border) const
$method=|void|borderColor,borderColor3|int *

$prototype=void borderColor(unsigned int *border) const
%% TODO: $method=|void|borderColor,borderColor4|unsigned int *

/*
[1]QColor borderColor() const
[2]void borderColor(float *border) const
[3]void borderColor(int *border) const
[4]void borderColor(unsigned int *border) const
*/

%% TODO: resolver conflitos entre casos 2, 3 e 4
HB_FUNC_STATIC( QOPENGLTEXTURE_BORDERCOLOR )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QOPENGLTEXTURE_BORDERCOLOR1 );
  }
%%  else if( ISNUMPAR(1) && ISNUM(1) )
%%  {
%%    HB_FUNC_EXEC( QOPENGLTEXTURE_BORDERCOLOR2 );
%%  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QOPENGLTEXTURE_BORDERCOLOR3 );
  }
%%  else if( ISNUMPAR(1) && ISNUM(1) )
%%  {
%%    HB_FUNC_EXEC( QOPENGLTEXTURE_BORDERCOLOR4 );
%%  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=borderColor

$prototype=void setMinimumLevelOfDetail(float value)
$method=|void|setMinimumLevelOfDetail|float

$prototypeV2=float minimumLevelOfDetail() const

$prototype=void setMaximumLevelOfDetail(float value)
$method=|void|setMaximumLevelOfDetail|float

$prototypeV2=float maximumLevelOfDetail() const

$prototype=void setLevelOfDetailRange(float min, float max)
$method=|void|setLevelOfDetailRange|float,float

$prototype=void setLevelofDetailBias(float bias)
$method=|void|setLevelofDetailBias|float

$prototypeV2=float levelofDetailBias() const

$prototype=static GLuint boundTextureId(BindingTarget target)
$internalStaticMethod=|GLuint|boundTextureId,boundTextureId1|QOpenGLTexture::BindingTarget

$prototype=static GLuint boundTextureId(uint unit, BindingTarget target)
$internalStaticMethod=|GLuint|boundTextureId,boundTextureId2|uint,QOpenGLTexture::BindingTarget

/*
[1]static GLuint boundTextureId(BindingTarget target)
[2]static GLuint boundTextureId(uint unit, BindingTarget target)
*/

HB_FUNC_STATIC( QOPENGLTEXTURE_BOUNDTEXTUREID )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QOpenGLTexture_boundTextureId1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QOpenGLTexture_boundTextureId2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=boundTextureId

$prototype=static bool hasFeature(Feature feature)
$staticMethod=|bool|hasFeature|QOpenGLTexture::Feature

$extraMethods

#pragma ENDDUMP
