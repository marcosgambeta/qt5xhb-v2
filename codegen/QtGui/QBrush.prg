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

#include <QtCore/QVariant>

$prototype=QBrush ()
$internalConstructor=|new1|

$prototype=QBrush ( Qt::BrushStyle style )
$internalConstructor=|new2|Qt::BrushStyle

$prototype=QBrush ( const QColor & color, Qt::BrushStyle style = Qt::SolidPattern )
$internalConstructor=|new3|const QColor &,Qt::BrushStyle=Qt::SolidPattern

$prototype=QBrush ( Qt::GlobalColor color, Qt::BrushStyle style = Qt::SolidPattern )
$internalConstructor=|new4|Qt::GlobalColor,Qt::BrushStyle=Qt::SolidPattern

$prototype=QBrush ( const QColor & color, const QPixmap & pixmap )
$internalConstructor=|new5|const QColor &,const QPixmap &

$prototype=QBrush ( Qt::GlobalColor color, const QPixmap & pixmap )
$internalConstructor=|new6|Qt::GlobalColor,const QPixmap &

$prototype=QBrush ( const QPixmap & pixmap )
$internalConstructor=|new7|const QPixmap &

$prototype=QBrush ( const QImage & image )
$internalConstructor=|new8|const QImage &

$prototype=QBrush ( const QBrush & other )
$internalConstructor=|new9|const QBrush &

$prototype=QBrush ( const QGradient & gradient )
$internalConstructor=|new10|const QGradient &

/*
[ 1]QBrush ()
[ 2]QBrush ( Qt::BrushStyle style )
[ 3]QBrush ( const QColor & color, Qt::BrushStyle style = Qt::SolidPattern )
[ 4]QBrush ( Qt::GlobalColor color, Qt::BrushStyle style = Qt::SolidPattern )
[ 5]QBrush ( const QColor & color, const QPixmap & pixmap )
[ 6]QBrush ( Qt::GlobalColor color, const QPixmap & pixmap )
[ 7]QBrush ( const QPixmap & pixmap )
[ 8]QBrush ( const QImage & image )
[ 9]QBrush ( const QBrush & other )
[10]QBrush ( const QGradient & gradient )
*/

HB_FUNC_STATIC( QBRUSH_NEW )
{
  if( ISNUMPAR(0) )
  {
    QBrush_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QBrush_new2();
  }
  else if( ISBETWEEN(1,2) && (ISQCOLOR(1)||ISCHAR(1)) && ISOPTNUM(2) )
  {
    QBrush_new3();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    QBrush_new4();
  }
  else if( ISNUMPAR(2) && (ISQCOLOR(1)||ISCHAR(1)) && ISQPIXMAP(2) )
  {
    QBrush_new5();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQPIXMAP(2) )
  {
    QBrush_new6();
  }
  else if( ISNUMPAR(1) && ISQPIXMAP(1) )
  {
    QBrush_new7();
  }
  else if( ISNUMPAR(1) && ISQIMAGE(1) )
  {
    QBrush_new8();
  }
  else if( ISNUMPAR(1) && ISQBRUSH(1) )
  {
    QBrush_new9();
  }
%% Classe QGradient e derivadas (TODO: revisar e remover(?) comparacoes
  else if( ISNUMPAR(1) && ISQGRADIENT(1) )
  {
    QBrush_new10();
  }
  else if( ISNUMPAR(1) && ISQCONICALGRADIENT(1) )
  {
    QBrush_new10();
  }
  else if( ISNUMPAR(1) && ISQLINEARGRADIENT(1) )
  {
    QBrush_new10();
  }
  else if( ISNUMPAR(1) && ISQRADIALGRADIENT(1) )
  {
    QBrush_new10();
  }
%%
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=const QColor & color() const

$prototypeV2=const QGradient * gradient() const

$prototypeV2=bool isOpaque() const

%% TODO: revisar e corrigir(?)
$prototypeV2=const QMatrix & matrix() const

$prototype=void setColor ( const QColor & color )
$internalMethod=|void|setColor,setColor1|const QColor &

$prototype=void setColor ( Qt::GlobalColor color )
$internalMethod=|void|setColor,setColor2|Qt::GlobalColor

/*
[1]void setColor ( const QColor & color )
[2]void setColor ( Qt::GlobalColor color )
*/

HB_FUNC_STATIC( QBRUSH_SETCOLOR )
{
  if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
  {
    QBrush_setColor1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QBrush_setColor2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setColor

$prototypeV2=void setMatrix( const QMatrix & matrix )

$prototypeV2=void setStyle( Qt::BrushStyle style )

$prototypeV2=void setTexture( const QPixmap & pixmap )

$prototypeV2=void setTextureImage( const QImage & image )

$prototypeV2=void setTransform( const QTransform & matrix )

$prototypeV2=Qt::BrushStyle style() const

$prototypeV2=QPixmap texture() const

$prototypeV2=QImage textureImage() const

$prototypeV2=QTransform transform() const

$variantMethods

$extraMethods

#pragma ENDDUMP
