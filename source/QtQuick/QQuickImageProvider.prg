/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIMAGE
REQUEST QPIXMAP
REQUEST QQUICKTEXTUREFACTORY
#endif

CLASS QQuickImageProvider INHERIT QQmlImageProviderBase

   METHOD new
   METHOD delete
   METHOD flags
   METHOD imageType
   METHOD requestImage
   METHOD requestPixmap
   METHOD requestTexture

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQuickImageProvider
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QQuickImageProvider>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QQuickImageProvider>
#endif

/*
QQuickImageProvider(ImageType type, Flags flags = 0)
*/
HB_FUNC_STATIC( QQUICKIMAGEPROVIDER_NEW )
{
  if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    QQuickImageProvider * o = new QQuickImageProvider ( (QQmlImageProviderBase::ImageType) hb_parni(1), ISNIL(2)? (QQmlImageProviderBase::Flags) 0 : (QQmlImageProviderBase::Flags) hb_parni(2) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QQUICKIMAGEPROVIDER_DELETE )
{
  QQuickImageProvider * obj = (QQuickImageProvider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual Flags flags() const = 0
*/
HB_FUNC_STATIC( QQUICKIMAGEPROVIDER_FLAGS )
{
  QQuickImageProvider * obj = (QQuickImageProvider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->flags () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual ImageType imageType() const = 0
*/
HB_FUNC_STATIC( QQUICKIMAGEPROVIDER_IMAGETYPE )
{
  QQuickImageProvider * obj = (QQuickImageProvider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->imageType () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual QImage requestImage(const QString & id, QSize * size, const QSize & requestedSize)
*/
HB_FUNC_STATIC( QQUICKIMAGEPROVIDER_REQUESTIMAGE )
{
  QQuickImageProvider * obj = (QQuickImageProvider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISCHAR(1) && ISQSIZE(2) && ISQSIZE(3) )
    {
#endif
      QImage * ptr = new QImage( obj->requestImage ( PQSTRING(1), PQSIZE(2), *PQSIZE(3) ) );
      _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual QPixmap requestPixmap(const QString & id, QSize * size, const QSize & requestedSize)
*/
HB_FUNC_STATIC( QQUICKIMAGEPROVIDER_REQUESTPIXMAP )
{
  QQuickImageProvider * obj = (QQuickImageProvider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISCHAR(1) && ISQSIZE(2) && ISQSIZE(3) )
    {
#endif
      QPixmap * ptr = new QPixmap( obj->requestPixmap ( PQSTRING(1), PQSIZE(2), *PQSIZE(3) ) );
      _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual QQuickTextureFactory * requestTexture(const QString & id, QSize * size, const QSize & requestedSize)
*/
HB_FUNC_STATIC( QQUICKIMAGEPROVIDER_REQUESTTEXTURE )
{
  QQuickImageProvider * obj = (QQuickImageProvider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISCHAR(1) && ISQSIZE(2) && ISQSIZE(3) )
    {
#endif
      QQuickTextureFactory * ptr = obj->requestTexture ( PQSTRING(1), PQSIZE(2), *PQSIZE(3) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QQUICKTEXTUREFACTORY" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
