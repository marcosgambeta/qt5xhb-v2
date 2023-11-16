/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QStyleOptionProgressBar INHERIT QStyleOption

   METHOD new
   METHOD minimum
   METHOD setMinimum
   METHOD maximum
   METHOD setMaximum
   METHOD progress
   METHOD setProgress
   METHOD text
   METHOD setText
   METHOD textAlignment
   METHOD setTextAlignment
   METHOD textVisible
   METHOD setTextVisible
   METHOD orientation
   METHOD setOrientation
   METHOD invertedAppearance
   METHOD setInvertedAppearance
   METHOD bottomToTop
   METHOD setBottomToTop

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionProgressBar
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QStyleOptionProgressBar>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QStyleOptionProgressBar>
#endif

HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QStyleOptionProgressBar()
    */
    auto obj = new QStyleOptionProgressBar();
    Qt5xHb::returnNewObject(obj, true);

  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONPROGRESSBAR(1) )
  {
    /*
    QStyleOptionProgressBar( const QStyleOptionProgressBar & other )
    */
    auto obj = new QStyleOptionProgressBar( *PQSTYLEOPTIONPROGRESSBAR(1) );
    Qt5xHb::returnNewObject(obj, true);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
int minimum
*/
HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_MINIMUM )
{
  auto obj = static_cast<QStyleOptionProgressBar*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->minimum );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_SETMINIMUM )
{
  auto obj = static_cast<QStyleOptionProgressBar*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
      obj->minimum = PINT(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int maximum
*/
HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_MAXIMUM )
{
  auto obj = static_cast<QStyleOptionProgressBar*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->maximum );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_SETMAXIMUM )
{
  auto obj = static_cast<QStyleOptionProgressBar*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
      obj->maximum = PINT(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int progress
*/
HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_PROGRESS )
{
  auto obj = static_cast<QStyleOptionProgressBar*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->progress );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_SETPROGRESS )
{
  auto obj = static_cast<QStyleOptionProgressBar*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
      obj->progress = PINT(1);
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
HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_TEXT )
{
  auto obj = static_cast<QStyleOptionProgressBar*>(Qt5xHb::itemGetPtrStackSelfItem());

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

HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_SETTEXT )
{
  auto obj = static_cast<QStyleOptionProgressBar*>(Qt5xHb::itemGetPtrStackSelfItem());

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
HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_TEXTALIGNMENT )
{
  auto obj = static_cast<QStyleOptionProgressBar*>(Qt5xHb::itemGetPtrStackSelfItem());

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

HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_SETTEXTALIGNMENT )
{
  auto obj = static_cast<QStyleOptionProgressBar*>(Qt5xHb::itemGetPtrStackSelfItem());

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
bool textVisible
*/
HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_TEXTVISIBLE )
{
  auto obj = static_cast<QStyleOptionProgressBar*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->textVisible );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_SETTEXTVISIBLE )
{
  auto obj = static_cast<QStyleOptionProgressBar*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
      obj->textVisible = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
Qt::Orientation orientation
*/
HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_ORIENTATION )
{
  auto obj = static_cast<QStyleOptionProgressBar*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->orientation );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_SETORIENTATION )
{
  auto obj = static_cast<QStyleOptionProgressBar*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
      obj->orientation = static_cast<Qt::Orientation>( hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool invertedAppearance
*/
HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_INVERTEDAPPEARANCE )
{
  auto obj = static_cast<QStyleOptionProgressBar*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->invertedAppearance );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_SETINVERTEDAPPEARANCE )
{
  auto obj = static_cast<QStyleOptionProgressBar*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
      obj->invertedAppearance = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool bottomToTop
*/
HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_BOTTOMTOTOP )
{
  auto obj = static_cast<QStyleOptionProgressBar*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->bottomToTop );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_SETBOTTOMTOTOP )
{
  auto obj = static_cast<QStyleOptionProgressBar*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
      obj->bottomToTop = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
