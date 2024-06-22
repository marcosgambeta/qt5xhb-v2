/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QOAuthHttpServerReplyHandler INHERIT QOAuthOobReplyHandler

   METHOD new
   METHOD delete
   METHOD callback
   METHOD callbackPath
   METHOD setCallbackPath
   METHOD callbackText
   METHOD setCallbackText
   METHOD port
   METHOD listen
   METHOD close
   METHOD isListening

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QOAuthHttpServerReplyHandler
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtNetworkAuth/QOAuthHttpServerReplyHandler>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtNetworkAuth/QOAuthHttpServerReplyHandler>
#endif
#endif

HB_FUNC_STATIC( QOAUTHHTTPSERVERREPLYHANDLER_NEW )
{
  if( ISBETWEEN(0, 1) && ( ISQOBJECT(1) || HB_ISNIL(1) ) )
  {
    /*
    QOAuthHttpServerReplyHandler( QObject * parent = nullptr )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
    auto obj = new QOAuthHttpServerReplyHandler( OPQOBJECT( 1, nullptr ) );
    Qt5xHb::returnNewObject(obj, false);
#endif

  }
  else if( ISBETWEEN(1, 2) && HB_ISNUM(1) && ( ISQOBJECT(2) || HB_ISNIL(2) ) )
  {
    /*
    QOAuthHttpServerReplyHandler( quint16 port, QObject * parent = nullptr )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
    auto obj = new QOAuthHttpServerReplyHandler( PQUINT16(1), OPQOBJECT( 2, nullptr ) );
    Qt5xHb::returnNewObject(obj, false);
#endif

  }
  else if( ISBETWEEN(2, 3) && ISQHOSTADDRESS(1) && HB_ISNUM(2) && ( ISQOBJECT(3) || HB_ISNIL(3) ) )
  {
    /*
    QOAuthHttpServerReplyHandler( const QHostAddress & address, quint16 port, QObject * parent = nullptr )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
    auto obj = new QOAuthHttpServerReplyHandler( *PQHOSTADDRESS(1), PQUINT16(2), OPQOBJECT( 3, nullptr ) );
    Qt5xHb::returnNewObject(obj, false);
#endif

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QOAuthHttpServerReplyHandler()
*/
HB_FUNC_STATIC( QOAUTHHTTPSERVERREPLYHANDLER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = qobject_cast<QOAuthHttpServerReplyHandler*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = nullptr;
    auto ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QString callback() const override
*/
HB_FUNC_STATIC( QOAUTHHTTPSERVERREPLYHANDLER_CALLBACK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = qobject_cast<QOAuthHttpServerReplyHandler*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->callback() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QString callbackPath() const
*/
HB_FUNC_STATIC( QOAUTHHTTPSERVERREPLYHANDLER_CALLBACKPATH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = qobject_cast<QOAuthHttpServerReplyHandler*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->callbackPath() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setCallbackPath( const QString & path )
*/
HB_FUNC_STATIC( QOAUTHHTTPSERVERREPLYHANDLER_SETCALLBACKPATH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = qobject_cast<QOAuthHttpServerReplyHandler*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setCallbackPath( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QString callbackText() const
*/
HB_FUNC_STATIC( QOAUTHHTTPSERVERREPLYHANDLER_CALLBACKTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = qobject_cast<QOAuthHttpServerReplyHandler*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->callbackText() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setCallbackText( const QString & text )
*/
HB_FUNC_STATIC( QOAUTHHTTPSERVERREPLYHANDLER_SETCALLBACKTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = qobject_cast<QOAuthHttpServerReplyHandler*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setCallbackText( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
quint16 port() const
*/
HB_FUNC_STATIC( QOAUTHHTTPSERVERREPLYHANDLER_PORT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = qobject_cast<QOAuthHttpServerReplyHandler*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQUINT16( obj->port() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
bool listen( const QHostAddress & address = QHostAddress::Any, quint16 port = 0 )
*/
HB_FUNC_STATIC( QOAUTHHTTPSERVERREPLYHANDLER_LISTEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = qobject_cast<QOAuthHttpServerReplyHandler*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 2) && ( ISQHOSTADDRESS(1) || HB_ISNIL(1) ) && ( HB_ISNUM(2) || HB_ISNIL(2) ) )
    {
#endif
      RBOOL( obj->listen( HB_ISNIL(1) ? QHostAddress::Any : *static_cast<QHostAddress*>(Qt5xHb::itemGetPtr(1)), OPQUINT16( 2, 0 ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void close()
*/
HB_FUNC_STATIC( QOAUTHHTTPSERVERREPLYHANDLER_CLOSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = qobject_cast<QOAuthHttpServerReplyHandler*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->close();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
bool isListening() const
*/
HB_FUNC_STATIC( QOAUTHHTTPSERVERREPLYHANDLER_ISLISTENING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = qobject_cast<QOAuthHttpServerReplyHandler*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isListening() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

#pragma ENDDUMP
