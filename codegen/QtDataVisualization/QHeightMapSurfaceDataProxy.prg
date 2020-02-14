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

$beginClassFrom=QSurfaceDataProxy

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit QHeightMapSurfaceDataProxy(QObject *parent = nullptr)
$internalConstructor=|new1|QObject *=nullptr

$prototype=explicit QHeightMapSurfaceDataProxy(const QImage &image, QObject *parent = nullptr)
$internalConstructor=|new2|const QImage &,QObject *=nullptr

$prototype=explicit QHeightMapSurfaceDataProxy(const QString &filename, QObject *parent = nullptr)
$internalConstructor=|new3|const QString &,QObject *=nullptr

$prototype=explicit QHeightMapSurfaceDataProxy(QHeightMapSurfaceDataProxyPrivate *d, QObject *parent = nullptr) [protected]

//[1]explicit QHeightMapSurfaceDataProxy(QObject *parent = nullptr)
//[2]explicit QHeightMapSurfaceDataProxy(const QImage &image, QObject *parent = nullptr)
//[3]explicit QHeightMapSurfaceDataProxy(const QString &filename, QObject *parent = nullptr)

HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QHeightMapSurfaceDataProxy_new1();
  }
  else if( ISBETWEEN(1,2) && ISQIMAGE(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QHeightMapSurfaceDataProxy_new2();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QHeightMapSurfaceDataProxy_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual ~QHeightMapSurfaceDataProxy()
$deleteMethod

%%
%% Q_PROPERTY(QImage heightMap READ heightMap WRITE setHeightMap NOTIFY heightMapChanged)
%%

$prototype=QImage heightMap() const
$method=|QImage|heightMap|

$prototype=void setHeightMap(const QImage &image)
$method=|void|setHeightMap|const QImage &

%%
%% Q_PROPERTY(QString heightMapFile READ heightMapFile WRITE setHeightMapFile NOTIFY heightMapFileChanged)
%%

$prototype=QString heightMapFile() const
$method=|QString|heightMapFile|

$prototype=void setHeightMapFile(const QString &filename)
$method=|void|setHeightMapFile|const QString &

%%
%% Q_PROPERTY(float minXValue READ minXValue WRITE setMinXValue NOTIFY minXValueChanged)
%%

$prototype=float minXValue() const
$method=|float|minXValue|

$prototype=void setMinXValue(float min)
$method=|void|setMinXValue|float

%%
%% Q_PROPERTY(float maxXValue READ maxXValue WRITE setMaxXValue NOTIFY maxXValueChanged)
%%

$prototype=float maxXValue() const
$method=|float|maxXValue|

$prototype=void setMaxXValue(float max)
$method=|void|setMaxXValue|float

%%
%% Q_PROPERTY(float minZValue READ minZValue WRITE setMinZValue NOTIFY minZValueChanged)
%%

$prototype=float minZValue() const
$method=|float|minZValue|

$prototype=void setMinZValue(float min)
$method=|void|setMinZValue|float

%%
%% Q_PROPERTY(float maxZValue READ maxZValue WRITE setMaxZValue NOTIFY maxZValueChanged)
%%

$prototype=float maxZValue() const
$method=|float|maxZValue|

$prototype=void setMaxZValue(float max)
$method=|void|setMaxZValue|float

%%
%%
%%

$prototype=void setValueRanges(float minX, float maxX, float minZ, float maxZ)
$method=|void|setValueRanges|float,float,float,float

%%
%% SIGNALS
%%

%% using namespace QtDataVisualization;

$prototype=void heightMapChanged( const QImage & image )
$signalMethod=|void|heightMapChanged|const QImage &

$prototype=void heightMapFileChanged( const QString & filename )
$signalMethod=|void|heightMapFileChanged|const QString &

$prototype=void minXValueChanged( float value )
$signalMethod=|void|minXValueChanged|float

$prototype=void maxXValueChanged( float value )
$signalMethod=|void|maxXValueChanged|float

$prototype=void minZValueChanged( float value )
$signalMethod=|void|minZValueChanged|float

$prototype=void maxZValueChanged( float value )
$signalMethod=|void|maxZValueChanged|float

#pragma ENDDUMP
