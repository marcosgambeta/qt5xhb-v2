/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QWIDGET
#endif

CLASS QGraphicsProxyWidget INHERIT QGraphicsWidget

   METHOD new
   METHOD delete
   METHOD createProxyForChildWidget
   METHOD setWidget
   METHOD subWidgetRect
   METHOD widget
   METHOD paint
   METHOD setGeometry
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGraphicsProxyWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QGraphicsProxyWidget>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QGraphicsProxyWidget>
#endif

/*
QGraphicsProxyWidget( QGraphicsItem * parent = nullptr, Qt::WindowFlags wFlags = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSPROXYWIDGET_NEW )
{
  if( ISBETWEEN(0, 2) && ( ISQGRAPHICSITEM(1) || HB_ISNIL(1) ) && ( HB_ISNUM(2) || HB_ISNIL(2) ) )
  {
    auto obj = new QGraphicsProxyWidget( HB_ISNIL(1) ? nullptr : static_cast<QGraphicsItem*>(Qt5xHb::itemGetPtr(1)), HB_ISNIL(2) ? static_cast<Qt::WindowFlags >( 0 ) : static_cast<Qt::WindowFlags >( hb_parni(2) ) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QGRAPHICSPROXYWIDGET_DELETE )
{
  auto obj = qobject_cast<QGraphicsProxyWidget*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
QGraphicsProxyWidget * createProxyForChildWidget( QWidget * child )
*/
HB_FUNC_STATIC( QGRAPHICSPROXYWIDGET_CREATEPROXYFORCHILDWIDGET )
{
  auto obj = qobject_cast<QGraphicsProxyWidget*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
#endif
      auto ptr = obj->createProxyForChildWidget( PQWIDGET(1) );
      Qt5xHb::createReturnQObjectClass(ptr, "QGRAPHICSPROXYWIDGET");
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
void setWidget( QWidget * widget )
*/
HB_FUNC_STATIC( QGRAPHICSPROXYWIDGET_SETWIDGET )
{
  auto obj = qobject_cast<QGraphicsProxyWidget*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
#endif
      obj->setWidget( PQWIDGET(1) );
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
QRectF subWidgetRect( const QWidget * widget ) const
*/
HB_FUNC_STATIC( QGRAPHICSPROXYWIDGET_SUBWIDGETRECT )
{
  auto obj = qobject_cast<QGraphicsProxyWidget*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
#endif
      auto ptr = new QRectF( obj->subWidgetRect( PQWIDGET(1) ) );
      Qt5xHb::createReturnClass(ptr, "QRECTF", true);
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
QWidget * widget() const
*/
HB_FUNC_STATIC( QGRAPHICSPROXYWIDGET_WIDGET )
{
  auto obj = qobject_cast<QGraphicsProxyWidget*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = obj->widget();
      Qt5xHb::createReturnQWidgetClass( ptr, "QWIDGET");
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
virtual void paint( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget )
*/
HB_FUNC_STATIC( QGRAPHICSPROXYWIDGET_PAINT )
{
  auto obj = qobject_cast<QGraphicsProxyWidget*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQPAINTER(1) && ISQSTYLEOPTIONGRAPHICSITEM(2) && ISQWIDGET(3) )
    {
#endif
      obj->paint( PQPAINTER(1), PQSTYLEOPTIONGRAPHICSITEM(2), PQWIDGET(3) );
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
virtual void setGeometry( const QRectF & rect )
*/
HB_FUNC_STATIC( QGRAPHICSPROXYWIDGET_SETGEOMETRY )
{
  auto obj = qobject_cast<QGraphicsProxyWidget*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQRECTF(1) )
    {
#endif
      obj->setGeometry( *PQRECTF(1) );
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
virtual int type() const
*/
HB_FUNC_STATIC( QGRAPHICSPROXYWIDGET_TYPE )
{
  auto obj = qobject_cast<QGraphicsProxyWidget*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->type() );
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
