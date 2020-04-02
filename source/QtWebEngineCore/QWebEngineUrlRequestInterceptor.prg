/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QWebEngineUrlRequestInterceptor INHERIT QObject

   METHOD new
   METHOD interceptRequest

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebEngineUrlRequestInterceptor
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWebEngineCore/QWebEngineUrlRequestInterceptor>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtWebEngineCore/QWebEngineUrlRequestInterceptor>
#endif

/*
explicit QWebEngineUrlRequestInterceptor(QObject *p = nullptr)
*/
HB_FUNC_STATIC( QWEBENGINEURLREQUESTINTERCEPTOR_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    auto obj = new QWebEngineUrlRequestInterceptor ( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual void interceptRequest(QWebEngineUrlRequestInfo &info) = 0
*/
HB_FUNC_STATIC( QWEBENGINEURLREQUESTINTERCEPTOR_INTERCEPTREQUEST )
{
  auto obj = (QWebEngineUrlRequestInterceptor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWEBENGINEURLREQUESTINFO(1) )
    {
#endif
      obj->interceptRequest ( *PQWEBENGINEURLREQUESTINFO(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
