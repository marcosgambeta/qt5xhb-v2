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
REQUEST QBOXPLOTSERIES
#endif

CLASS QHBoxPlotModelMapper INHERIT QBoxPlotModelMapper

   METHOD new
   METHOD series
   METHOD setSeries
   METHOD model
   METHOD setModel
   METHOD firstBoxSetRow
   METHOD setFirstBoxSetRow
   METHOD lastBoxSetRow
   METHOD setLastBoxSetRow
   METHOD firstColumn
   METHOD setFirstColumn
   METHOD columnCount
   METHOD setColumnCount

   METHOD onColumnCountChanged
   METHOD onFirstBoxSetRowChanged
   METHOD onFirstColumnChanged
   METHOD onLastBoxSetRowChanged
   METHOD onModelReplaced
   METHOD onSeriesReplaced

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QHBoxPlotModelMapper
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtCharts/QHBoxPlotModelMapper>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtCharts/QHBoxPlotModelMapper>
#endif
#endif

#include <QtCharts/QBoxPlotSeries>
#include <QtCore/QAbstractItemModel>

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
using namespace QtCharts;
#endif

/*
explicit QHBoxPlotModelMapper(QObject *parent = nullptr)
*/
HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    auto obj = new QHBoxPlotModelMapper( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
QBoxPlotSeries *series() const
*/
HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_SERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = (QHBoxPlotModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QBoxPlotSeries * ptr = obj->series();
      Qt5xHb::createReturnQObjectClass( ptr, "QBOXPLOTSERIES" );
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
void setSeries(QBoxPlotSeries *series)
*/
HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_SETSERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = (QHBoxPlotModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBOXPLOTSERIES(1) )
    {
#endif
      obj->setSeries( PQBOXPLOTSERIES(1) );
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
QAbstractItemModel *model() const
*/
HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_MODEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = (QHBoxPlotModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAbstractItemModel * ptr = obj->model();
      Qt5xHb::createReturnQObjectClass( ptr, "QABSTRACTITEMMODEL" );
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
void setModel(QAbstractItemModel *model)
*/
HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_SETMODEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = (QHBoxPlotModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTITEMMODEL(1) )
    {
#endif
      obj->setModel( PQABSTRACTITEMMODEL(1) );
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
int firstBoxSetRow() const
*/
HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_FIRSTBOXSETROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = (QHBoxPlotModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->firstBoxSetRow() );
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
void setFirstBoxSetRow(int firstBoxSetRow)
*/
HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_SETFIRSTBOXSETROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = (QHBoxPlotModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setFirstBoxSetRow( PINT(1) );
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
int lastBoxSetRow() const
*/
HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_LASTBOXSETROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = (QHBoxPlotModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->lastBoxSetRow() );
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
void setLastBoxSetRow(int lastBoxSetRow)
*/
HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_SETLASTBOXSETROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = (QHBoxPlotModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setLastBoxSetRow( PINT(1) );
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
int firstColumn() const
*/
HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_FIRSTCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = (QHBoxPlotModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->firstColumn() );
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
void setFirstColumn(int firstColumn)
*/
HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_SETFIRSTCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = (QHBoxPlotModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setFirstColumn( PINT(1) );
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
int columnCount() const
*/
HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_COLUMNCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = (QHBoxPlotModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->columnCount() );
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
void setColumnCount(int rowCount)
*/
HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_SETCOLUMNCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = (QHBoxPlotModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setColumnCount( PINT(1) );
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
void columnCountChanged()
*/
HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_ONCOLUMNCOUNTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto sender = (QHBoxPlotModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("columnCountChanged()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QHBoxPlotModelMapper::columnCountChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject( (QObject *) sender, "QHBOXPLOTMODELMAPPER" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
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
#else
  hb_retl( false );
#endif
}

/*
void firstBoxSetRowChanged()
*/
HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_ONFIRSTBOXSETROWCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto sender = (QHBoxPlotModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("firstBoxSetRowChanged()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QHBoxPlotModelMapper::firstBoxSetRowChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject( (QObject *) sender, "QHBOXPLOTMODELMAPPER" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
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
#else
  hb_retl( false );
#endif
}

/*
void firstColumnChanged()
*/
HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_ONFIRSTCOLUMNCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto sender = (QHBoxPlotModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("firstColumnChanged()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QHBoxPlotModelMapper::firstColumnChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject( (QObject *) sender, "QHBOXPLOTMODELMAPPER" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
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
#else
  hb_retl( false );
#endif
}

/*
void lastBoxSetRowChanged()
*/
HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_ONLASTBOXSETROWCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto sender = (QHBoxPlotModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("lastBoxSetRowChanged()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QHBoxPlotModelMapper::lastBoxSetRowChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject( (QObject *) sender, "QHBOXPLOTMODELMAPPER" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
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
#else
  hb_retl( false );
#endif
}

/*
void modelReplaced()
*/
HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_ONMODELREPLACED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto sender = (QHBoxPlotModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("modelReplaced()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QHBoxPlotModelMapper::modelReplaced, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject( (QObject *) sender, "QHBOXPLOTMODELMAPPER" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
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
#else
  hb_retl( false );
#endif
}

/*
void seriesReplaced()
*/
HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_ONSERIESREPLACED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto sender = (QHBoxPlotModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("seriesReplaced()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QHBoxPlotModelMapper::seriesReplaced, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject( (QObject *) sender, "QHBOXPLOTMODELMAPPER" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
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
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
