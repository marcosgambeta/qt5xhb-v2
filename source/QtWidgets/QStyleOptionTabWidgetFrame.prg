/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QSIZE
#endif

CLASS QStyleOptionTabWidgetFrame INHERIT QStyleOption

   METHOD new
   METHOD lineWidth
   METHOD setLineWidth
   METHOD midLineWidth
   METHOD setMidLineWidth
   METHOD shape
   METHOD setShape
   METHOD tabBarSize
   METHOD setTabBarSize
   METHOD rightCornerWidgetSize
   METHOD setRightCornerWidgetSize
   METHOD leftCornerWidgetSize
   METHOD setLeftCornerWidgetSize
   METHOD tabBarRect
   METHOD setTabBarRect
   METHOD selectedTabRect
   METHOD setSelectedTabRect

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionTabWidgetFrame
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QStyleOptionTabWidgetFrame>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QStyleOptionTabWidgetFrame>
#endif

HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QStyleOptionTabWidgetFrame()
    */
    auto obj = new QStyleOptionTabWidgetFrame();
    Qt5xHb::returnNewObject(obj, true);

  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONTABWIDGETFRAME(1) )
  {
    /*
    QStyleOptionTabWidgetFrame( const QStyleOptionTabWidgetFrame & other )
    */
    auto obj = new QStyleOptionTabWidgetFrame( *PQSTYLEOPTIONTABWIDGETFRAME(1) );
    Qt5xHb::returnNewObject(obj, true);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
int lineWidth
*/
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_LINEWIDTH )
{
  auto obj = static_cast<QStyleOptionTabWidgetFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->lineWidth );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_SETLINEWIDTH )
{
  auto obj = static_cast<QStyleOptionTabWidgetFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
      obj->lineWidth = PINT(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int midLineWidth
*/
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_MIDLINEWIDTH )
{
  auto obj = static_cast<QStyleOptionTabWidgetFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->midLineWidth );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_SETMIDLINEWIDTH )
{
  auto obj = static_cast<QStyleOptionTabWidgetFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
      obj->midLineWidth = PINT(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QTabBar::Shape shape
*/
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_SHAPE )
{
  auto obj = static_cast<QStyleOptionTabWidgetFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->shape );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_SETSHAPE )
{
  auto obj = static_cast<QStyleOptionTabWidgetFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
      obj->shape = static_cast<QTabBar::Shape>( hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QSize tabBarSize
*/
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_TABBARSIZE )
{
  auto obj = static_cast<QStyleOptionTabWidgetFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if( ISNUMPAR(0) )
    {
      auto ptr = new QSize( obj->tabBarSize );
      Qt5xHb::createReturnClass(ptr, "QSIZE", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_SETTABBARSIZE )
{
  auto obj = static_cast<QStyleOptionTabWidgetFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
      obj->tabBarSize = *PQSIZE(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QSize rightCornerWidgetSize
*/
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_RIGHTCORNERWIDGETSIZE )
{
  auto obj = static_cast<QStyleOptionTabWidgetFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if( ISNUMPAR(0) )
    {
      auto ptr = new QSize( obj->rightCornerWidgetSize );
      Qt5xHb::createReturnClass(ptr, "QSIZE", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_SETRIGHTCORNERWIDGETSIZE )
{
  auto obj = static_cast<QStyleOptionTabWidgetFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
      obj->rightCornerWidgetSize = *PQSIZE(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QSize leftCornerWidgetSize
*/
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_LEFTCORNERWIDGETSIZE )
{
  auto obj = static_cast<QStyleOptionTabWidgetFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if( ISNUMPAR(0) )
    {
      auto ptr = new QSize( obj->leftCornerWidgetSize );
      Qt5xHb::createReturnClass(ptr, "QSIZE", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_SETLEFTCORNERWIDGETSIZE )
{
  auto obj = static_cast<QStyleOptionTabWidgetFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
      obj->leftCornerWidgetSize = *PQSIZE(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QRect tabBarRect
*/
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_TABBARRECT )
{
  auto obj = static_cast<QStyleOptionTabWidgetFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if( ISNUMPAR(0) )
    {
      auto ptr = new QRect( obj->tabBarRect );
      Qt5xHb::createReturnClass(ptr, "QRECT", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_SETTABBARRECT )
{
  auto obj = static_cast<QStyleOptionTabWidgetFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if( ISNUMPAR(1) && ISQRECT(1) )
    {
      obj->tabBarRect = *PQRECT(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QRect selectedTabRect
*/
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_SELECTEDTABRECT )
{
  auto obj = static_cast<QStyleOptionTabWidgetFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if( ISNUMPAR(0) )
    {
      auto ptr = new QRect( obj->selectedTabRect );
      Qt5xHb::createReturnClass(ptr, "QRECT", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_SETSELECTEDTABRECT )
{
  auto obj = static_cast<QStyleOptionTabWidgetFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if( ISNUMPAR(1) && ISQRECT(1) )
    {
      obj->selectedTabRect = *PQRECT(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
