%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization
$added=5,7,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QCustom3DItem

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit QCustom3DVolume(QObject *parent = nullptr)
$internalConstructor=|new1|QObject *=nullptr

$prototype=explicit QCustom3DVolume(const QVector3D &position, const QVector3D &scaling, const QQuaternion &rotation, int textureWidth, int textureHeight, int textureDepth, QVector<uchar> *textureData, QImage::Format textureFormat, const QVector<QRgb> &colorTable, QObject *parent = nullptr)
%% TODO: implementar
%% $internalConstructor=|new2|const QVector3D &,const QVector3D &,const QQuaternion &,int,int,int,QVector<uchar> *,QImage::Format,const QVector<QRgb> &,QObject *=nullptr

//[1]explicit QCustom3DVolume(QObject *parent = nullptr)
//[2]explicit QCustom3DVolume(const QVector3D &position, const QVector3D &scaling, const QQuaternion &rotation, int textureWidth, int textureHeight, int textureDepth, QVector<uchar> *textureData, QImage::Format textureFormat, const QVector<QRgb> &colorTable, QObject *parent = nullptr)

HB_FUNC_STATIC( QCUSTOM3DVOLUME_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QCustom3DVolume_new1();
  }  
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual ~QCustom3DVolume()
$deleteMethod

%%
%% Q_PROPERTY(int textureWidth READ textureWidth WRITE setTextureWidth NOTIFY textureWidthChanged)
%%

$prototype=int textureWidth() const
$method=|int|textureWidth|

$prototype=void setTextureWidth(int value)
$method=|void|setTextureWidth|int

%%
%% Q_PROPERTY(int textureHeight READ textureHeight WRITE setTextureHeight NOTIFY textureHeightChanged)
%%

$prototype=int textureHeight() const
$method=|int|textureHeight|

$prototype=void setTextureHeight(int value)
$method=|void|setTextureHeight|int

%%
%% Q_PROPERTY(int textureDepth READ textureDepth WRITE setTextureDepth NOTIFY textureDepthChanged)
%%

$prototype=int textureDepth() const
$method=|int|textureDepth|

$prototype=void setTextureDepth(int value)
$method=|void|setTextureDepth|int

%%
%% Q_PROPERTY(int sliceIndexX READ sliceIndexX WRITE setSliceIndexX NOTIFY sliceIndexXChanged)
%%

$prototype=int sliceIndexX() const
$method=|int|sliceIndexX|

$prototype=void setSliceIndexX(int value)
$method=|void|setSliceIndexX|int

%%
%% Q_PROPERTY(int sliceIndexY READ sliceIndexY WRITE setSliceIndexY NOTIFY sliceIndexYChanged)
%%

$prototype=int sliceIndexY() const
$method=|int|sliceIndexY|

$prototype=void setSliceIndexY(int value)
$method=|void|setSliceIndexY|int

%%
%% Q_PROPERTY(int sliceIndexZ READ sliceIndexZ WRITE setSliceIndexZ NOTIFY sliceIndexZChanged)
%%

$prototype=int sliceIndexZ() const
$method=|int|sliceIndexZ|

$prototype=void setSliceIndexZ(int value)
$method=|void|setSliceIndexZ|int

%%
%% Q_PROPERTY(QVector<QRgb> colorTable READ colorTable WRITE setColorTable NOTIFY colorTableChanged)
%%

$prototype=QVector<QRgb> colorTable() const
%% TODO: implementar
%% $method=|QVector<QRgb>|colorTable|

$prototype=void setColorTable(const QVector<QRgb> &colors)
%% TODO: implementar
%% $method=|void|setColorTable|const QVector<QRgb> &

%%
%% Q_PROPERTY(QVector<uchar> *textureData READ textureData WRITE setTextureData NOTIFY textureDataChanged)
%%

$prototype=QVector<uchar> *textureData() const
%% TODO: implementar
%% $method=|QVector<uchar> *|textureData|

$prototype=void setTextureData(QVector<uchar> *data)
%% TODO: implementar
%% $method=|void|setTextureData|QVector<uchar> *

%%
%% Q_PROPERTY(float alphaMultiplier READ alphaMultiplier WRITE setAlphaMultiplier NOTIFY alphaMultiplierChanged)
%%

$prototype=float alphaMultiplier() const
$method=|float|alphaMultiplier|

$prototype=void setAlphaMultiplier(float mult)
$method=|void|setAlphaMultiplier|float

%%
%% Q_PROPERTY(bool preserveOpacity READ preserveOpacity WRITE setPreserveOpacity NOTIFY preserveOpacityChanged)
%%

$prototype=bool preserveOpacity() const
$method=|bool|preserveOpacity|

$prototype=void setPreserveOpacity(bool enable)
$method=|void|setPreserveOpacity|bool

%%
%% Q_PROPERTY(bool useHighDefShader READ useHighDefShader WRITE setUseHighDefShader NOTIFY useHighDefShaderChanged)
%%

$prototype=bool useHighDefShader() const
$method=|bool|useHighDefShader|

$prototype=void setUseHighDefShader(bool enable)
$method=|void|setUseHighDefShader|bool

%%
%% Q_PROPERTY(bool drawSlices READ drawSlices WRITE setDrawSlices NOTIFY drawSlicesChanged)
%%

$prototype=bool drawSlices() const
$method=|bool|drawSlices|

$prototype=void setDrawSlices(bool enable)
$method=|void|setDrawSlices|bool

%%
%% Q_PROPERTY(bool drawSliceFrames READ drawSliceFrames WRITE setDrawSliceFrames NOTIFY drawSliceFramesChanged)
%%

$prototype=bool drawSliceFrames() const
$method=|bool|drawSliceFrames|

$prototype=void setDrawSliceFrames(bool enable)
$method=|void|setDrawSliceFrames|bool

%%
%% Q_PROPERTY(QColor sliceFrameColor READ sliceFrameColor WRITE setSliceFrameColor NOTIFY sliceFrameColorChanged)
%%

$prototype=QColor sliceFrameColor() const
$method=|QColor|sliceFrameColor|

$prototype=void setSliceFrameColor(const QColor &color)
$method=|void|setSliceFrameColor|const QColor &

%%
%% Q_PROPERTY(QVector3D sliceFrameWidths READ sliceFrameWidths WRITE setSliceFrameWidths NOTIFY sliceFrameWidthsChanged)
%%

$prototype=QVector3D sliceFrameWidths() const
$method=|QVector3D|sliceFrameWidths|

$prototype=void setSliceFrameWidths(const QVector3D &values)
$method=|void|setSliceFrameWidths|const QVector3D &

%%
%% Q_PROPERTY(QVector3D sliceFrameGaps READ sliceFrameGaps WRITE setSliceFrameGaps NOTIFY sliceFrameGapsChanged)
%%

$prototype=QVector3D sliceFrameGaps() const
$method=|QVector3D|sliceFrameGaps|

$prototype=void setSliceFrameGaps(const QVector3D &values)
$method=|void|setSliceFrameGaps|const QVector3D &

%%
%% Q_PROPERTY(QVector3D sliceFrameThicknesses READ sliceFrameThicknesses WRITE setSliceFrameThicknesses NOTIFY sliceFrameThicknessesChanged)
%%

$prototype=QVector3D sliceFrameThicknesses() const
$method=|QVector3D|sliceFrameThicknesses|

$prototype=void setSliceFrameThicknesses(const QVector3D &values)
$method=|void|setSliceFrameThicknesses|const QVector3D &

%%
%%
%%

$prototype=void setTextureDimensions(int width, int height, int depth)
$method=|void|setTextureDimensions|int,int,int

$prototype=int textureDataWidth() const
$method=|int|textureDataWidth|

$prototype=void setSliceIndices(int x, int y, int z)
$method=|void|setSliceIndices|int,int,int

$prototype=QVector<uchar> *createTextureData(const QVector<QImage *> &images)
%% TODO: implementar
%% $method=|QVector<uchar> *|createTextureData|const QVector<QImage *> &

$prototype=void setSubTextureData(Qt::Axis axis, int index, const uchar *data)
$internalMethod=|void|setSubTextureData,setSubTextureData1|Qt::Axis,int,const uchar *

$prototype=void setSubTextureData(Qt::Axis axis, int index, const QImage &image)
$internalMethod=|void|setSubTextureData,setSubTextureData2|Qt::Axis,int,const QImage &

//[1]void setSubTextureData(Qt::Axis axis, int index, const uchar *data)
//[2]void setSubTextureData(Qt::Axis axis, int index, const QImage &image)

HB_FUNC_STATIC( QCUSTOM3DVOLUME_SETSUBTEXTUREDATA )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISCHAR(3) )
  {
    QCustom3DVolume_setSubTextureData1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQIMAGE(3) )
  {
    QCustom3DVolume_setSubTextureData2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setSubTextureData

$prototype=void setTextureFormat(QImage::Format format)
$method=|void|setTextureFormat|QImage::Format

$prototype=QImage::Format textureFormat() const
$method=|QImage::Format|textureFormat|

$prototype=QImage renderSlice(Qt::Axis axis, int index)
$method=|QImage|renderSlice|Qt::Axis,int

%%
%% SIGNALS
%%

%% using namespace QtDataVisualization;

$prototype=void alphaMultiplierChanged( float mult )
$signalMethod=|void|alphaMultiplierChanged|float

$prototype=void colorTableChanged()
$signalMethod=|void|colorTableChanged|

$prototype=void drawSliceFramesChanged( bool enabled )
$signalMethod=|void|drawSliceFramesChanged|bool

$prototype=void drawSlicesChanged( bool enabled )
$signalMethod=|void|drawSlicesChanged|bool

$prototype=void preserveOpacityChanged( bool enabled )
$signalMethod=|void|preserveOpacityChanged|bool

$prototype=void sliceFrameColorChanged( const QColor & color )
$signalMethod=|void|sliceFrameColorChanged|const QColor &

$prototype=void sliceFrameGapsChanged( const QVector3D & values )
$signalMethod=|void|sliceFrameGapsChanged|const QVector3D &

$prototype=void sliceFrameThicknessesChanged( const QVector3D & values )
$signalMethod=|void|sliceFrameThicknessesChanged|const QVector3D &

$prototype=void sliceFrameWidthsChanged( const QVector3D & values )
$signalMethod=|void|sliceFrameWidthsChanged|const QVector3D &

$prototype=void sliceIndexXChanged( int value )
$signalMethod=|void|sliceIndexXChanged|int

$prototype=void sliceIndexYChanged( int value )
$signalMethod=|void|sliceIndexYChanged|int

$prototype=void sliceIndexZChanged( int value )
$signalMethod=|void|sliceIndexZChanged|int

%% TODO: implementar
%% $prototype=void textureDataChanged( QVector<uchar> * data )

$prototype=void textureDepthChanged( int value )
$signalMethod=|void|textureDepthChanged|int

$prototype=void textureFormatChanged( QImage::Format format )
$signalMethod=|void|textureFormatChanged|QImage::Format

$prototype=void textureHeightChanged( int value )
$signalMethod=|void|textureHeightChanged|int

$prototype=void textureWidthChanged( int value )
$signalMethod=|void|textureWidthChanged|int

$prototype=void useHighDefShaderChanged( bool enabled )
$signalMethod=|void|useHighDefShaderChanged|bool

#pragma ENDDUMP
