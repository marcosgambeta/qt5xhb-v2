/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTITEMMODEL
REQUEST QMIMEDATA
REQUEST QMODELINDEX
REQUEST QSIZE
REQUEST QVARIANT
#endif

CLASS QConcatenateTablesProxyModel INHERIT QAbstractItemModel

   METHOD new
   METHOD delete
   METHOD addSourceModel
   METHOD removeSourceModel
   METHOD mapFromSource
   METHOD mapToSource
   METHOD data
   METHOD setData
   METHOD flags
   METHOD index
   METHOD parent
   METHOD rowCount
   METHOD headerData
   METHOD columnCount
   METHOD mimeTypes
   METHOD mimeData
   METHOD canDropMimeData
   METHOD dropMimeData
   METHOD sourceModels
   METHOD span

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QConcatenateTablesProxyModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,13,0))
#include <QtCore/QConcatenateTablesProxyModel>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,13,0))
#include <QtCore/QConcatenateTablesProxyModel>
#endif
#endif

#include <QtCore/QMimeData>
#include <QtCore/QSize>

/*
QConcatenateTablesProxyModel( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QCONCATENATETABLESPROXYMODEL_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,13,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    auto obj = new QConcatenateTablesProxyModel( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
~QConcatenateTablesProxyModel()
*/
HB_FUNC_STATIC( QCONCATENATETABLESPROXYMODEL_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,13,0))
  auto obj = (QConcatenateTablesProxyModel *) Qt5xHb::itemGetPtrStackSelfItem();

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
Q_SCRIPTABLE void addSourceModel( QAbstractItemModel * sourceModel )
*/
HB_FUNC_STATIC( QCONCATENATETABLESPROXYMODEL_ADDSOURCEMODEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,13,0))
  auto obj = (QConcatenateTablesProxyModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTITEMMODEL(1) )
    {
#endif
      obj->addSourceModel( PQABSTRACTITEMMODEL(1) );
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
Q_SCRIPTABLE void removeSourceModel( QAbstractItemModel * sourceModel )
*/
HB_FUNC_STATIC( QCONCATENATETABLESPROXYMODEL_REMOVESOURCEMODEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,13,0))
  auto obj = (QConcatenateTablesProxyModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTITEMMODEL(1) )
    {
#endif
      obj->removeSourceModel( PQABSTRACTITEMMODEL(1) );
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
QModelIndex mapFromSource( const QModelIndex & sourceIndex ) const
*/
HB_FUNC_STATIC( QCONCATENATETABLESPROXYMODEL_MAPFROMSOURCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,13,0))
  auto obj = (QConcatenateTablesProxyModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      auto ptr = new QModelIndex( obj->mapFromSource( *PQMODELINDEX(1) ) );
      Qt5xHb::createReturnClass( ptr, "QMODELINDEX", true );
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
QModelIndex mapToSource( const QModelIndex & proxyIndex ) const
*/
HB_FUNC_STATIC( QCONCATENATETABLESPROXYMODEL_MAPTOSOURCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,13,0))
  auto obj = (QConcatenateTablesProxyModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      auto ptr = new QModelIndex( obj->mapToSource( *PQMODELINDEX(1) ) );
      Qt5xHb::createReturnClass( ptr, "QMODELINDEX", true );
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
QVariant data( const QModelIndex & index, int role = Qt::DisplayRole ) const override
*/
HB_FUNC_STATIC( QCONCATENATETABLESPROXYMODEL_DATA )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,13,0))
  auto obj = (QConcatenateTablesProxyModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQMODELINDEX(1) && (HB_ISNUM(2)||HB_ISNIL(2)) )
    {
#endif
      auto ptr = new QVariant( obj->data( *PQMODELINDEX(1), OPINT(2,Qt::DisplayRole) ) );
      Qt5xHb::createReturnClass( ptr, "QVARIANT", true );
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
bool setData( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole ) override
*/
HB_FUNC_STATIC( QCONCATENATETABLESPROXYMODEL_SETDATA )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,13,0))
  auto obj = (QConcatenateTablesProxyModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISQMODELINDEX(1) && ISQVARIANT(2) && (HB_ISNUM(3)||HB_ISNIL(3)) )
    {
#endif
      RBOOL( obj->setData( *PQMODELINDEX(1), *PQVARIANT(2), OPINT(3,Qt::EditRole) ) );
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
Qt::ItemFlags flags( const QModelIndex & index ) const override
*/
HB_FUNC_STATIC( QCONCATENATETABLESPROXYMODEL_FLAGS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,13,0))
  auto obj = (QConcatenateTablesProxyModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      RENUM( obj->flags( *PQMODELINDEX(1) ) );
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
QModelIndex index( int row, int column, const QModelIndex & parent = QModelIndex() ) const override
*/
HB_FUNC_STATIC( QCONCATENATETABLESPROXYMODEL_INDEX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,13,0))
  auto obj = (QConcatenateTablesProxyModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && HB_ISNUM(1) && HB_ISNUM(2) && (ISQMODELINDEX(3)||HB_ISNIL(3)) )
    {
#endif
      auto ptr = new QModelIndex( obj->index( PINT(1), PINT(2), HB_ISNIL(3)? QModelIndex() : *(QModelIndex *) Qt5xHb::itemGetPtr(3) ) );
      Qt5xHb::createReturnClass( ptr, "QMODELINDEX", true );
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
QModelIndex parent( const QModelIndex & index ) const override
*/
HB_FUNC_STATIC( QCONCATENATETABLESPROXYMODEL_PARENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,13,0))
  auto obj = (QConcatenateTablesProxyModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      auto ptr = new QModelIndex( obj->parent( *PQMODELINDEX(1) ) );
      Qt5xHb::createReturnClass( ptr, "QMODELINDEX", true );
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
int rowCount( const QModelIndex & parent = QModelIndex() ) const override
*/
HB_FUNC_STATIC( QCONCATENATETABLESPROXYMODEL_ROWCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,13,0))
  auto obj = (QConcatenateTablesProxyModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQMODELINDEX(1)||HB_ISNIL(1)) )
    {
#endif
      RINT( obj->rowCount( HB_ISNIL(1)? QModelIndex() : *(QModelIndex *) Qt5xHb::itemGetPtr(1) ) );
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
QVariant headerData( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const override
*/
HB_FUNC_STATIC( QCONCATENATETABLESPROXYMODEL_HEADERDATA )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,13,0))
  auto obj = (QConcatenateTablesProxyModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && HB_ISNUM(1) && HB_ISNUM(2) && (HB_ISNUM(3)||HB_ISNIL(3)) )
    {
#endif
      auto ptr = new QVariant( obj->headerData( PINT(1), (Qt::Orientation) hb_parni(2), OPINT(3,Qt::DisplayRole) ) );
      Qt5xHb::createReturnClass( ptr, "QVARIANT", true );
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
int columnCount( const QModelIndex & parent = QModelIndex() ) const override
*/
HB_FUNC_STATIC( QCONCATENATETABLESPROXYMODEL_COLUMNCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,13,0))
  auto obj = (QConcatenateTablesProxyModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQMODELINDEX(1)||HB_ISNIL(1)) )
    {
#endif
      RINT( obj->columnCount( HB_ISNIL(1)? QModelIndex() : *(QModelIndex *) Qt5xHb::itemGetPtr(1) ) );
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
QStringList mimeTypes() const override
*/
HB_FUNC_STATIC( QCONCATENATETABLESPROXYMODEL_MIMETYPES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,13,0))
  auto obj = (QConcatenateTablesProxyModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->mimeTypes() );
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
QMimeData * mimeData( const QModelIndexList & indexes ) const override
*/
HB_FUNC_STATIC( QCONCATENATETABLESPROXYMODEL_MIMEDATA )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,13,0))
  auto obj = (QConcatenateTablesProxyModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISARRAY(1) )
    {
#endif
      QModelIndexList par1;
      PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
      int nLen1 = hb_arrayLen(aList1);
      for( auto i1 = 0; i1 < nLen1; i1++ )
      {
        par1 << *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
      }
      QMimeData * ptr = obj->mimeData( par1 );
      Qt5xHb::createReturnQObjectClass( ptr, "QMIMEDATA" );
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
bool canDropMimeData( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent ) const override
*/
HB_FUNC_STATIC( QCONCATENATETABLESPROXYMODEL_CANDROPMIMEDATA )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,13,0))
  auto obj = (QConcatenateTablesProxyModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(5) && ISQMIMEDATA(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && ISQMODELINDEX(5) )
    {
#endif
      RBOOL( obj->canDropMimeData( PQMIMEDATA(1), (Qt::DropAction) hb_parni(2), PINT(3), PINT(4), *PQMODELINDEX(5) ) );
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
bool dropMimeData( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent ) override
*/
HB_FUNC_STATIC( QCONCATENATETABLESPROXYMODEL_DROPMIMEDATA )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,13,0))
  auto obj = (QConcatenateTablesProxyModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(5) && ISQMIMEDATA(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && ISQMODELINDEX(5) )
    {
#endif
      RBOOL( obj->dropMimeData( PQMIMEDATA(1), (Qt::DropAction) hb_parni(2), PINT(3), PINT(4), *PQMODELINDEX(5) ) );
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
QList<QAbstractItemModel *> sourceModels() const
*/
HB_FUNC_STATIC( QCONCATENATETABLESPROXYMODEL_SOURCEMODELS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,15,0))
  auto obj = (QConcatenateTablesProxyModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QAbstractItemModel *> list = obj->sourceModels();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QABSTRACTITEMMODEL" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( auto i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( nullptr );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( nullptr );
          hb_itemPutPtr( pItem, (QAbstractItemModel *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, nullptr, "QABSTRACTITEMMODEL", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
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
QSize span( const QModelIndex & index ) const override
*/
HB_FUNC_STATIC( QCONCATENATETABLESPROXYMODEL_SPAN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,13,0))
  auto obj = (QConcatenateTablesProxyModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      auto ptr = new QSize( obj->span( *PQMODELINDEX(1) ) );
      Qt5xHb::createReturnClass( ptr, "QSIZE", true );
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

#pragma ENDDUMP
