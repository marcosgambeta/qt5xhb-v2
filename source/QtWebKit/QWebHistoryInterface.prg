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

CLASS QWebHistoryInterface INHERIT QObject

   METHOD delete
   METHOD addHistoryEntry
   METHOD historyContains
   METHOD defaultInterface
   METHOD setDefaultInterface

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QWebHistoryInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWebKit/QWebHistoryInterface>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtWebKit/QWebHistoryInterface>
#endif

HB_FUNC_STATIC( QWEBHISTORYINTERFACE_DELETE )
{
  auto obj = qobject_cast<QWebHistoryInterface*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
virtual void addHistoryEntry( const QString & url ) = 0
*/
HB_FUNC_STATIC( QWEBHISTORYINTERFACE_ADDHISTORYENTRY )
{
  auto obj = qobject_cast<QWebHistoryInterface*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->addHistoryEntry( PQSTRING(1) );
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
virtual bool historyContains( const QString & url ) const = 0
*/
HB_FUNC_STATIC( QWEBHISTORYINTERFACE_HISTORYCONTAINS )
{
  auto obj = qobject_cast<QWebHistoryInterface*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RBOOL( obj->historyContains( PQSTRING(1) ) );
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
static QWebHistoryInterface * defaultInterface()
*/
HB_FUNC_STATIC( QWEBHISTORYINTERFACE_DEFAULTINTERFACE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    auto ptr = QWebHistoryInterface::defaultInterface();
    Qt5xHb::createReturnQObjectClass(ptr, "QWEBHISTORYINTERFACE");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static void setDefaultInterface( QWebHistoryInterface * defaultInterface )
*/
HB_FUNC_STATIC( QWEBHISTORYINTERFACE_SETDEFAULTINTERFACE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQWEBHISTORYINTERFACE(1) )
  {
#endif
    QWebHistoryInterface::setDefaultInterface( PQWEBHISTORYINTERFACE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
