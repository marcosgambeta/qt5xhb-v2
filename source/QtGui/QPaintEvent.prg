/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QREGION
#endif

CLASS QPaintEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD rect
   METHOD region

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPaintEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QPaintEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtGui/QPaintEvent>
#endif

/*
QPaintEvent ( const QRegion & paintRegion )
*/
void QPaintEvent_new1 ()
{
  auto obj = new QPaintEvent ( *PQREGION(1) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
QPaintEvent ( const QRect & paintRect )
*/
void QPaintEvent_new2 ()
{
  auto obj = new QPaintEvent ( *PQRECT(1) );
  Qt5xHb::returnNewObject( obj, false );
}

//[1]QPaintEvent ( const QRegion & paintRegion )
//[2]QPaintEvent ( const QRect & paintRect )

HB_FUNC_STATIC( QPAINTEVENT_NEW )
{
  if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QPaintEvent_new1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QPaintEvent_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPAINTEVENT_DELETE )
{
  auto obj = (QPaintEvent *) Qt5xHb::itemGetPtrStackSelfItem();

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
const QRect & rect () const
*/
HB_FUNC_STATIC( QPAINTEVENT_RECT )
{
  auto obj = (QPaintEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QRect * ptr = &obj->rect ();
      Qt5xHb::createReturnClass ( ptr, "QRECT", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
const QRegion & region () const
*/
HB_FUNC_STATIC( QPAINTEVENT_REGION )
{
  auto obj = (QPaintEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QRegion * ptr = &obj->region ();
      Qt5xHb::createReturnClass ( ptr, "QREGION", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
