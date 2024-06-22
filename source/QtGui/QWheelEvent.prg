/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINT
REQUEST QPOINTF
#endif

CLASS QWheelEvent INHERIT QInputEvent

   METHOD new
   METHOD delete
   METHOD pixelDelta
   METHOD angleDelta
   METHOD delta
   METHOD orientation
   METHOD pos
   METHOD globalPos
   METHOD x
   METHOD y
   METHOD globalX
   METHOD globalY
   METHOD posF
   METHOD globalPosF
   METHOD buttons

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QWheelEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QWheelEvent>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtGui/QWheelEvent>
#endif

HB_FUNC_STATIC( QWHEELEVENT_NEW )
{
  if( ISBETWEEN(4, 5) && ISQPOINTF(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && ( HB_ISNUM(5) || HB_ISNIL(5) ) )
  {
    /*
    QWheelEvent( const QPointF & pos, int delta, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, Qt::Orientation orient = Qt::Vertical )
    */
    auto obj = new QWheelEvent( *PQPOINTF(1), PINT(2), static_cast<Qt::MouseButtons>( hb_parni(3) ), static_cast<Qt::KeyboardModifiers>( hb_parni(4) ), HB_ISNIL(5) ? static_cast<Qt::Orientation >( Qt::Vertical ) : static_cast<Qt::Orientation >( hb_parni(5) ) );
    Qt5xHb::returnNewObject(obj, false);

  }
  else if( ISBETWEEN(5, 6) && ISQPOINTF(1) && ISQPOINTF(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5) && ( HB_ISNUM(6) || HB_ISNIL(6) ) )
  {
    /*
    QWheelEvent( const QPointF & pos, const QPointF & globalPos, int delta, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, Qt::Orientation orient = Qt::Vertical )
    */
    auto obj = new QWheelEvent( *PQPOINTF(1), *PQPOINTF(2), PINT(3), static_cast<Qt::MouseButtons>( hb_parni(4) ), static_cast<Qt::KeyboardModifiers>( hb_parni(5) ), HB_ISNIL(6) ? static_cast<Qt::Orientation >( Qt::Vertical ) : static_cast<Qt::Orientation >( hb_parni(6) ) );
    Qt5xHb::returnNewObject(obj, false);

  }
  else if( ISNUMPAR(8) && ISQPOINTF(1) && ISQPOINTF(2) && ISQPOINT(3) && ISQPOINT(4) && HB_ISNUM(5) && HB_ISNUM(6) && HB_ISNUM(7) && HB_ISNUM(8) )
  {
    /*
    QWheelEvent( const QPointF & pos, const QPointF & globalPos, QPoint pixelDelta, QPoint angleDelta, int qt4Delta, Qt::Orientation qt4Orientation, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers )
    */
    auto obj = new QWheelEvent( *PQPOINTF(1), *PQPOINTF(2), *PQPOINT(3), *PQPOINT(4), PINT(5), static_cast<Qt::Orientation>( hb_parni(6) ), static_cast<Qt::MouseButtons>( hb_parni(7) ), static_cast<Qt::KeyboardModifiers>( hb_parni(8) ) );
    Qt5xHb::returnNewObject(obj, false);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QWHEELEVENT_DELETE )
{
  auto obj = static_cast<QWheelEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
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
QPoint pixelDelta() const
*/
HB_FUNC_STATIC( QWHEELEVENT_PIXELDELTA )
{
  auto obj = static_cast<QWheelEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QPoint( obj->pixelDelta() );
      Qt5xHb::createReturnClass(ptr, "QPOINT", true);
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
QPoint angleDelta() const
*/
HB_FUNC_STATIC( QWHEELEVENT_ANGLEDELTA )
{
  auto obj = static_cast<QWheelEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QPoint( obj->angleDelta() );
      Qt5xHb::createReturnClass(ptr, "QPOINT", true);
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
int delta() const
*/
HB_FUNC_STATIC( QWHEELEVENT_DELTA )
{
  auto obj = static_cast<QWheelEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->delta() );
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
Qt::Orientation orientation() const
*/
HB_FUNC_STATIC( QWHEELEVENT_ORIENTATION )
{
  auto obj = static_cast<QWheelEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->orientation() );
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
QPoint pos() const
*/
HB_FUNC_STATIC( QWHEELEVENT_POS )
{
  auto obj = static_cast<QWheelEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QPoint( obj->pos() );
      Qt5xHb::createReturnClass(ptr, "QPOINT", true);
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
QPoint globalPos() const
*/
HB_FUNC_STATIC( QWHEELEVENT_GLOBALPOS )
{
  auto obj = static_cast<QWheelEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QPoint( obj->globalPos() );
      Qt5xHb::createReturnClass(ptr, "QPOINT", true);
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
int x() const
*/
HB_FUNC_STATIC( QWHEELEVENT_X )
{
  auto obj = static_cast<QWheelEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->x() );
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
int y() const
*/
HB_FUNC_STATIC( QWHEELEVENT_Y )
{
  auto obj = static_cast<QWheelEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->y() );
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
int globalX() const
*/
HB_FUNC_STATIC( QWHEELEVENT_GLOBALX )
{
  auto obj = static_cast<QWheelEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->globalX() );
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
int globalY() const
*/
HB_FUNC_STATIC( QWHEELEVENT_GLOBALY )
{
  auto obj = static_cast<QWheelEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->globalY() );
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
const QPointF & posF() const
*/
HB_FUNC_STATIC( QWHEELEVENT_POSF )
{
  auto obj = static_cast<QWheelEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = &obj->posF();
      Qt5xHb::createReturnClass(ptr, "QPOINTF", false);
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
const QPointF & globalPosF() const
*/
HB_FUNC_STATIC( QWHEELEVENT_GLOBALPOSF )
{
  auto obj = static_cast<QWheelEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = &obj->globalPosF();
      Qt5xHb::createReturnClass(ptr, "QPOINTF", false);
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
Qt::MouseButtons buttons() const
*/
HB_FUNC_STATIC( QWHEELEVENT_BUTTONS )
{
  auto obj = static_cast<QWheelEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->buttons() );
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
