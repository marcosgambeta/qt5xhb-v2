/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTANIMATION
REQUEST QPAUSEANIMATION
#endif

CLASS QSequentialAnimationGroup INHERIT QAnimationGroup

   METHOD new
   METHOD delete
   METHOD addPause
   METHOD currentAnimation
   METHOD insertPause
   METHOD duration

   METHOD onCurrentAnimationChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSequentialAnimationGroup
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QSequentialAnimationGroup>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtCore/QSequentialAnimationGroup>
#endif

#include <QtCore/QPauseAnimation>

/*
QSequentialAnimationGroup ( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QSEQUENTIALANIMATIONGROUP_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    auto obj = new QSequentialAnimationGroup ( OPQOBJECT(1,nullptr) );
    _qt5xhb_returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSEQUENTIALANIMATIONGROUP_DELETE )
{
  auto obj = (QSequentialAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();

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
QPauseAnimation * addPause ( int msecs )
*/
HB_FUNC_STATIC( QSEQUENTIALANIMATIONGROUP_ADDPAUSE )
{
  auto obj = (QSequentialAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QPauseAnimation * ptr = obj->addPause ( PINT(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QPAUSEANIMATION" );
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
QAbstractAnimation * currentAnimation () const
*/
HB_FUNC_STATIC( QSEQUENTIALANIMATIONGROUP_CURRENTANIMATION )
{
  auto obj = (QSequentialAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAbstractAnimation * ptr = obj->currentAnimation ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QABSTRACTANIMATION" );
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
QPauseAnimation * insertPause ( int index, int msecs )
*/
HB_FUNC_STATIC( QSEQUENTIALANIMATIONGROUP_INSERTPAUSE )
{
  auto obj = (QSequentialAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      QPauseAnimation * ptr = obj->insertPause ( PINT(1), PINT(2) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QPAUSEANIMATION" );
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
virtual int duration () const
*/
HB_FUNC_STATIC( QSEQUENTIALANIMATIONGROUP_DURATION )
{
  auto obj = (QSequentialAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->duration () );
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
void currentAnimationChanged ( QAbstractAnimation * current )
*/
HB_FUNC_STATIC( QSEQUENTIALANIMATIONGROUP_ONCURRENTANIMATIONCHANGED )
{
  auto sender = (QSequentialAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("currentAnimationChanged(QAbstractAnimation*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QSequentialAnimationGroup::currentAnimationChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (QAbstractAnimation * arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QSEQUENTIALANIMATIONGROUP" );
            PHB_ITEM pArg1 = Signals4_return_qobject( (QObject *) arg1, "QABSTRACTANIMATION" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals4_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals4_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals4_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

#pragma ENDDUMP
