/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QInputMethodQueryEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD queries
   METHOD setValue
   METHOD value

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QInputMethodQueryEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QInputMethodQueryEvent>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtGui/QInputMethodQueryEvent>
#endif

/*
QInputMethodQueryEvent( Qt::InputMethodQueries queries )
*/
HB_FUNC_STATIC( QINPUTMETHODQUERYEVENT_NEW )
{
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    auto obj = new QInputMethodQueryEvent( static_cast<Qt::InputMethodQueries>( hb_parni(1) ) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QINPUTMETHODQUERYEVENT_DELETE )
{
  auto obj = static_cast<QInputMethodQueryEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

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
Qt::InputMethodQueries queries() const
*/
HB_FUNC_STATIC( QINPUTMETHODQUERYEVENT_QUERIES )
{
  auto obj = static_cast<QInputMethodQueryEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->queries() );
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
void setValue( Qt::InputMethodQuery query, const QVariant & value )
*/
HB_FUNC_STATIC( QINPUTMETHODQUERYEVENT_SETVALUE )
{
  auto obj = static_cast<QInputMethodQueryEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && ISQVARIANT(2) )
    {
#endif
      obj->setValue( static_cast<Qt::InputMethodQuery>( hb_parni(1) ), *PQVARIANT(2) );
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
QVariant value( Qt::InputMethodQuery query ) const
*/
HB_FUNC_STATIC( QINPUTMETHODQUERYEVENT_VALUE )
{
  auto obj = static_cast<QInputMethodQueryEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      auto ptr = new QVariant( obj->value( static_cast<Qt::InputMethodQuery>( hb_parni(1) ) ) );
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
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
