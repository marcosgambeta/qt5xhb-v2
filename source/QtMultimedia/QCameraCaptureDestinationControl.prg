/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QCameraCaptureDestinationControl INHERIT QMediaObject

   METHOD delete
   METHOD captureDestination
   METHOD isCaptureDestinationSupported
   METHOD setCaptureDestination

   METHOD onCaptureDestinationChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCameraCaptureDestinationControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCameraCaptureDestinationControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QCameraCaptureDestinationControl>
#endif

/*
explicit QCameraCaptureDestinationControl(QObject *parent = Q_NULLPTR) [protected]
*/

/*
~QCameraCaptureDestinationControl()
*/
HB_FUNC_STATIC( QCAMERACAPTUREDESTINATIONCONTROL_DELETE )
{
  QCameraCaptureDestinationControl * obj = (QCameraCaptureDestinationControl *) _qt5xhb_itemGetPtrStackSelfItem();

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
virtual QCameraImageCapture::CaptureDestinations captureDestination() const = 0
*/
HB_FUNC_STATIC( QCAMERACAPTUREDESTINATIONCONTROL_CAPTUREDESTINATION )
{
  QCameraCaptureDestinationControl * obj = (QCameraCaptureDestinationControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->captureDestination () );
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
virtual bool isCaptureDestinationSupported(QCameraImageCapture::CaptureDestinations destination) const = 0
*/
HB_FUNC_STATIC( QCAMERACAPTUREDESTINATIONCONTROL_ISCAPTUREDESTINATIONSUPPORTED )
{
  QCameraCaptureDestinationControl * obj = (QCameraCaptureDestinationControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->isCaptureDestinationSupported ( (QCameraImageCapture::CaptureDestinations) hb_parni(1) ) );
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
virtual void setCaptureDestination(QCameraImageCapture::CaptureDestinations destination) = 0
*/
HB_FUNC_STATIC( QCAMERACAPTUREDESTINATIONCONTROL_SETCAPTUREDESTINATION )
{
  QCameraCaptureDestinationControl * obj = (QCameraCaptureDestinationControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setCaptureDestination ( (QCameraImageCapture::CaptureDestinations) hb_parni(1) );
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
void captureDestinationChanged( QCameraImageCapture::CaptureDestinations destination )
*/
HB_FUNC_STATIC( QCAMERACAPTUREDESTINATIONCONTROL_ONCAPTUREDESTINATIONCHANGED )
{
  if( hb_pcount() == 1 )
  {
    QCameraCaptureDestinationControl * sender = (QCameraCaptureDestinationControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "captureDestinationChanged(QCameraImageCapture::CaptureDestinations)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QCameraCaptureDestinationControl::captureDestinationChanged, [sender](QCameraImageCapture::CaptureDestinations arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "captureDestinationChanged(QCameraImageCapture::CaptureDestinations)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QCAMERACAPTUREDESTINATIONCONTROL" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "captureDestinationChanged(QCameraImageCapture::CaptureDestinations)", connection );

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
    QCameraCaptureDestinationControl * sender = (QCameraCaptureDestinationControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "captureDestinationChanged(QCameraImageCapture::CaptureDestinations)" );

      QObject::disconnect( Signals2_get_connection( sender, "captureDestinationChanged(QCameraImageCapture::CaptureDestinations)" ) );

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
