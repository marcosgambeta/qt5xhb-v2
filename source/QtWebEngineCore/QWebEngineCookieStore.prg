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

CLASS QWebEngineCookieStore INHERIT QObject

   METHOD delete
   METHOD setCookie
   METHOD deleteCookie
   METHOD deleteSessionCookies
   METHOD deleteAllCookies
   METHOD loadAllCookies

   METHOD onCookieAdded
   METHOD onCookieRemoved

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QWebEngineCookieStore
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWebEngineCore/QWebEngineCookieStore>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtWebEngineCore/QWebEngineCookieStore>
#endif

/*
virtual ~QWebEngineCookieStore()
*/
HB_FUNC_STATIC( QWEBENGINECOOKIESTORE_DELETE )
{
  auto obj = qobject_cast<QWebEngineCookieStore*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
}

/*
void setCookie( const QNetworkCookie & cookie, const QUrl & origin = QUrl() )
*/
HB_FUNC_STATIC( QWEBENGINECOOKIESTORE_SETCOOKIE )
{
  auto obj = qobject_cast<QWebEngineCookieStore*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && ISQNETWORKCOOKIE(1) && (ISQURL(2) || HB_ISNIL(2)))
    {
#endif
      obj->setCookie( *PQNETWORKCOOKIE(1), HB_ISNIL(2) ? QUrl() : *static_cast<QUrl*>(Qt5xHb::itemGetPtr(2)));
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
void deleteCookie( const QNetworkCookie & cookie, const QUrl & origin = QUrl() )
*/
HB_FUNC_STATIC( QWEBENGINECOOKIESTORE_DELETECOOKIE )
{
  auto obj = qobject_cast<QWebEngineCookieStore*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && ISQNETWORKCOOKIE(1) && (ISQURL(2) || HB_ISNIL(2)))
    {
#endif
      obj->deleteCookie( *PQNETWORKCOOKIE(1), HB_ISNIL(2) ? QUrl() : *static_cast<QUrl*>(Qt5xHb::itemGetPtr(2)));
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
void deleteSessionCookies()
*/
HB_FUNC_STATIC( QWEBENGINECOOKIESTORE_DELETESESSIONCOOKIES )
{
  auto obj = qobject_cast<QWebEngineCookieStore*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->deleteSessionCookies();
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
void deleteAllCookies()
*/
HB_FUNC_STATIC( QWEBENGINECOOKIESTORE_DELETEALLCOOKIES )
{
  auto obj = qobject_cast<QWebEngineCookieStore*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->deleteAllCookies();
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
void loadAllCookies()
*/
HB_FUNC_STATIC( QWEBENGINECOOKIESTORE_LOADALLCOOKIES )
{
  auto obj = qobject_cast<QWebEngineCookieStore*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->loadAllCookies();
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
void cookieAdded( const QNetworkCookie & cookie )
*/
HB_FUNC_STATIC( QWEBENGINECOOKIESTORE_ONCOOKIEADDED )
{
  auto sender = qobject_cast<QWebEngineCookieStore*>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("cookieAdded(QNetworkCookie)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender,
                                           &QWebEngineCookieStore::cookieAdded,
                                           [sender, indexOfCodeBlock]
                                           (const QNetworkCookie & arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QWEBENGINECOOKIESTORE");
            auto pArg1 = Qt5xHb::Signals_return_object( (void *) &arg1, "QNETWORKCOOKIE");
            hb_vmEvalBlockV(cb, 2, pSender, pArg1);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
}

/*
void cookieRemoved( const QNetworkCookie & cookie )
*/
HB_FUNC_STATIC( QWEBENGINECOOKIESTORE_ONCOOKIEREMOVED )
{
  auto sender = qobject_cast<QWebEngineCookieStore*>(Qt5xHb::getQObjectPointerFromSelfItem());
  
  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("cookieRemoved(QNetworkCookie)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender,
                                           &QWebEngineCookieStore::cookieRemoved,
                                           [sender, indexOfCodeBlock]
                                           (const QNetworkCookie & arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QWEBENGINECOOKIESTORE");
            auto pArg1 = Qt5xHb::Signals_return_object( (void *) &arg1, "QNETWORKCOOKIE");
            hb_vmEvalBlockV(cb, 2, pSender, pArg1);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
}

#pragma ENDDUMP
