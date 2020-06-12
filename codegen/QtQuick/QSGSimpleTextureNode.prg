%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQuick

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QSGGeometryNode

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSGSimpleTextureNode()
$constructor=|new|

$deleteMethod

$prototypeV2=QSGTexture::Filtering filtering() const

$prototypeV2=QRectF rect() const

$prototype=void setFiltering(QSGTexture::Filtering filtering)
$method=|void|setFiltering|QSGTexture::Filtering

$prototype=void setRect(const QRectF & r)
$internalMethod=|void|setRect,setRect1|const QRectF &

$prototype=void setRect(qreal x, qreal y, qreal w, qreal h)
$internalMethod=|void|setRect,setRect2|qreal,qreal,qreal,qreal

/*
[1]void setRect(const QRectF & r)
[2]void setRect(qreal x, qreal y, qreal w, qreal h)
*/

HB_FUNC_STATIC( QSGSIMPLETEXTURENODE_SETRECT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QSGSimpleTextureNode_setRect1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QSGSimpleTextureNode_setRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setRect

$prototype=void setTexture(QSGTexture * texture)
$method=|void|setTexture|QSGTexture *

$prototypeV2=QSGTexture * texture() const

#pragma ENDDUMP
