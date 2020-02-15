/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

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

PROCEDURE destroyObject () CLASS QStyleOptionComplex
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QStyleOptionComplex>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QStyleOptionComplex>
#endif

/*
QStyleOptionComplex(int version = QStyleOptionComplex::Version, int type = SO_Complex)
*/
void QStyleOptionComplex_new1 ()
{
  QStyleOptionComplex * o = new QStyleOptionComplex ( OPINT(1,QStyleOptionComplex::Version), OPINT(2,QStyleOptionComplex::SO_Complex) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QStyleOptionComplex(const QStyleOptionComplex &other)
*/
void QStyleOptionComplex_new2 ()
{
  QStyleOptionComplex * o = new QStyleOptionComplex ( *PQSTYLEOPTIONCOMPLEX(1) );
  _qt5xhb_returnNewObject( o, true );
}

//[1]QStyleOptionComplex(int version = QStyleOptionComplex::Version, int type = SO_Complex)
//[2]QStyleOptionComplex(const QStyleOptionComplex &other)

HB_FUNC_STATIC( QSTYLEOPTIONCOMPLEX_NEW )
{
  if( ISBETWEEN(0,2) && ISOPTNUM(1) && ISOPTNUM(2) )
  {
    QStyleOptionComplex_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONCOMPLEX(1) )
  {
    QStyleOptionComplex_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSTYLEOPTIONCOMPLEX_DELETE )
{
  QStyleOptionComplex * obj = (QStyleOptionComplex *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStyle::SubControls subControls
*/
HB_FUNC_STATIC( QSTYLEOPTIONCOMPLEX_SUBCONTROLS )
{
  QStyleOptionComplex * obj = (QStyleOptionComplex *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->subControls  );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONCOMPLEX_SETSUBCONTROLS )
{
  QStyleOptionComplex * obj = (QStyleOptionComplex *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->subControls = (QStyle::SubControls) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStyle::SubControls activeSubControls
*/
HB_FUNC_STATIC( QSTYLEOPTIONCOMPLEX_ACTIVESUBCONTROLS )
{
  QStyleOptionComplex * obj = (QStyleOptionComplex *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->activeSubControls  );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONCOMPLEX_SETACTIVESUBCONTROLS )
{
  QStyleOptionComplex * obj = (QStyleOptionComplex *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->activeSubControls = (QStyle::SubControls) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
