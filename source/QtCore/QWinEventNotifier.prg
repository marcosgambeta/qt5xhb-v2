/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QWinEventNotifier INHERIT QObject

   METHOD new
   METHOD delete
   METHOD isEnabled
   METHOD setEnabled

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QWinEventNotifier
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QWinEventNotifier>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtCore/QWinEventNotifier>
#endif

/*
QWinEventNotifier(QObject *parent = nullptr)
*/
void QWinEventNotifier_new1()
{
#ifdef Q_OS_WIN
  auto obj = new QWinEventNotifier( OPQOBJECT( 1, nullptr ) );
  Qt5xHb::returnNewObject( obj, false );
#endif
}

/*
QWinEventNotifier(HANDLE hEvent, QObject *parent = nullptr)
*/

HB_FUNC_STATIC( QWINEVENTNOTIFIER_NEW )
{
#ifdef Q_OS_WIN
  if( ISBETWEEN( 0, 1 ) && ( ISQOBJECT( 1 ) || HB_ISNIL( 1 ) ) )
  {
    QWinEventNotifier_new1();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QWINEVENTNOTIFIER_DELETE )
{
#ifdef Q_OS_WIN
  auto obj = qobject_cast< QWinEventNotifier * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, nullptr );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool isEnabled() const
*/
HB_FUNC_STATIC( QWINEVENTNOTIFIER_ISENABLED )
{
#ifdef Q_OS_WIN
  auto obj = qobject_cast< QWinEventNotifier * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isEnabled() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setEnabled(bool enable)
*/
HB_FUNC_STATIC( QWINEVENTNOTIFIER_SETENABLED )
{
#ifdef Q_OS_WIN
  auto obj = qobject_cast< QWinEventNotifier * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISLOG( 1 ) )
    {
#endif
      obj->setEnabled( PBOOL( 1 ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

#pragma ENDDUMP
