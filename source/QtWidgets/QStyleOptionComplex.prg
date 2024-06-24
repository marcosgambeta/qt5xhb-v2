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

CLASS QStyleOptionComplex INHERIT QStyleOption

   METHOD new
   METHOD delete
   METHOD subControls
   METHOD setSubControls
   METHOD activeSubControls
   METHOD setActiveSubControls

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionComplex
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QStyleOptionComplex>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QStyleOptionComplex>
#endif

HB_FUNC_STATIC( QSTYLEOPTIONCOMPLEX_NEW )
{
  if (ISBETWEEN(0, 2) && (HB_ISNUM(1) || HB_ISNIL(1)) && (HB_ISNUM(2) || HB_ISNIL(2)))
  {
    /*
    QStyleOptionComplex( int version = QStyleOptionComplex::Version, int type = QStyleOptionComplex::SO_Complex )
    */
    auto obj = new QStyleOptionComplex( OPINT( 1, QStyleOptionComplex::Version ), OPINT( 2, QStyleOptionComplex::SO_Complex));
    Qt5xHb::returnNewObject(obj, true);

  }
  else if (ISNUMPAR(1) && ISQSTYLEOPTIONCOMPLEX(1))
  {
    /*
    QStyleOptionComplex( const QStyleOptionComplex & other )
    */
    auto obj = new QStyleOptionComplex(*PQSTYLEOPTIONCOMPLEX(1));
    Qt5xHb::returnNewObject(obj, true);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONCOMPLEX_DELETE )
{
  auto obj = static_cast<QStyleOptionComplex*>(Qt5xHb::itemGetPtrStackSelfItem());

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
QStyle::SubControls subControls
*/
HB_FUNC_STATIC( QSTYLEOPTIONCOMPLEX_SUBCONTROLS )
{
  auto obj = static_cast<QStyleOptionComplex*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->subControls);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONCOMPLEX_SETSUBCONTROLS )
{
  auto obj = static_cast<QStyleOptionComplex*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->subControls = static_cast<QStyle::SubControls>(hb_parni(1));
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QStyle::SubControls activeSubControls
*/
HB_FUNC_STATIC( QSTYLEOPTIONCOMPLEX_ACTIVESUBCONTROLS )
{
  auto obj = static_cast<QStyleOptionComplex*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->activeSubControls);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONCOMPLEX_SETACTIVESUBCONTROLS )
{
  auto obj = static_cast<QStyleOptionComplex*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->activeSubControls = static_cast<QStyle::SubControls>(hb_parni(1));
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
