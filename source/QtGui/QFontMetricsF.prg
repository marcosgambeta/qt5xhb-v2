/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QSIZEF
#endif

CLASS QFontMetricsF

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD ascent
   METHOD averageCharWidth
   METHOD boundingRect
   METHOD descent
   METHOD elidedText
   METHOD height
   METHOD inFontUcs4
   METHOD leading
   METHOD lineSpacing
   METHOD lineWidth
   METHOD maxWidth
   METHOD minLeftBearing
   METHOD minRightBearing
   METHOD overlinePos
   METHOD size
   METHOD strikeOutPos
   METHOD tightBoundingRect
   METHOD underlinePos
   METHOD width
   METHOD xHeight

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QFontMetricsF
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QFontMetricsF>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtGui/QFontMetricsF>
#endif

HB_FUNC_STATIC( QFONTMETRICSF_NEW )
{
  if( ISNUMPAR(1) && ISQFONT(1) )
  {
    /*
    QFontMetricsF( const QFont & font )
    */
    auto obj = new QFontMetricsF( *PQFONT(1) );
    Qt5xHb::returnNewObject(obj, true);

  }
  else if( ISNUMPAR(2) && ISQFONT(1) && HB_ISOBJECT(2) )
  {
    /*
    QFontMetricsF( const QFont & font, QPaintDevice * paintdevice )
    */
    auto obj = new QFontMetricsF( *PQFONT(1), PQPAINTDEVICE(2) );
    Qt5xHb::returnNewObject(obj, true);

  }
  else if( ISNUMPAR(1) && ISQFONTMETRICS(1) )
  {
    /*
    QFontMetricsF( const QFontMetrics & fontMetrics )
    */
    auto obj = new QFontMetricsF( *PQFONTMETRICS(1) );
    Qt5xHb::returnNewObject(obj, true);

  }
  else if( ISNUMPAR(1) && ISQFONTMETRICSF(1) )
  {
    /*
    QFontMetricsF( const QFontMetricsF & fm )
    */
    auto obj = new QFontMetricsF( *PQFONTMETRICSF(1) );
    Qt5xHb::returnNewObject(obj, true);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QFONTMETRICSF_DELETE )
{
  auto obj = static_cast<QFontMetricsF*>(Qt5xHb::itemGetPtrStackSelfItem());

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
qreal ascent() const
*/
HB_FUNC_STATIC( QFONTMETRICSF_ASCENT )
{
  auto obj = static_cast<QFontMetricsF*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->ascent() );
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
qreal averageCharWidth() const
*/
HB_FUNC_STATIC( QFONTMETRICSF_AVERAGECHARWIDTH )
{
  auto obj = static_cast<QFontMetricsF*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->averageCharWidth() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QFONTMETRICSF_BOUNDINGRECT )
{
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    QRectF boundingRect( const QString & text ) const
    */
    auto obj = static_cast<QFontMetricsF*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      auto ptr = new QRectF( obj->boundingRect( PQSTRING(1) ) );
      Qt5xHb::createReturnClass(ptr, "QRECTF", true);
    }

  }
  else if( ISNUMPAR(1) && ISQCHAR(1) )
  {
    /*
    QRectF boundingRect( QChar ch ) const
    */
    auto obj = static_cast<QFontMetricsF*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      auto ptr = new QRectF( obj->boundingRect( *PQCHAR(1) ) );
      Qt5xHb::createReturnClass(ptr, "QRECTF", true);
    }

  }
  else if( ISBETWEEN(3, 5) && ISQRECTF(1) && HB_ISNUM(2) && HB_ISCHAR(3) && ( HB_ISNUM(4) || HB_ISNIL(4) ) && ISOPTARRAY(5) )
  {
    /*
    QRectF boundingRect( const QRectF & rect, int flags, const QString & text, int tabStops = 0, int * tabArray = nullptr ) const
    */
    auto obj = static_cast<QFontMetricsF*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      int par5;
      auto ptr = new QRectF( obj->boundingRect( *PQRECTF(1), PINT(2), PQSTRING(3), OPINT( 4, 0 ), &par5 ) );
      Qt5xHb::createReturnClass(ptr, "QRECTF", true);
      hb_storni( par5, 5 );
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
qreal descent() const
*/
HB_FUNC_STATIC( QFONTMETRICSF_DESCENT )
{
  auto obj = static_cast<QFontMetricsF*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->descent() );
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
QString elidedText( const QString & text, Qt::TextElideMode mode, qreal width, int flags = 0 ) const
*/
HB_FUNC_STATIC( QFONTMETRICSF_ELIDEDTEXT )
{
  auto obj = static_cast<QFontMetricsF*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3, 4) && HB_ISCHAR(1) && HB_ISNUM(2) && HB_ISNUM(3) && ( HB_ISNUM(4) || HB_ISNIL(4) ) )
    {
#endif
      RQSTRING( obj->elidedText( PQSTRING(1), static_cast<Qt::TextElideMode>( hb_parni(2) ), PQREAL(3), OPINT( 4, 0 ) ) );
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
qreal height() const
*/
HB_FUNC_STATIC( QFONTMETRICSF_HEIGHT )
{
  auto obj = static_cast<QFontMetricsF*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->height() );
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
bool inFontUcs4( uint ch ) const
*/
HB_FUNC_STATIC( QFONTMETRICSF_INFONTUCS4 )
{
  auto obj = static_cast<QFontMetricsF*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->inFontUcs4( PUINT(1) ) );
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
qreal leading() const
*/
HB_FUNC_STATIC( QFONTMETRICSF_LEADING )
{
  auto obj = static_cast<QFontMetricsF*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->leading() );
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
qreal lineSpacing() const
*/
HB_FUNC_STATIC( QFONTMETRICSF_LINESPACING )
{
  auto obj = static_cast<QFontMetricsF*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->lineSpacing() );
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
qreal lineWidth() const
*/
HB_FUNC_STATIC( QFONTMETRICSF_LINEWIDTH )
{
  auto obj = static_cast<QFontMetricsF*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->lineWidth() );
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
qreal maxWidth() const
*/
HB_FUNC_STATIC( QFONTMETRICSF_MAXWIDTH )
{
  auto obj = static_cast<QFontMetricsF*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->maxWidth() );
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
qreal minLeftBearing() const
*/
HB_FUNC_STATIC( QFONTMETRICSF_MINLEFTBEARING )
{
  auto obj = static_cast<QFontMetricsF*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->minLeftBearing() );
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
qreal minRightBearing() const
*/
HB_FUNC_STATIC( QFONTMETRICSF_MINRIGHTBEARING )
{
  auto obj = static_cast<QFontMetricsF*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->minRightBearing() );
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
qreal overlinePos() const
*/
HB_FUNC_STATIC( QFONTMETRICSF_OVERLINEPOS )
{
  auto obj = static_cast<QFontMetricsF*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->overlinePos() );
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
QSizeF size( int flags, const QString & text, int tabStops = 0, int * tabArray = nullptr ) const
*/
HB_FUNC_STATIC( QFONTMETRICSF_SIZE )
{
  auto obj = static_cast<QFontMetricsF*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2, 4) && HB_ISNUM(1) && HB_ISCHAR(2) && ( HB_ISNUM(3) || HB_ISNIL(3) ) && ( HB_ISNUM(4) || HB_ISNIL(4) ) )
    {
#endif
      int par4;
      auto ptr = new QSizeF( obj->size( PINT(1), PQSTRING(2), OPINT( 3, 0 ), &par4 ) );
      Qt5xHb::createReturnClass(ptr, "QSIZEF", true);
      hb_storni( par4, 4 );
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
qreal strikeOutPos() const
*/
HB_FUNC_STATIC( QFONTMETRICSF_STRIKEOUTPOS )
{
  auto obj = static_cast<QFontMetricsF*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->strikeOutPos() );
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
QRectF tightBoundingRect( const QString & text ) const
*/
HB_FUNC_STATIC( QFONTMETRICSF_TIGHTBOUNDINGRECT )
{
  auto obj = static_cast<QFontMetricsF*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      auto ptr = new QRectF( obj->tightBoundingRect( PQSTRING(1) ) );
      Qt5xHb::createReturnClass(ptr, "QRECTF", true);
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
qreal underlinePos() const
*/
HB_FUNC_STATIC( QFONTMETRICSF_UNDERLINEPOS )
{
  auto obj = static_cast<QFontMetricsF*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->underlinePos() );
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
qreal width( const QString & text ) const
*/
HB_FUNC_STATIC( QFONTMETRICSF_WIDTH )
{
  auto obj = static_cast<QFontMetricsF*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RQREAL( obj->width( PQSTRING(1) ) );
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
qreal xHeight() const
*/
HB_FUNC_STATIC( QFONTMETRICSF_XHEIGHT )
{
  auto obj = static_cast<QFontMetricsF*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->xHeight() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QFONTMETRICSF_NEWFROM )
{
  auto self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QFONTMETRICSF_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QFONTMETRICSF_NEWFROM );
}

HB_FUNC_STATIC( QFONTMETRICSF_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QFONTMETRICSF_NEWFROM );
}

HB_FUNC_STATIC( QFONTMETRICSF_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QFONTMETRICSF_SETSELFDESTRUCTION )
{
  auto self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    auto des = hb_itemPutL(nullptr, hb_parl(1));
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
