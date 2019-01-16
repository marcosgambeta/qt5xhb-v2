/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTITEMMODEL
REQUEST QITEMSELECTION
REQUEST QMODELINDEX
#endif

CLASS QItemSelectionModel INHERIT QObject

   METHOD new
   METHOD delete
   METHOD currentIndex
   METHOD isSelected
   METHOD isRowSelected
   METHOD isColumnSelected
   METHOD rowIntersectsSelection
   METHOD columnIntersectsSelection
   METHOD hasSelection
   METHOD selectedIndexes
   METHOD selectedRows
   METHOD selectedColumns
   METHOD selection
   METHOD model
   METHOD setCurrentIndex
   METHOD select
   METHOD clear
   METHOD reset
   METHOD clearSelection
   METHOD clearCurrentIndex

   METHOD onSelectionChanged
   METHOD onCurrentChanged
   METHOD onCurrentRowChanged
   METHOD onCurrentColumnChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QItemSelectionModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QItemSelectionModel>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QItemSelectionModel>
#endif

/*
QItemSelectionModel(QAbstractItemModel *model)
*/
void QItemSelectionModel_new1 ()
{
  QItemSelectionModel * o = new QItemSelectionModel ( PQABSTRACTITEMMODEL(1) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QItemSelectionModel(QAbstractItemModel *model, QObject *parent)
*/
void QItemSelectionModel_new2 ()
{
  QItemSelectionModel * o = new QItemSelectionModel ( PQABSTRACTITEMMODEL(1), PQOBJECT(2) );
  _qt5xhb_returnNewObject( o, false );
}

//[1]QItemSelectionModel(QAbstractItemModel *model)
//[2]QItemSelectionModel(QAbstractItemModel *model, QObject *parent)

HB_FUNC_STATIC( QITEMSELECTIONMODEL_NEW )
{
  if( ISNUMPAR(1) && ISQABSTRACTITEMMODEL(1) )
  {
    QItemSelectionModel_new1();
  }
  else if( ISNUMPAR(2) && ISQABSTRACTITEMMODEL(1) && ISQOBJECT(2) )
  {
    QItemSelectionModel_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QITEMSELECTIONMODEL_DELETE )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

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
QModelIndex currentIndex() const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_CURRENTINDEX )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QModelIndex * ptr = new QModelIndex( obj->currentIndex () );
      _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
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
bool isSelected(const QModelIndex &index) const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_ISSELECTED )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      RBOOL( obj->isSelected ( *PQMODELINDEX(1) ) );
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
bool isRowSelected(int row, const QModelIndex &parent) const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_ISROWSELECTED )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQMODELINDEX(2) )
    {
#endif
      RBOOL( obj->isRowSelected ( PINT(1), *PQMODELINDEX(2) ) );
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
bool isColumnSelected(int column, const QModelIndex &parent) const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_ISCOLUMNSELECTED )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQMODELINDEX(2) )
    {
#endif
      RBOOL( obj->isColumnSelected ( PINT(1), *PQMODELINDEX(2) ) );
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
bool rowIntersectsSelection(int row, const QModelIndex &parent) const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_ROWINTERSECTSSELECTION )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQMODELINDEX(2) )
    {
#endif
      RBOOL( obj->rowIntersectsSelection ( PINT(1), *PQMODELINDEX(2) ) );
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
bool columnIntersectsSelection(int column, const QModelIndex &parent) const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_COLUMNINTERSECTSSELECTION )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQMODELINDEX(2) )
    {
#endif
      RBOOL( obj->columnIntersectsSelection ( PINT(1), *PQMODELINDEX(2) ) );
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
bool hasSelection() const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_HASSELECTION )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasSelection () );
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
QModelIndexList selectedIndexes() const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_SELECTEDINDEXES )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QModelIndexList list = obj->selectedIndexes ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QMODELINDEX" );
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
          hb_itemPutPtr( pItem, (QModelIndex *) new QModelIndex( list[i] ) );
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
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QMODELINDEX", HB_ERR_ARGS_BASEPARAMS );
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
QModelIndexList selectedRows(int column = 0) const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_SELECTEDROWS )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      QModelIndexList list = obj->selectedRows ( OPINT(1,0) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QMODELINDEX" );
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
          hb_itemPutPtr( pItem, (QModelIndex *) new QModelIndex( list[i] ) );
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
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QMODELINDEX", HB_ERR_ARGS_BASEPARAMS );
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
QModelIndexList selectedColumns(int row = 0) const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_SELECTEDCOLUMNS )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      QModelIndexList list = obj->selectedColumns ( OPINT(1,0) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QMODELINDEX" );
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
          hb_itemPutPtr( pItem, (QModelIndex *) new QModelIndex( list[i] ) );
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
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QMODELINDEX", HB_ERR_ARGS_BASEPARAMS );
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
const QItemSelection selection() const // TODO: implementar
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_SELECTION )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QItemSelection * ptr = new QItemSelection( obj->selection () );
      _qt5xhb_createReturnClass ( ptr, "QITEMSELECTION", true );
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
const QAbstractItemModel *model() const
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_MODEL )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QAbstractItemModel * ptr = obj->model ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QABSTRACTITEMMODEL" );
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
virtual void setCurrentIndex(const QModelIndex &index, QItemSelectionModel::SelectionFlags command)
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_SETCURRENTINDEX )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQMODELINDEX(1) && ISNUM(2) )
    {
#endif
      obj->setCurrentIndex ( *PQMODELINDEX(1), (QItemSelectionModel::SelectionFlags) hb_parni(2) );
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
virtual void select(const QModelIndex &index, QItemSelectionModel::SelectionFlags command)
*/
void QItemSelectionModel_select1 ()
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->select ( *PQMODELINDEX(1), (QItemSelectionModel::SelectionFlags) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void select(const QItemSelection &selection, QItemSelectionModel::SelectionFlags command)
*/
void QItemSelectionModel_select2 ()
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->select ( *PQITEMSELECTION(1), (QItemSelectionModel::SelectionFlags) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]virtual void select(const QModelIndex &index, QItemSelectionModel::SelectionFlags command)
//[2]virtual void select(const QItemSelection &selection, QItemSelectionModel::SelectionFlags command)

HB_FUNC_STATIC( QITEMSELECTIONMODEL_SELECT )
{
  if( ISNUMPAR(2) && ISQMODELINDEX(1) && ISNUM(2) )
  {
    QItemSelectionModel_select1();
  }
  else if( ISNUMPAR(2) && ISQITEMSELECTION(1) && ISNUM(2) )
  {
    QItemSelectionModel_select2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual void clear()
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_CLEAR )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

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

/*
virtual void reset()
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_RESET )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
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
void clearSelection()
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_CLEARSELECTION )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clearSelection ();
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
virtual void clearCurrentIndex()
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_CLEARCURRENTINDEX )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clearCurrentIndex ();
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
void selectionChanged( const QItemSelection & selected, const QItemSelection & deselected )
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_ONSELECTIONCHANGED )
{
  if( hb_pcount() == 1 )
  {
    QItemSelectionModel * sender = (QItemSelectionModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "selectionChanged(QItemSelection,QItemSelection)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QItemSelectionModel::selectionChanged, 
                                                              [sender]
                                                              (const QItemSelection & arg1, const QItemSelection & arg2) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "selectionChanged(QItemSelection,QItemSelection)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QITEMSELECTIONMODEL" );
            PHB_ITEM pArg1 = Signals2_return_object( (void *) &arg1, "QITEMSELECTION" );
            PHB_ITEM pArg2 = Signals2_return_object( (void *) &arg2, "QITEMSELECTION" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
          }

        });

        Signals2_store_connection( sender, "selectionChanged(QItemSelection,QItemSelection)", connection );

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
    QItemSelectionModel * sender = (QItemSelectionModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "selectionChanged(QItemSelection,QItemSelection)" );

      QObject::disconnect( Signals2_get_connection( sender, "selectionChanged(QItemSelection,QItemSelection)" ) );

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
void currentChanged( const QModelIndex & current, const QModelIndex & previous )
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_ONCURRENTCHANGED )
{
  if( hb_pcount() == 1 )
  {
    QItemSelectionModel * sender = (QItemSelectionModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "currentChanged(QModelIndex,QModelIndex)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QItemSelectionModel::currentChanged, 
                                                              [sender]
                                                              (const QModelIndex & arg1, const QModelIndex & arg2) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "currentChanged(QModelIndex,QModelIndex)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QITEMSELECTIONMODEL" );
            PHB_ITEM pArg1 = Signals2_return_object( (void *) &arg1, "QMODELINDEX" );
            PHB_ITEM pArg2 = Signals2_return_object( (void *) &arg2, "QMODELINDEX" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
          }

        });

        Signals2_store_connection( sender, "currentChanged(QModelIndex,QModelIndex)", connection );

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
    QItemSelectionModel * sender = (QItemSelectionModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "currentChanged(QModelIndex,QModelIndex)" );

      QObject::disconnect( Signals2_get_connection( sender, "currentChanged(QModelIndex,QModelIndex)" ) );

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
void currentRowChanged( const QModelIndex & current, const QModelIndex & previous )
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_ONCURRENTROWCHANGED )
{
  if( hb_pcount() == 1 )
  {
    QItemSelectionModel * sender = (QItemSelectionModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "currentRowChanged(QModelIndex,QModelIndex)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QItemSelectionModel::currentRowChanged, 
                                                              [sender]
                                                              (const QModelIndex & arg1, const QModelIndex & arg2) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "currentRowChanged(QModelIndex,QModelIndex)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QITEMSELECTIONMODEL" );
            PHB_ITEM pArg1 = Signals2_return_object( (void *) &arg1, "QMODELINDEX" );
            PHB_ITEM pArg2 = Signals2_return_object( (void *) &arg2, "QMODELINDEX" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
          }

        });

        Signals2_store_connection( sender, "currentRowChanged(QModelIndex,QModelIndex)", connection );

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
    QItemSelectionModel * sender = (QItemSelectionModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "currentRowChanged(QModelIndex,QModelIndex)" );

      QObject::disconnect( Signals2_get_connection( sender, "currentRowChanged(QModelIndex,QModelIndex)" ) );

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
void currentColumnChanged( const QModelIndex & current, const QModelIndex & previous )
*/
HB_FUNC_STATIC( QITEMSELECTIONMODEL_ONCURRENTCOLUMNCHANGED )
{
  if( hb_pcount() == 1 )
  {
    QItemSelectionModel * sender = (QItemSelectionModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "currentColumnChanged(QModelIndex,QModelIndex)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QItemSelectionModel::currentColumnChanged, 
                                                              [sender]
                                                              (const QModelIndex & arg1, const QModelIndex & arg2) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "currentColumnChanged(QModelIndex,QModelIndex)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QITEMSELECTIONMODEL" );
            PHB_ITEM pArg1 = Signals2_return_object( (void *) &arg1, "QMODELINDEX" );
            PHB_ITEM pArg2 = Signals2_return_object( (void *) &arg2, "QMODELINDEX" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
          }

        });

        Signals2_store_connection( sender, "currentColumnChanged(QModelIndex,QModelIndex)", connection );

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
    QItemSelectionModel * sender = (QItemSelectionModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "currentColumnChanged(QModelIndex,QModelIndex)" );

      QObject::disconnect( Signals2_get_connection( sender, "currentColumnChanged(QModelIndex,QModelIndex)" ) );

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
