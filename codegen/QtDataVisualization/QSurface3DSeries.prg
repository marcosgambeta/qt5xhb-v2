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

$beginClassFrom=QAbstract3DSeries

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit QSurface3DSeries(QObject *parent = nullptr)
$internalConstructor=|new1|QObject *=nullptr

$prototype=explicit QSurface3DSeries(QSurfaceDataProxy *dataProxy, QObject *parent = nullptr)
$internalConstructor=|new2|QSurfaceDataProxy *,QObject *=nullptr

$prototype=explicit QSurface3DSeries(QSurface3DSeriesPrivate *d, QObject *parent = nullptr) [protected]

/*
[1]explicit QSurface3DSeries(QObject *parent = nullptr)
[2]explicit QSurface3DSeries(QSurfaceDataProxy *dataProxy, QObject *parent = nullptr)
*/

HB_FUNC_STATIC( QSURFACE3DSERIES_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QSurface3DSeries_new1();
  }
  else if( ISBETWEEN(1,2) && ISQSURFACEDATAPROXY(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QSurface3DSeries_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual ~QSurface3DSeries()
$deleteMethod

%%
%% Q_PROPERTY(QSurfaceDataProxy *dataProxy READ dataProxy WRITE setDataProxy NOTIFY dataProxyChanged)
%%

$prototypeV2=QSurfaceDataProxy * dataProxy() const

$prototypeV2=void setDataProxy( QSurfaceDataProxy * proxy )

%%
%% Q_PROPERTY(QPoint selectedPoint READ selectedPoint WRITE setSelectedPoint NOTIFY selectedPointChanged)
%%

$prototypeV2=QPoint selectedPoint() const

$prototypeV2=void setSelectedPoint( const QPoint & position )

%%
%% Q_PROPERTY(bool flatShadingEnabled READ isFlatShadingEnabled WRITE setFlatShadingEnabled NOTIFY flatShadingEnabledChanged)
%%

$prototypeV2=bool isFlatShadingEnabled() const

$prototypeV2=void setFlatShadingEnabled( bool enabled )

%%
%% Q_PROPERTY(bool flatShadingSupported READ isFlatShadingSupported NOTIFY flatShadingSupportedChanged)
%%

$prototypeV2=bool isFlatShadingSupported() const

%%
%% Q_PROPERTY(DrawFlags drawMode READ drawMode WRITE setDrawMode NOTIFY drawModeChanged)
%%

$prototypeV2=QSurface3DSeries::DrawFlags drawMode() const

$prototypeV2=void setDrawMode( QSurface3DSeries::DrawFlags mode )

%%
%% Q_PROPERTY(QImage texture READ texture WRITE setTexture NOTIFY textureChanged)
%%

$prototypeV2=QImage texture() const

$prototypeV2=void setTexture( const QImage & texture )

%%
%% Q_PROPERTY(QString textureFile READ textureFile WRITE setTextureFile NOTIFY textureFileChanged)
%%

$prototypeV2=QString textureFile() const

$prototypeV2=void setTextureFile( const QString & filename )

%%
%%
%%

$prototypeV2=static QPoint invalidSelectionPosition()

%%
%% SIGNALS
%%

$prototype=void dataProxyChanged( QSurfaceDataProxy * proxy )
$signalMethod=|void|dataProxyChanged|QSurfaceDataProxy *

$prototype=void drawModeChanged( QSurface3DSeries::DrawFlags mode )
$signalMethod=|void|drawModeChanged|QSurface3DSeries::DrawFlags

$prototype=void flatShadingEnabledChanged( bool enable )
$signalMethod=|void|flatShadingEnabledChanged|bool

$prototype=void flatShadingSupportedChanged( bool enable )
$signalMethod=|void|flatShadingSupportedChanged|bool

$prototype=void selectedPointChanged( const QPoint & position )
$signalMethod=|void|selectedPointChanged|const QPoint &

$prototype=void textureChanged( const QImage & image )
$signalMethod=|void|textureChanged|const QImage &

$prototype=void textureFileChanged( const QString & filename )
$signalMethod=|void|textureFileChanged|const QString &

#pragma ENDDUMP
