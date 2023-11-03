/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSENSORGESTURERECOGNIZER
#endif

CLASS QSensorGestureManager INHERIT QObject

   METHOD new
   METHOD delete
   METHOD registerSensorGestureRecognizer
   METHOD gestureIds
   METHOD recognizerSignals
   METHOD sensorGestureRecognizer

   METHOD onNewSensorGestureAvailable

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSensorGestureManager
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QtSensors/QSensorGestureManager>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QtSensors/QSensorGestureManager>
#endif
#endif

/*
QSensorGestureManager( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QSENSORGESTUREMANAGER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( ISBETWEEN(0, 1) && ( ISQOBJECT(1) || HB_ISNIL(1) ) )
  {
    auto obj = new QSensorGestureManager( OPQOBJECT( 1, nullptr ) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC( QSENSORGESTUREMANAGER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  auto obj = qobject_cast<QSensorGestureManager*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = nullptr;
    auto ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
bool registerSensorGestureRecognizer( QSensorGestureRecognizer * recognizer )
*/
HB_FUNC_STATIC( QSENSORGESTUREMANAGER_REGISTERSENSORGESTURERECOGNIZER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  auto obj = qobject_cast<QSensorGestureManager*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSENSORGESTURERECOGNIZER(1) )
    {
#endif
      RBOOL( obj->registerSensorGestureRecognizer( PQSENSORGESTURERECOGNIZER(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QStringList gestureIds() const
*/
HB_FUNC_STATIC( QSENSORGESTUREMANAGER_GESTUREIDS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  auto obj = qobject_cast<QSensorGestureManager*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->gestureIds() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QStringList recognizerSignals( const QString & recognizerId ) const
*/
HB_FUNC_STATIC( QSENSORGESTUREMANAGER_RECOGNIZERSIGNALS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  auto obj = qobject_cast<QSensorGestureManager*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RQSTRINGLIST( obj->recognizerSignals( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
static QSensorGestureRecognizer * sensorGestureRecognizer( const QString & id )
*/
HB_FUNC_STATIC( QSENSORGESTUREMANAGER_SENSORGESTURERECOGNIZER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
#endif
    QSensorGestureRecognizer * ptr = QSensorGestureManager::sensorGestureRecognizer( PQSTRING(1) );
    Qt5xHb::createReturnQObjectClass(ptr, "QSENSORGESTURERECOGNIZER");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
void newSensorGestureAvailable()
*/
HB_FUNC_STATIC( QSENSORGESTUREMANAGER_ONNEWSENSORGESTUREAVAILABLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  auto sender = qobject_cast<QSensorGestureManager*>(Qt5xHb::getQObjectPointerFromSelfItem());

  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("newSensorGestureAvailable()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QSensorGestureManager::newSensorGestureAvailable,
                                                              [sender, indexOfCodeBlock]
                                                              () {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QSENSORGESTUREMANAGER");
            hb_vmEvalBlockV(cb, 1, pSender);
            hb_itemRelease(pSender);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP
