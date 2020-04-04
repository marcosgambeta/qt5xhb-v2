/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOCODINGMANAGER
REQUEST QGEOROUTINGMANAGER
REQUEST QPLACEMANAGER
#endif

CLASS QGeoServiceProvider INHERIT QObject

   METHOD delete
   METHOD availableServiceProviders
   METHOD routingFeatures
   METHOD geocodingFeatures
   METHOD mappingFeatures
   METHOD placesFeatures
   METHOD geocodingManager
   METHOD routingManager
   METHOD placeManager
   METHOD error
   METHOD errorString
   METHOD setLocale
   METHOD setAllowExperimental

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGeoServiceProvider
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtLocation/QGeoServiceProvider>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtLocation/QGeoServiceProvider>
#endif
#endif

#include <QtLocation/QGeoCodingManager>
#include <QtLocation/QGeoRoutingManager>
#include <QtLocation/QPlaceManager>

HB_FUNC_STATIC( QGEOSERVICEPROVIDER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoServiceProvider *) Qt5xHb::itemGetPtrStackSelfItem();

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
#endif
}

/*
static QStringList availableServiceProviders()
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_AVAILABLESERVICEPROVIDERS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RQSTRINGLIST( QGeoServiceProvider::availableServiceProviders() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
#endif
}

/*
RoutingFeatures routingFeatures() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_ROUTINGFEATURES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoServiceProvider *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->routingFeatures() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
GeocodingFeatures geocodingFeatures() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_GEOCODINGFEATURES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoServiceProvider *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->geocodingFeatures() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
MappingFeatures mappingFeatures() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_MAPPINGFEATURES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoServiceProvider *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->mappingFeatures() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
PlacesFeatures placesFeatures() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_PLACESFEATURES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoServiceProvider *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->placesFeatures() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QGeoCodingManager *geocodingManager() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_GEOCODINGMANAGER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoServiceProvider *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QGeoCodingManager * ptr = obj->geocodingManager();
      Qt5xHb::createReturnQObjectClass( ptr, "QGEOCODINGMANAGER" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QGeoMappingManager *mappingManager() const
*/

/*
QGeoRoutingManager *routingManager() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_ROUTINGMANAGER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoServiceProvider *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QGeoRoutingManager * ptr = obj->routingManager();
      Qt5xHb::createReturnQObjectClass( ptr, "QGEOROUTINGMANAGER" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QPlaceManager *placeManager() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_PLACEMANAGER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoServiceProvider *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPlaceManager * ptr = obj->placeManager();
      Qt5xHb::createReturnQObjectClass( ptr, "QPLACEMANAGER" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
Error error() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoServiceProvider *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->error() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QString errorString() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_ERRORSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoServiceProvider *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->errorString() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setLocale(const QLocale &locale)
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_SETLOCALE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoServiceProvider *) Qt5xHb::itemGetPtrStackSelfItem();

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
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setAllowExperimental(bool allow)
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_SETALLOWEXPERIMENTAL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QGeoServiceProvider *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setAllowExperimental( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

#pragma ENDDUMP
