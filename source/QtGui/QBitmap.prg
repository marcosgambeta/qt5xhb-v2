/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QBitmap INHERIT QPixmap

   METHOD new
   METHOD delete
   METHOD clear
   METHOD transformed
   METHOD fromData
   METHOD fromImage
   METHOD toVariant
   METHOD fromVariant

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QBitmap
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QBitmap>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtGui/QBitmap>
#endif

#include <QtCore/QVariant>

HB_FUNC_STATIC( QBITMAP_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QBitmap()
    */
    auto obj = new QBitmap();
    Qt5xHb::returnNewObject(obj, true);

  }
  else if( ISNUMPAR(1) && ISQPIXMAP(1) )
  {
    /*
    QBitmap( const QPixmap & pixmap )
    */
    auto obj = new QBitmap( *PQPIXMAP(1) );
    Qt5xHb::returnNewObject(obj, true);

  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    /*
    QBitmap( int width, int height )
    */
    auto obj = new QBitmap( PINT(1), PINT(2) );
    Qt5xHb::returnNewObject(obj, true);

  }
  else if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    /*
    QBitmap( const QSize & size )
    */
    auto obj = new QBitmap( *PQSIZE(1) );
    Qt5xHb::returnNewObject(obj, true);

  }
  else if( ISBETWEEN(1, 2) && HB_ISCHAR(1) && ( HB_ISCHAR(2) || HB_ISNIL(2) ) )
  {
    /*
    QBitmap( const QString & fileName, const char * format = nullptr )
    */
    auto obj = new QBitmap( PQSTRING(1), OPCONSTCHAR( 2, nullptr ) );
    Qt5xHb::returnNewObject(obj, true);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QBITMAP_DELETE )
{
  auto obj = static_cast<QBitmap*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    auto ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void clear()
*/
HB_FUNC_STATIC( QBITMAP_CLEAR )
{
  auto obj = static_cast<QBitmap*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QBitmap transformed( const QTransform & matrix ) const
*/
HB_FUNC_STATIC( QBITMAP_TRANSFORMED )
{
  auto obj = static_cast<QBitmap*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTRANSFORM(1) )
    {
#endif
      auto ptr = new QBitmap( obj->transformed( *PQTRANSFORM(1) ) );
      Qt5xHb::createReturnClass(ptr, "QBITMAP", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
static QBitmap fromData( const QSize & size, const uchar * bits, QImage::Format monoFormat = QImage::Format_MonoLSB )
*/
HB_FUNC_STATIC( QBITMAP_FROMDATA )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(2, 3) && ISQSIZE(1) && HB_ISCHAR(2) && ( HB_ISNUM(3) || HB_ISNIL(3) ) )
  {
#endif
    auto ptr = new QBitmap( QBitmap::fromData( *PQSIZE(1), PCONSTUCHAR(2), HB_ISNIL(3) ? static_cast<QImage::Format >( QImage::Format_MonoLSB ) : static_cast<QImage::Format >( hb_parni(3) ) ) );
    Qt5xHb::createReturnClass(ptr, "QBITMAP", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QBitmap fromImage( const QImage & image, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
HB_FUNC_STATIC( QBITMAP_FROMIMAGE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(1, 2) && ISQIMAGE(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) )
  {
#endif
    auto ptr = new QBitmap( QBitmap::fromImage( *PQIMAGE(1), HB_ISNIL(2) ? static_cast<Qt::ImageConversionFlags >( Qt::AutoColor ) : static_cast<Qt::ImageConversionFlags >( hb_parni(2) ) ) );
    Qt5xHb::createReturnClass(ptr, "QBITMAP", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
QVariant toVariant()
*/
void QBitmap_toVariant1()
{
  auto obj = static_cast<QBitmap*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    QVariant * variant = new QVariant();
    variant->setValue<QBitmap>( *obj );
    Qt5xHb::createReturnClass( variant, "QVARIANT", true);
  }
}

/*
static QVariant toVariant( const QBitmap & )
*/
void QBitmap_toVariant2()
{
  QBitmap * bitmap = (QBitmap *) hb_itemGetPtr( hb_objSendMsg(hb_param( 1, HB_IT_OBJECT ), "POINTER", 0) );
  QVariant * variant = new QVariant();
  variant->setValue<QBitmap>( *bitmap );
  Qt5xHb::createReturnClass( variant, "QVARIANT", true);
}

//[1]QVariant toVariant()
//[2]static QVariant toVariant( const QBitmap & )

HB_FUNC_STATIC( QBITMAP_TOVARIANT )
{
  if( ISNUMPAR(0) )
  {
    QBitmap_toVariant1();
  }
  else if( ISNUMPAR(1) && ISQBITMAP(1) )
  {
    QBitmap_toVariant2();
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
static QBitmap fromVariant( const QVariant & )
*/
HB_FUNC_STATIC( QBITMAP_FROMVARIANT )
{
  if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    QVariant * variant = (QVariant *) hb_itemGetPtr( hb_objSendMsg(hb_param( 1, HB_IT_OBJECT ), "POINTER", 0) );
    QBitmap * bitmap = new QBitmap( variant->value<QBitmap>() );
    Qt5xHb::createReturnClass( bitmap, "QBITMAP", true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

#pragma ENDDUMP
