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

CLASS QInputMethodEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD commitString
   METHOD preeditString
   METHOD replacementLength
   METHOD replacementStart
   METHOD setCommitString

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QInputMethodEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QInputMethodEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtGui/QInputMethodEvent>
#endif

/*
QInputMethodEvent ()
*/
void QInputMethodEvent_new1()
{
  auto obj = new QInputMethodEvent();
  Qt5xHb::returnNewObject( obj, false );
}

/*
QInputMethodEvent ( const QString & preeditText, const QList<Attribute> & attributes )
*/

/*
QInputMethodEvent ( const QInputMethodEvent & other )
*/
void QInputMethodEvent_new3()
{
  auto obj = new QInputMethodEvent( *PQINPUTMETHODEVENT(1) );
  Qt5xHb::returnNewObject( obj, false );
}

//[1]QInputMethodEvent ()
//[2]QInputMethodEvent ( const QString & preeditText, const QList<Attribute> & attributes )
//[3]QInputMethodEvent ( const QInputMethodEvent & other )

HB_FUNC_STATIC( QINPUTMETHODEVENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QInputMethodEvent_new1();
  }
  else if( ISNUMPAR(1) && ISQINPUTMETHODEVENT(1) )
  {
    QInputMethodEvent_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QINPUTMETHODEVENT_DELETE )
{
  auto obj = (QInputMethodEvent *) Qt5xHb::itemGetPtrStackSelfItem();

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
const QString & commitString () const
*/
HB_FUNC_STATIC( QINPUTMETHODEVENT_COMMITSTRING )
{
  auto obj = (QInputMethodEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->commitString() );
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
const QString & preeditString () const
*/
HB_FUNC_STATIC( QINPUTMETHODEVENT_PREEDITSTRING )
{
  auto obj = (QInputMethodEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->preeditString() );
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
int replacementLength () const
*/
HB_FUNC_STATIC( QINPUTMETHODEVENT_REPLACEMENTLENGTH )
{
  auto obj = (QInputMethodEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->replacementLength() );
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
int replacementStart () const
*/
HB_FUNC_STATIC( QINPUTMETHODEVENT_REPLACEMENTSTART )
{
  auto obj = (QInputMethodEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->replacementStart() );
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
void setCommitString ( const QString & commitString, int replaceFrom = 0, int replaceLength = 0 )
*/
HB_FUNC_STATIC( QINPUTMETHODEVENT_SETCOMMITSTRING )
{
  auto obj = (QInputMethodEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTNUM(2) && ISOPTNUM(3) )
    {
#endif
      obj->setCommitString( PQSTRING(1), OPINT(2,0), OPINT(3,0) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
