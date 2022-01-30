/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QTextDecoder

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD toUnicode
   METHOD hasFailure

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTextDecoder
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QTextDecoder>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtCore/QTextDecoder>
#endif

HB_FUNC_STATIC( QTEXTDECODER_NEW )
{
  if( ISNUMPAR( 1 ) && ISQTEXTCODEC( 1 ) )
  {
    /*
    QTextDecoder( const QTextCodec * codec )
    */
    auto obj = new QTextDecoder( PQTEXTCODEC( 1 ) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISNUMPAR( 2 ) && ISQTEXTCODEC( 1 ) && HB_ISNUM( 2 ) )
  {
    /*
    QTextDecoder( const QTextCodec * codec, QTextCodec::ConversionFlags flags )
    */
    auto obj = new QTextDecoder( PQTEXTCODEC( 1 ), static_cast<QTextCodec::ConversionFlags>( hb_parni( 2 ) ) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEXTDECODER_DELETE )
{
  auto obj = static_cast< QTextDecoder * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, nullptr );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void toUnicode(QString * target, const char * chars, int len)
*/

HB_FUNC_STATIC( QTEXTDECODER_TOUNICODE )
{
  if( ISNUMPAR( 2 ) && HB_ISCHAR( 1 ) && HB_ISNUM( 2 ) )
  {
    /*
    QString toUnicode( const char * chars, int len )
    */
    auto obj = static_cast< QTextDecoder * >( Qt5xHb::itemGetPtrStackSelfItem() );

    if( obj != nullptr )
    {
      RQSTRING( obj->toUnicode( PCONSTCHAR( 1 ), PINT( 2 ) ) );
    }

  }
  else if( ISNUMPAR( 1 ) && ISQBYTEARRAY( 1 ) )
  {
    /*
    QString toUnicode( const QByteArray & ba )
    */
    auto obj = static_cast< QTextDecoder * >( Qt5xHb::itemGetPtrStackSelfItem() );

    if( obj != nullptr )
    {
      RQSTRING( obj->toUnicode( *PQBYTEARRAY( 1 ) ) );
    }

  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool hasFailure() const
*/
HB_FUNC_STATIC( QTEXTDECODER_HASFAILURE )
{
  auto obj = static_cast< QTextDecoder * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->hasFailure() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

HB_FUNC_STATIC( QTEXTDECODER_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT( 1 ) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, static_cast< void * >( hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 ) ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( nullptr, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER( 1 ) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, static_cast< void * >( hb_itemGetPtr( hb_param( 1, HB_IT_POINTER ) ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( nullptr, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QTEXTDECODER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTEXTDECODER_NEWFROM );
}

HB_FUNC_STATIC( QTEXTDECODER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTEXTDECODER_NEWFROM );
}

HB_FUNC_STATIC( QTEXTDECODER_SELFDESTRUCTION )
{
  hb_retl( static_cast< bool >( hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) ) );
}

HB_FUNC_STATIC( QTEXTDECODER_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG( 1 ) )
  {
    PHB_ITEM des = hb_itemPutL( nullptr, hb_parl( 1 ) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
