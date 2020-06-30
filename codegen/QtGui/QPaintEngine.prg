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

$deleteMethod

$prototypeV2=virtual bool begin( QPaintDevice * pdev ) = 0

$prototype=virtual void drawEllipse ( const QRectF & rect )
$internalVirtualMethod=|void|drawEllipse,drawEllipse1|const QRectF &

$prototype=virtual void drawEllipse ( const QRect & rect )
$internalVirtualMethod=|void|drawEllipse,drawEllipse2|const QRect &

/*
[1]virtual void drawEllipse ( const QRectF & rect )
[2]virtual void drawEllipse ( const QRect & rect )
*/

HB_FUNC_STATIC( QPAINTENGINE_DRAWELLIPSE )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QPaintEngine_drawEllipse1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QPaintEngine_drawEllipse2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=drawEllipse

$prototypeV2=virtual void drawImage( const QRectF & rectangle, const QImage & image, const QRectF & sr, Qt::ImageConversionFlags flags = Qt::AutoColor )

%% TODO: implementar reconhecimento de 'const QLineF *' e 'const QLine *'

/*
[1]virtual void drawLines ( const QLineF * lines, int lineCount )
[2]virtual void drawLines ( const QLine * lines, int lineCount )
*/

HB_FUNC_STATIC( QPAINTENGINE_DRAWLINES )
{
}
$addMethod=drawLines

$prototypeV2=virtual void drawPath( const QPainterPath & path )

$prototypeV2=virtual void drawPixmap( const QRectF & r, const QPixmap & pm, const QRectF & sr ) = 0

%% TODO: implementar reconhecimento de 'const QPointF *' e 'const QPoint *'

/*
[1]virtual void drawPoints ( const QPointF * points, int pointCount )
[2]virtual void drawPoints ( const QPoint * points, int pointCount )
*/

HB_FUNC_STATIC( QPAINTENGINE_DRAWPOINTS )
{
}
$addMethod=drawPoints

%% TODO: implementar reconhecimento de 'const QPointF *' e 'const QPoint *'

/*
[1]virtual void drawPolygon ( const QPointF * points, int pointCount, PolygonDrawMode mode )
[2]virtual void drawPolygon ( const QPoint * points, int pointCount, PolygonDrawMode mode )
*/

HB_FUNC_STATIC( QPAINTENGINE_DRAWPOLYGON )
{
}
$addMethod=drawPolygon

%% TODO: implementar reconhecimento de 'const QRectF *' e 'const QRect *'

/*
[1]virtual void drawRects ( const QRectF * rects, int rectCount )
[2]virtual void drawRects ( const QRect * rects, int rectCount )
*/

HB_FUNC_STATIC( QPAINTENGINE_DRAWRECTS )
{
}
$addMethod=drawRects

$prototypeV2=virtual void drawTextItem( const QPointF & p, const QTextItem & textItem )

$prototypeV2=virtual void drawTiledPixmap( const QRectF & rect, const QPixmap & pixmap, const QPointF & p )

$prototypeV2=virtual bool end() = 0

$prototypeV2=bool hasFeature( QPaintEngine::PaintEngineFeatures feature ) const

$prototypeV2=bool isActive() const

$prototypeV2=QPaintDevice * paintDevice() const

$prototypeV2=QPainter * painter() const

$prototypeV2=void setActive( bool state )

$prototypeV2=virtual QPaintEngine::Type type() const = 0

$prototypeV2=virtual void updateState( const QPaintEngineState & state ) = 0

$extraMethods

#pragma ENDDUMP
