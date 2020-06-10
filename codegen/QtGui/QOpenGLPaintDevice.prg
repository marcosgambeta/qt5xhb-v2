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

$beginClassFrom=QPaintDevice

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QOpenGLPaintDevice()
$internalConstructor=|new1|

$prototype=QOpenGLPaintDevice(const QSize &size)
$internalConstructor=|new2|const QSize &

$prototype=QOpenGLPaintDevice(int width, int height)
$internalConstructor=|new3|int,int

/*
[1]QOpenGLPaintDevice()
[2]QOpenGLPaintDevice(const QSize &size)
[3]QOpenGLPaintDevice(int width, int height)
*/

HB_FUNC_STATIC( QOPENGLPAINTDEVICE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QOpenGLPaintDevice_new1();
  }
  else if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QOpenGLPaintDevice_new2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QOpenGLPaintDevice_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=int devType() const

$prototypeV2=QPaintEngine * paintEngine() const

$prototypeV2=QOpenGLContext * context() const

$prototypeV2=QSize size() const

$prototype=void setSize(const QSize &size)
$method=|void|setSize|const QSize &

$prototype=void setDevicePixelRatio(qreal devicePixelRatio)
$method=|void|setDevicePixelRatio|qreal

$prototypeV2=qreal dotsPerMeterX() const

$prototypeV2=qreal dotsPerMeterY() const

$prototype=void setDotsPerMeterX(qreal)
$method=|void|setDotsPerMeterX|qreal

$prototype=void setDotsPerMeterY(qreal)
$method=|void|setDotsPerMeterY|qreal

$prototype=void setPaintFlipped(bool flipped)
$method=|void|setPaintFlipped|bool

$prototypeV2=bool paintFlipped() const

$prototypeV2=virtual void ensureActiveTarget()

#pragma ENDDUMP
