/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIODEVICE
REQUEST QNETWORKCACHEMETADATA
#endif

CLASS QAbstractNetworkCache INHERIT QObject

   METHOD delete
   METHOD cacheSize
   METHOD data
   METHOD insert
   METHOD metaData
   METHOD prepare
   METHOD remove
   METHOD updateMetaData
   METHOD clear

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractNetworkCache
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtNetwork/QAbstractNetworkCache>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtNetwork/QAbstractNetworkCache>
#endif

#include <QtCore/QIODevice>

/*
explicit QAbstractNetworkCache(QObject *parent = nullptr) [protected]
*/

/*
QAbstractNetworkCache(QAbstractNetworkCachePrivate &dd, QObject *parent) [protected]
*/

/*
virtual ~QAbstractNetworkCache()
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_DELETE )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) _qt5xhb_itemGetPtrStackSelfItem();

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
virtual qint64 cacheSize () const = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_CACHESIZE )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->cacheSize () );
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
virtual QIODevice * data ( const QUrl & url ) = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_DATA )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      QIODevice * ptr = obj->data ( *PQURL(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QIODEVICE" );
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
virtual void insert ( QIODevice * device ) = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_INSERT )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQIODEVICE(1) )
    {
#endif
      obj->insert ( PQIODEVICE(1) );
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
virtual QNetworkCacheMetaData metaData ( const QUrl & url ) = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_METADATA )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      QNetworkCacheMetaData * ptr = new QNetworkCacheMetaData( obj->metaData ( *PQURL(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QNETWORKCACHEMETADATA", true );
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
virtual QIODevice * prepare ( const QNetworkCacheMetaData & metaData ) = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_PREPARE )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQNETWORKCACHEMETADATA(1) )
    {
#endif
      QIODevice * ptr = obj->prepare ( *PQNETWORKCACHEMETADATA(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QIODEVICE" );
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
virtual bool remove ( const QUrl & url ) = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_REMOVE )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      RBOOL( obj->remove ( *PQURL(1) ) );
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
virtual void updateMetaData ( const QNetworkCacheMetaData & metaData ) = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_UPDATEMETADATA )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQNETWORKCACHEMETADATA(1) )
    {
#endif
      obj->updateMetaData ( *PQNETWORKCACHEMETADATA(1) );
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
virtual void clear () = 0 (slot)
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_CLEAR )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear ();
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
