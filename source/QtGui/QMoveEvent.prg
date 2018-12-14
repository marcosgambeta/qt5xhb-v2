/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINT
#endif

CLASS QMoveEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD oldPos
   METHOD pos

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMoveEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMoveEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QMoveEvent>
#endif

/*
QMoveEvent ( const QPoint & pos, const QPoint & oldPos )
*/
HB_FUNC_STATIC( QMOVEEVENT_NEW )
{
  if( ISNUMPAR(2) && ISQPOINT(1) && ISQPOINT(2) )
  {
    QMoveEvent * o = new QMoveEvent ( *PQPOINT(1), *PQPOINT(2) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMOVEEVENT_DELETE )
{
  QMoveEvent * obj = (QMoveEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
const QPoint & oldPos () const
*/
HB_FUNC_STATIC( QMOVEEVENT_OLDPOS )
{
  QMoveEvent * obj = (QMoveEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QPoint * ptr = &obj->oldPos ();
      _qt5xhb_createReturnClass ( ptr, "QPOINT", false );
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
const QPoint & pos () const
*/
HB_FUNC_STATIC( QMOVEEVENT_POS )
{
  QMoveEvent * obj = (QMoveEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QPoint * ptr = &obj->pos ();
      _qt5xhb_createReturnClass ( ptr, "QPOINT", false );
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
