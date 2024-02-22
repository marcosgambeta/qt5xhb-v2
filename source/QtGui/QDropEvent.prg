/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMIMEDATA
REQUEST QOBJECT
#endif

CLASS QDropEvent INHERIT QEvent,QMimeSource

   METHOD new
   METHOD delete
   METHOD acceptProposedAction
   METHOD dropAction
   METHOD keyboardModifiers
   METHOD mimeData
   METHOD mouseButtons
   METHOD possibleActions
   METHOD proposedAction
   METHOD setDropAction
   METHOD source

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDropEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QDropEvent>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtGui/QDropEvent>
#endif

#include <QtCore/QMimeData>

/*
QDropEvent( const QPoint & pos, Qt::DropActions actions, const QMimeData * data, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, QEvent::Type type = QEvent::Drop )
*/
HB_FUNC_STATIC( QDROPEVENT_NEW )
{
  if( ISBETWEEN(5, 6) && ISQPOINT(1) && HB_ISNUM(2) && ISQMIMEDATA(3) && HB_ISNUM(4) && HB_ISNUM(5) && ( HB_ISNUM(6) || HB_ISNIL(6) ) )
  {
    auto obj = new QDropEvent( *PQPOINT(1), static_cast<Qt::DropActions>( hb_parni(2) ), PQMIMEDATA(3), static_cast<Qt::MouseButtons>( hb_parni(4) ), static_cast<Qt::KeyboardModifiers>( hb_parni(5) ), HB_ISNIL(6) ? static_cast<QEvent::Type >( QEvent::Drop ) : static_cast<QEvent::Type >( hb_parni(6) ) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QDROPEVENT_DELETE )
{
  auto obj = static_cast<QDropEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

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
void acceptProposedAction()
*/
HB_FUNC_STATIC( QDROPEVENT_ACCEPTPROPOSEDACTION )
{
  auto obj = static_cast<QDropEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->acceptProposedAction();
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
Qt::DropAction dropAction() const
*/
HB_FUNC_STATIC( QDROPEVENT_DROPACTION )
{
  auto obj = static_cast<QDropEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->dropAction() );
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
Qt::KeyboardModifiers keyboardModifiers() const
*/
HB_FUNC_STATIC( QDROPEVENT_KEYBOARDMODIFIERS )
{
  auto obj = static_cast<QDropEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->keyboardModifiers() );
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
const QMimeData * mimeData() const
*/
HB_FUNC_STATIC( QDROPEVENT_MIMEDATA )
{
  auto obj = static_cast<QDropEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QMimeData * ptr = obj->mimeData();
      Qt5xHb::createReturnQObjectClass(ptr, "QMIMEDATA");
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
Qt::MouseButtons mouseButtons() const
*/
HB_FUNC_STATIC( QDROPEVENT_MOUSEBUTTONS )
{
  auto obj = static_cast<QDropEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->mouseButtons() );
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
Qt::DropActions possibleActions() const
*/
HB_FUNC_STATIC( QDROPEVENT_POSSIBLEACTIONS )
{
  auto obj = static_cast<QDropEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->possibleActions() );
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
Qt::DropAction proposedAction() const
*/
HB_FUNC_STATIC( QDROPEVENT_PROPOSEDACTION )
{
  auto obj = static_cast<QDropEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->proposedAction() );
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
void setDropAction( Qt::DropAction action )
*/
HB_FUNC_STATIC( QDROPEVENT_SETDROPACTION )
{
  auto obj = static_cast<QDropEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setDropAction( static_cast<Qt::DropAction>( hb_parni(1) ) );
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
QObject * source() const
*/
HB_FUNC_STATIC( QDROPEVENT_SOURCE )
{
  auto obj = static_cast<QDropEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QObject * ptr = obj->source();
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
