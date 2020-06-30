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

/*
[1]explicit QCustom3DVolume(QObject *parent = nullptr)
[2]explicit QCustom3DVolume(const QVector3D &position, const QVector3D &scaling, const QQuaternion &rotation, int textureWidth, int textureHeight, int textureDepth, QVector<uchar> *textureData, QImage::Format textureFormat, const QVector<QRgb> &colorTable, QObject *parent = nullptr)
*/

HB_FUNC_STATIC( QCUSTOM3DVOLUME_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QCustom3DVolume_new1();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual ~QCustom3DVolume()
$deleteMethod

%%
%% Q_PROPERTY(int textureWidth READ textureWidth WRITE setTextureWidth NOTIFY textureWidthChanged)
%%

$prototypeV2=int textureWidth() const

$prototypeV2=void setTextureWidth( int value )

%%
%% Q_PROPERTY(int textureHeight READ textureHeight WRITE setTextureHeight NOTIFY textureHeightChanged)
%%

$prototypeV2=int textureHeight() const

$prototypeV2=void setTextureHeight( int value )

%%
%% Q_PROPERTY(int textureDepth READ textureDepth WRITE setTextureDepth NOTIFY textureDepthChanged)
%%

$prototypeV2=int textureDepth() const

$prototypeV2=void setTextureDepth( int value )

%%
%% Q_PROPERTY(int sliceIndexX READ sliceIndexX WRITE setSliceIndexX NOTIFY sliceIndexXChanged)
%%

$prototypeV2=int sliceIndexX() const

$prototypeV2=void setSliceIndexX( int value )

%%
%% Q_PROPERTY(int sliceIndexY READ sliceIndexY WRITE setSliceIndexY NOTIFY sliceIndexYChanged)
%%

$prototypeV2=int sliceIndexY() const

$prototypeV2=void setSliceIndexY( int value )

%%
%% Q_PROPERTY(int sliceIndexZ READ sliceIndexZ WRITE setSliceIndexZ NOTIFY sliceIndexZChanged)
%%

$prototypeV2=int sliceIndexZ() const

$prototypeV2=void setSliceIndexZ( int value )

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

$prototypeV2=float alphaMultiplier() const

$prototypeV2=void setAlphaMultiplier( float mult )

%%
%% Q_PROPERTY(bool preserveOpacity READ preserveOpacity WRITE setPreserveOpacity NOTIFY preserveOpacityChanged)
%%

$prototypeV2=bool preserveOpacity() const

$prototypeV2=void setPreserveOpacity( bool enable )

%%
%% Q_PROPERTY(bool useHighDefShader READ useHighDefShader WRITE setUseHighDefShader NOTIFY useHighDefShaderChanged)
%%

$prototypeV2=bool useHighDefShader() const

$prototypeV2=void setUseHighDefShader( bool enable )

%%
%% Q_PROPERTY(bool drawSlices READ drawSlices WRITE setDrawSlices NOTIFY drawSlicesChanged)
%%

$prototypeV2=bool drawSlices() const

$prototypeV2=void setDrawSlices( bool enable )

%%
%% Q_PROPERTY(bool drawSliceFrames READ drawSliceFrames WRITE setDrawSliceFrames NOTIFY drawSliceFramesChanged)
%%

$prototypeV2=bool drawSliceFrames() const

$prototypeV2=void setDrawSliceFrames( bool enable )

%%
%% Q_PROPERTY(QColor sliceFrameColor READ sliceFrameColor WRITE setSliceFrameColor NOTIFY sliceFrameColorChanged)
%%

$prototypeV2=QColor sliceFrameColor() const

$prototypeV2=void setSliceFrameColor( const QColor & color )

%%
%% Q_PROPERTY(QVector3D sliceFrameWidths READ sliceFrameWidths WRITE setSliceFrameWidths NOTIFY sliceFrameWidthsChanged)
%%

$prototypeV2=QVector3D sliceFrameWidths() const

$prototypeV2=void setSliceFrameWidths( const QVector3D & values )

%%
%% Q_PROPERTY(QVector3D sliceFrameGaps READ sliceFrameGaps WRITE setSliceFrameGaps NOTIFY sliceFrameGapsChanged)
%%

$prototypeV2=QVector3D sliceFrameGaps() const

$prototypeV2=void setSliceFrameGaps( const QVector3D & values )

%%
%% Q_PROPERTY(QVector3D sliceFrameThicknesses READ sliceFrameThicknesses WRITE setSliceFrameThicknesses NOTIFY sliceFrameThicknessesChanged)
%%

$prototypeV2=QVector3D sliceFrameThicknesses() const

$prototypeV2=void setSliceFrameThicknesses( const QVector3D & values )

%%
%%
%%

$prototypeV2=void setTextureDimensions( int width, int height, int depth )

$prototypeV2=int textureDataWidth() const

$prototypeV2=void setSliceIndices( int x, int y, int z )

$prototype=QVector<uchar> *createTextureData(const QVector<QImage *> &images)
%% TODO: implementar
%% $method=|QVector<uchar> *|createTextureData|const QVector<QImage *> &

$prototype=void setSubTextureData(Qt::Axis axis, int index, const uchar *data)
$internalMethod=|void|setSubTextureData,setSubTextureData1|Qt::Axis,int,const uchar *

$prototype=void setSubTextureData(Qt::Axis axis, int index, const QImage &image)
$internalMethod=|void|setSubTextureData,setSubTextureData2|Qt::Axis,int,const QImage &

/*
[1]void setSubTextureData(Qt::Axis axis, int index, const uchar *data)
[2]void setSubTextureData(Qt::Axis axis, int index, const QImage &image)
*/

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
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setSubTextureData

$prototypeV2=void setTextureFormat( QImage::Format format )

$prototypeV2=QImage::Format textureFormat() const

$prototypeV2=QImage renderSlice( Qt::Axis axis, int index )

%%
%% SIGNALS
%%

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
