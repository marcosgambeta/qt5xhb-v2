/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOROUTEREPLY
REQUEST QLOCALE
#endif

CLASS QGeoRoutingManagerEngine INHERIT QObject

   METHOD delete
   METHOD managerName
   METHOD managerVersion
   METHOD calculateRoute
   METHOD updateRoute
   METHOD supportedTravelModes
   METHOD supportedFeatureTypes
   METHOD supportedFeatureWeights
   METHOD supportedRouteOptimizations
   METHOD supportedSegmentDetails
   METHOD supportedManeuverDetails
   METHOD setLocale
   METHOD locale
   METHOD setMeasurementSystem
   METHOD measurementSystem

   METHOD onFinished
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGeoRoutingManagerEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtLocation/QGeoRoutingManagerEngine>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtLocation/QGeoRoutingManagerEngine>
#endif
#endif

HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoRoutingManagerEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, nullptr );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QString managerName() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_MANAGERNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoRoutingManagerEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->managerName() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
int managerVersion() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_MANAGERVERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoRoutingManagerEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->managerVersion() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
virtual QGeoRouteReply * calculateRoute( const QGeoRouteRequest & request ) = 0
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_CALCULATEROUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoRoutingManagerEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGEOROUTEREQUEST(1) )
    {
#endif
      QGeoRouteReply * ptr = obj->calculateRoute( *PQGEOROUTEREQUEST(1) );
      Qt5xHb::createReturnQObjectClass( ptr, "QGEOROUTEREPLY" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
virtual QGeoRouteReply * updateRoute( const QGeoRoute & route, const QGeoCoordinate & position )
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_UPDATEROUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoRoutingManagerEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQGEOROUTE(1) && ISQGEOCOORDINATE(2) )
    {
#endif
      QGeoRouteReply * ptr = obj->updateRoute( *PQGEOROUTE(1), *PQGEOCOORDINATE(2) );
      Qt5xHb::createReturnQObjectClass( ptr, "QGEOROUTEREPLY" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QGeoRouteRequest::TravelModes supportedTravelModes() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_SUPPORTEDTRAVELMODES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoRoutingManagerEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->supportedTravelModes() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QGeoRouteRequest::FeatureTypes supportedFeatureTypes() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_SUPPORTEDFEATURETYPES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoRoutingManagerEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->supportedFeatureTypes() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QGeoRouteRequest::FeatureWeights supportedFeatureWeights() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_SUPPORTEDFEATUREWEIGHTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoRoutingManagerEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->supportedFeatureWeights() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QGeoRouteRequest::RouteOptimizations supportedRouteOptimizations() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_SUPPORTEDROUTEOPTIMIZATIONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoRoutingManagerEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->supportedRouteOptimizations() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QGeoRouteRequest::SegmentDetails supportedSegmentDetails() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_SUPPORTEDSEGMENTDETAILS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoRoutingManagerEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->supportedSegmentDetails() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QGeoRouteRequest::ManeuverDetails supportedManeuverDetails() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_SUPPORTEDMANEUVERDETAILS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoRoutingManagerEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->supportedManeuverDetails() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setLocale( const QLocale & locale )
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_SETLOCALE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoRoutingManagerEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQLOCALE(1) )
    {
#endif
      obj->setLocale( *PQLOCALE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QLocale locale() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_LOCALE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoRoutingManagerEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QLocale( obj->locale() );
      Qt5xHb::createReturnClass( ptr, "QLOCALE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setMeasurementSystem( QLocale::MeasurementSystem system )
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_SETMEASUREMENTSYSTEM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoRoutingManagerEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setMeasurementSystem( (QLocale::MeasurementSystem) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QLocale::MeasurementSystem measurementSystem() const
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_MEASUREMENTSYSTEM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoRoutingManagerEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->measurementSystem() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void finished( QGeoRouteReply * reply )
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_ONFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto sender = (QGeoRoutingManagerEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("finished(QGeoRouteReply*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QGeoRoutingManagerEngine::finished, 
                                                              [sender, indexOfCodeBlock]
                                                              (QGeoRouteReply * arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QGEOROUTINGMANAGERENGINE" );
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_qobject( (QObject *) arg1, "QGEOROUTEREPLY" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

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
#else
  hb_retl( false );
#endif
}

/*
void error( QGeoRouteReply * reply, QGeoRouteReply::Error error, QString errorString = QString() )
*/
HB_FUNC_STATIC( QGEOROUTINGMANAGERENGINE_ONERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto sender = (QGeoRoutingManagerEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("error(QGeoRouteReply*,QGeoRouteReply::Error,QString)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QGeoRoutingManagerEngine::error, 
                                                              [sender, indexOfCodeBlock]
                                                              (QGeoRouteReply * arg1, QGeoRouteReply::Error arg2, QString arg3) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QGEOROUTINGMANAGERENGINE" );
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_qobject( (QObject *) arg1, "QGEOROUTEREPLY" );
            PHB_ITEM pArg2 = hb_itemPutNI( nullptr, (int) arg2 );
            PHB_ITEM pArg3 = hb_itemPutC( nullptr, QSTRINGTOSTRING(arg3) );
            hb_vmEvalBlockV( cb, 4, pSender, pArg1, pArg2, pArg3 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
            hb_itemRelease( pArg3 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

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
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
