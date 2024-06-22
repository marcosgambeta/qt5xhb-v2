/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QOBJECT
#endif

CLASS QPropertyAnimation INHERIT QVariantAnimation

   METHOD new
   METHOD delete
   METHOD propertyName
   METHOD setPropertyName
   METHOD setTargetObject
   METHOD targetObject

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPropertyAnimation
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QPropertyAnimation>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtCore/QPropertyAnimation>
#endif

HB_FUNC_STATIC( QPROPERTYANIMATION_NEW )
{
  if( ISBETWEEN(0, 1) && ( ISQOBJECT(1) || HB_ISNIL(1) ) )
  {
    /*
    QPropertyAnimation( QObject * parent = nullptr )
    */
    auto obj = new QPropertyAnimation( OPQOBJECT( 1, nullptr ) );
    Qt5xHb::returnNewObject(obj, false);

  }
  else if( ISBETWEEN(2, 3) && ISQOBJECT(1) && ISQBYTEARRAY(2) && ( ISQOBJECT(3) || HB_ISNIL(3) ) )
  {
    /*
    QPropertyAnimation( QObject * target, const QByteArray & propertyName, QObject * parent = nullptr )
    */
    auto obj = new QPropertyAnimation( PQOBJECT(1), *PQBYTEARRAY(2), OPQOBJECT( 3, nullptr ) );
    Qt5xHb::returnNewObject(obj, false);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QPROPERTYANIMATION_DELETE )
{
  auto obj = qobject_cast<QPropertyAnimation*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
QByteArray propertyName() const
*/
HB_FUNC_STATIC( QPROPERTYANIMATION_PROPERTYNAME )
{
  auto obj = qobject_cast<QPropertyAnimation*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QByteArray( obj->propertyName() );
      Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
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
void setPropertyName( const QByteArray & propertyName )
*/
HB_FUNC_STATIC( QPROPERTYANIMATION_SETPROPERTYNAME )
{
  auto obj = qobject_cast<QPropertyAnimation*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
    {
#endif
      obj->setPropertyName( *PQBYTEARRAY(1) );
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
void setTargetObject( QObject * target )
*/
HB_FUNC_STATIC( QPROPERTYANIMATION_SETTARGETOBJECT )
{
  auto obj = qobject_cast<QPropertyAnimation*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQOBJECT(1) )
    {
#endif
      obj->setTargetObject( PQOBJECT(1) );
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
QObject * targetObject() const
*/
HB_FUNC_STATIC( QPROPERTYANIMATION_TARGETOBJECT )
{
  auto obj = qobject_cast<QPropertyAnimation*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = obj->targetObject();
      Qt5xHb::createReturnQObjectClass(ptr, "QOBJECT");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP
