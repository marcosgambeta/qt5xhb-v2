/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
#endif

CLASS QStyleOptionGroupBox INHERIT QStyleOptionComplex

   METHOD new
   METHOD features
   METHOD setFeatures
   METHOD text
   METHOD setText
   METHOD textAlignment
   METHOD setTextAlignment
   METHOD textColor
   METHOD setTextColor
   METHOD lineWidth
   METHOD setLineWidth
   METHOD midLineWidth
   METHOD setMidLineWidth

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionGroupBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QStyleOptionGroupBox>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QStyleOptionGroupBox>
#endif

HB_FUNC_STATIC( QSTYLEOPTIONGROUPBOX_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QStyleOptionGroupBox()
    */
    auto obj = new QStyleOptionGroupBox();
    Qt5xHb::returnNewObject(obj, true);

  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONGROUPBOX(1) )
  {
    /*
    QStyleOptionGroupBox( const QStyleOptionGroupBox & other )
    */
    auto obj = new QStyleOptionGroupBox( *PQSTYLEOPTIONGROUPBOX(1) );
    Qt5xHb::returnNewObject(obj, true);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QStyleOptionFrame::FrameFeatures features
*/
HB_FUNC_STATIC( QSTYLEOPTIONGROUPBOX_FEATURES )
{
  auto obj = static_cast<QStyleOptionGroupBox*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->features );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONGROUPBOX_SETFEATURES )
{
  auto obj = static_cast<QStyleOptionGroupBox*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
      obj->features = static_cast<QStyleOptionFrame::FrameFeatures>( hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QString text
*/
HB_FUNC_STATIC( QSTYLEOPTIONGROUPBOX_TEXT )
{
  auto obj = static_cast<QStyleOptionGroupBox*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->text );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONGROUPBOX_SETTEXT )
{
  auto obj = static_cast<QStyleOptionGroupBox*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
      obj->text = PQSTRING(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
Qt::Alignment textAlignment
*/
HB_FUNC_STATIC( QSTYLEOPTIONGROUPBOX_TEXTALIGNMENT )
{
  auto obj = static_cast<QStyleOptionGroupBox*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->textAlignment );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONGROUPBOX_SETTEXTALIGNMENT )
{
  auto obj = static_cast<QStyleOptionGroupBox*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
      obj->textAlignment = static_cast<Qt::Alignment>( hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QColor textColor
*/
HB_FUNC_STATIC( QSTYLEOPTIONGROUPBOX_TEXTCOLOR )
{
  auto obj = static_cast<QStyleOptionGroupBox*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      auto ptr = new QColor( obj->textColor );
      Qt5xHb::createReturnClass(ptr, "QCOLOR", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONGROUPBOX_SETTEXTCOLOR )
{
  auto obj = static_cast<QStyleOptionGroupBox*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISQCOLOR(1) )
    {
      obj->textColor = *PQCOLOR(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int lineWidth
*/
HB_FUNC_STATIC( QSTYLEOPTIONGROUPBOX_LINEWIDTH )
{
  auto obj = static_cast<QStyleOptionGroupBox*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
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

HB_FUNC_STATIC( QSTYLEOPTIONGROUPBOX_SETLINEWIDTH )
{
  auto obj = static_cast<QStyleOptionGroupBox*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
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
HB_FUNC_STATIC( QSTYLEOPTIONGROUPBOX_MIDLINEWIDTH )
{
  auto obj = static_cast<QStyleOptionGroupBox*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
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

HB_FUNC_STATIC( QSTYLEOPTIONGROUPBOX_SETMIDLINEWIDTH )
{
  auto obj = static_cast<QStyleOptionGroupBox*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
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

#pragma ENDDUMP
