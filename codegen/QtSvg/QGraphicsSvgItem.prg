%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSvg

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGraphicsObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtSvg/QSvgRenderer>

$prototype=QGraphicsSvgItem ( QGraphicsItem * parent = nullptr )
$internalConstructor=|new1|QGraphicsItem *=nullptr

$prototype=QGraphicsSvgItem ( const QString & fileName, QGraphicsItem * parent = nullptr )
$internalConstructor=|new2|const QString &,QGraphicsItem *=nullptr

/*
[1]QGraphicsSvgItem ( QGraphicsItem * parent = 0 )
[2]QGraphicsSvgItem ( const QString & fileName, QGraphicsItem * parent = 0 )
*/

HB_FUNC_STATIC( QGRAPHICSSVGITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    QGraphicsSvgItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    QGraphicsSvgItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QString elementId () const
$method=|QString|elementId|

$prototype=QSize maximumCacheSize () const
$method=|QSize|maximumCacheSize|

$prototype=QSvgRenderer * renderer () const
$method=|QSvgRenderer *|renderer|

$prototype=void setElementId ( const QString & id )
$method=|void|setElementId|const QString &

$prototype=void setMaximumCacheSize ( const QSize & size )
$method=|void|setMaximumCacheSize|const QSize &

$prototype=void setSharedRenderer ( QSvgRenderer * renderer )
$method=|void|setSharedRenderer|QSvgRenderer *

$prototype=virtual QRectF boundingRect () const
$virtualMethod=|QRectF|boundingRect|

$prototype=virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = nullptr )
$virtualMethod=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *=nullptr

$prototype=virtual int type () const
$virtualMethod=|int|type|

#pragma ENDDUMP
