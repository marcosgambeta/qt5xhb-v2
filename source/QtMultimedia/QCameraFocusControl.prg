/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCAMERAFOCUSZONE
REQUEST QPOINTF
#endif

CLASS QCameraFocusControl INHERIT QMediaControl

   METHOD delete
   METHOD customFocusPoint
   METHOD focusMode
   METHOD focusPointMode
   METHOD focusZones
   METHOD isFocusModeSupported
   METHOD isFocusPointModeSupported
   METHOD setCustomFocusPoint
   METHOD setFocusMode
   METHOD setFocusPointMode

   METHOD onCustomFocusPointChanged
   METHOD onFocusModeChanged
   METHOD onFocusPointModeChanged
   METHOD onFocusZonesChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCameraFocusControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCameraFocusControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QCameraFocusControl>
#endif

/*
explicit QCameraFocusControl(QObject *parent = Q_NULLPTR) [protected]
*/

/*
~QCameraFocusControl()
*/
HB_FUNC_STATIC( QCAMERAFOCUSCONTROL_DELETE )
{
  QCameraFocusControl * obj = (QCameraFocusControl *) _qt5xhb_itemGetPtrStackSelfItem();

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
virtual QPointF customFocusPoint() const = 0
*/
HB_FUNC_STATIC( QCAMERAFOCUSCONTROL_CUSTOMFOCUSPOINT )
{
  QCameraFocusControl * obj = (QCameraFocusControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPointF * ptr = new QPointF( obj->customFocusPoint () );
      _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
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
virtual QCameraFocus::FocusModes focusMode() const = 0
*/
HB_FUNC_STATIC( QCAMERAFOCUSCONTROL_FOCUSMODE )
{
  QCameraFocusControl * obj = (QCameraFocusControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->focusMode () );
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
virtual QCameraFocus::FocusPointMode focusPointMode() const = 0
*/
HB_FUNC_STATIC( QCAMERAFOCUSCONTROL_FOCUSPOINTMODE )
{
  QCameraFocusControl * obj = (QCameraFocusControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->focusPointMode () );
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
virtual QCameraFocusZoneList focusZones() const = 0
*/
HB_FUNC_STATIC( QCAMERAFOCUSCONTROL_FOCUSZONES )
{
  QCameraFocusControl * obj = (QCameraFocusControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QCameraFocusZoneList list = obj->focusZones ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QCAMERAFOCUSZONE" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QCameraFocusZone *) new QCameraFocusZone( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QCAMERAFOCUSZONE", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
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
virtual bool isFocusModeSupported(QCameraFocus::FocusModes mode) const = 0
*/
HB_FUNC_STATIC( QCAMERAFOCUSCONTROL_ISFOCUSMODESUPPORTED )
{
  QCameraFocusControl * obj = (QCameraFocusControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->isFocusModeSupported ( (QCameraFocus::FocusModes) hb_parni(1) ) );
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
virtual bool isFocusPointModeSupported(QCameraFocus::FocusPointMode mode) const = 0
*/
HB_FUNC_STATIC( QCAMERAFOCUSCONTROL_ISFOCUSPOINTMODESUPPORTED )
{
  QCameraFocusControl * obj = (QCameraFocusControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->isFocusPointModeSupported ( (QCameraFocus::FocusPointMode) hb_parni(1) ) );
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
virtual void setCustomFocusPoint(const QPointF & point) = 0
*/
HB_FUNC_STATIC( QCAMERAFOCUSCONTROL_SETCUSTOMFOCUSPOINT )
{
  QCameraFocusControl * obj = (QCameraFocusControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOINTF(1) )
    {
#endif
      obj->setCustomFocusPoint ( *PQPOINTF(1) );
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

/*
virtual void setFocusMode(QCameraFocus::FocusModes mode) = 0
*/
HB_FUNC_STATIC( QCAMERAFOCUSCONTROL_SETFOCUSMODE )
{
  QCameraFocusControl * obj = (QCameraFocusControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setFocusMode ( (QCameraFocus::FocusModes) hb_parni(1) );
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

/*
virtual void setFocusPointMode(QCameraFocus::FocusPointMode mode) = 0
*/
HB_FUNC_STATIC( QCAMERAFOCUSCONTROL_SETFOCUSPOINTMODE )
{
  QCameraFocusControl * obj = (QCameraFocusControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setFocusPointMode ( (QCameraFocus::FocusPointMode) hb_parni(1) );
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

/*
void customFocusPointChanged( const QPointF & point )
*/
HB_FUNC_STATIC( QCAMERAFOCUSCONTROL_ONCUSTOMFOCUSPOINTCHANGED )
{
  if( hb_pcount() == 1 )
  {
    QCameraFocusControl * sender = (QCameraFocusControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "customFocusPointChanged(QPointF)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QCameraFocusControl::customFocusPointChanged, [sender](QPointF arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "customFocusPointChanged(QPointF)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QCAMERAFOCUSCONTROL" );
            PHB_ITEM pArg1 = Signals2_return_object( (void *) &arg1, "QPOINTF" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "customFocusPointChanged(QPointF)", connection );

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
  else if( hb_pcount() == 0 )
  {
    QCameraFocusControl * sender = (QCameraFocusControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "customFocusPointChanged(QPointF)" );

      QObject::disconnect( Signals2_get_connection( sender, "customFocusPointChanged(QPointF)" ) );

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

/*
void focusModeChanged( QCameraFocus::FocusModes mode )
*/
HB_FUNC_STATIC( QCAMERAFOCUSCONTROL_ONFOCUSMODECHANGED )
{
  if( hb_pcount() == 1 )
  {
    QCameraFocusControl * sender = (QCameraFocusControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "focusModeChanged(QCameraFocus::FocusModes)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QCameraFocusControl::focusModeChanged, [sender](QCameraFocus::FocusModes arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "focusModeChanged(QCameraFocus::FocusModes)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QCAMERAFOCUSCONTROL" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "focusModeChanged(QCameraFocus::FocusModes)", connection );

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
  else if( hb_pcount() == 0 )
  {
    QCameraFocusControl * sender = (QCameraFocusControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "focusModeChanged(QCameraFocus::FocusModes)" );

      QObject::disconnect( Signals2_get_connection( sender, "focusModeChanged(QCameraFocus::FocusModes)" ) );

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

/*
void focusPointModeChanged( QCameraFocus::FocusPointMode mode )
*/
HB_FUNC_STATIC( QCAMERAFOCUSCONTROL_ONFOCUSPOINTMODECHANGED )
{
  if( hb_pcount() == 1 )
  {
    QCameraFocusControl * sender = (QCameraFocusControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "focusPointModeChanged(QCameraFocus::FocusPointMode)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QCameraFocusControl::focusPointModeChanged, [sender](QCameraFocus::FocusPointMode arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "focusPointModeChanged(QCameraFocus::FocusPointMode)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QCAMERAFOCUSCONTROL" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "focusPointModeChanged(QCameraFocus::FocusPointMode)", connection );

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
  else if( hb_pcount() == 0 )
  {
    QCameraFocusControl * sender = (QCameraFocusControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "focusPointModeChanged(QCameraFocus::FocusPointMode)" );

      QObject::disconnect( Signals2_get_connection( sender, "focusPointModeChanged(QCameraFocus::FocusPointMode)" ) );

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

/*
void focusZonesChanged()
*/
HB_FUNC_STATIC( QCAMERAFOCUSCONTROL_ONFOCUSZONESCHANGED )
{
  if( hb_pcount() == 1 )
  {
    QCameraFocusControl * sender = (QCameraFocusControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "focusZonesChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QCameraFocusControl::focusZonesChanged, [sender]() {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "focusZonesChanged()" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QCAMERAFOCUSCONTROL" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "focusZonesChanged()", connection );

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
  else if( hb_pcount() == 0 )
  {
    QCameraFocusControl * sender = (QCameraFocusControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "focusZonesChanged()" );

      QObject::disconnect( Signals2_get_connection( sender, "focusZonesChanged()" ) );

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
