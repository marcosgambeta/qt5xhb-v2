/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAUDIOFORMAT
REQUEST QIODEVICE
#endif

CLASS QAbstractAudioInput INHERIT QObject

   METHOD delete
   METHOD start
   METHOD stop
   METHOD reset
   METHOD suspend
   METHOD resume
   METHOD bytesReady
   METHOD periodSize
   METHOD setBufferSize
   METHOD bufferSize
   METHOD setNotifyInterval
   METHOD notifyInterval
   METHOD processedUSecs
   METHOD elapsedUSecs
   METHOD error
   METHOD state
   METHOD setFormat
   METHOD format
   METHOD setVolume
   METHOD volume

   METHOD onErrorChanged
   METHOD onStateChanged
   METHOD onNotify

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractAudioInput
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAbstractAudioInput>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QAbstractAudioInput>
#endif

#include <QIODevice>

HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_DELETE )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();

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
virtual void start(QIODevice *device) = 0
*/
void QAbstractAudioInput_start1 ()
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->start ( PQIODEVICE(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QIODevice* start() = 0
*/
void QAbstractAudioInput_start2 ()
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QIODevice * ptr = obj->start ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QIODEVICE" );
  }
}

//[1]virtual void start(QIODevice *device) = 0
//[2]virtual QIODevice* start() = 0

HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_START )
{
  if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QAbstractAudioInput_start1();
  }
  else if( ISNUMPAR(0) )
  {
    QAbstractAudioInput_start2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual void stop() = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_STOP )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->stop ();
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
virtual void reset() = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_RESET )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->reset ();
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
virtual void suspend()  = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_SUSPEND )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->suspend ();
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
virtual void resume() = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_RESUME )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->resume ();
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
virtual int bytesReady() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_BYTESREADY )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->bytesReady () );
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
virtual int periodSize() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_PERIODSIZE )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->periodSize () );
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
virtual void setBufferSize(int value) = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_SETBUFFERSIZE )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setBufferSize ( PINT(1) );
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
virtual int bufferSize() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_BUFFERSIZE )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->bufferSize () );
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
virtual void setNotifyInterval(int milliSeconds) = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_SETNOTIFYINTERVAL )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setNotifyInterval ( PINT(1) );
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
virtual int notifyInterval() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_NOTIFYINTERVAL )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->notifyInterval () );
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
virtual qint64 processedUSecs() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_PROCESSEDUSECS )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->processedUSecs () );
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
virtual qint64 elapsedUSecs() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_ELAPSEDUSECS )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->elapsedUSecs () );
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
virtual QAudio::Error error() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_ERROR )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->error () );
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
virtual QAudio::State state() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_STATE )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->state () );
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
virtual void setFormat(const QAudioFormat& fmt) = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_SETFORMAT )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQAUDIOFORMAT(1) )
    {
#endif
      obj->setFormat ( *PQAUDIOFORMAT(1) );
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
virtual QAudioFormat format() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_FORMAT )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAudioFormat * ptr = new QAudioFormat( obj->format () );
      _qt5xhb_createReturnClass ( ptr, "QAUDIOFORMAT", true );
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
virtual void setVolume(qreal) = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_SETVOLUME )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setVolume ( PQREAL(1) );
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
virtual qreal volume() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_VOLUME )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->volume () );
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
void errorChanged( QAudio::Error error )
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_ONERRORCHANGED )
{
  if( hb_pcount() == 1 )
  {
    QAbstractAudioInput * sender = (QAbstractAudioInput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "errorChanged(QAudio::Error)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QAbstractAudioInput::errorChanged, [sender](QAudio::Error arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "errorChanged(QAudio::Error)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QABSTRACTAUDIOINPUT" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "errorChanged(QAudio::Error)", connection );

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
    QAbstractAudioInput * sender = (QAbstractAudioInput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "errorChanged(QAudio::Error)" );

      QObject::disconnect( Signals2_get_connection( sender, "errorChanged(QAudio::Error)" ) );

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
void stateChanged( QAudio::State state )
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_ONSTATECHANGED )
{
  if( hb_pcount() == 1 )
  {
    QAbstractAudioInput * sender = (QAbstractAudioInput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "stateChanged(QAudio::State)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QAbstractAudioInput::stateChanged, [sender](QAudio::State arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "stateChanged(QAudio::State)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QABSTRACTAUDIOINPUT" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "stateChanged(QAudio::State)", connection );

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
    QAbstractAudioInput * sender = (QAbstractAudioInput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "stateChanged(QAudio::State)" );

      QObject::disconnect( Signals2_get_connection( sender, "stateChanged(QAudio::State)" ) );

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
void notify()
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_ONNOTIFY )
{
  if( hb_pcount() == 1 )
  {
    QAbstractAudioInput * sender = (QAbstractAudioInput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "notify()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QAbstractAudioInput::notify, [sender]() {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "notify()" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QABSTRACTAUDIOINPUT" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "notify()", connection );

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
    QAbstractAudioInput * sender = (QAbstractAudioInput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "notify()" );

      QObject::disconnect( Signals2_get_connection( sender, "notify()" ) );

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
