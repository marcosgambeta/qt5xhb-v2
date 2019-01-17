/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMODELINDEX
#endif

CLASS HAbstractTableModel INHERIT QAbstractTableModel

   METHOD new
   METHOD delete

   METHOD setRowCountCB
   METHOD setColumnCountCB

   METHOD setDisplayRoleCB
   METHOD setDecorationRoleCB
   METHOD setEditRoleCB
   METHOD setToolTipRoleCB
   METHOD setStatusTipRoleCB
   METHOD setWhatsThisRoleCB
   METHOD setSizeHintRoleCB
   METHOD setFontRoleCB
   METHOD setTextAlignmentRoleCB
   METHOD setBackgroundRoleCB
   METHOD setForegroundRoleCB

   METHOD setHorizontalHeaderDisplayRoleCB
   METHOD setHorizontalHeaderDecorationRoleCB
   METHOD setHorizontalHeaderFontRoleCB
   METHOD setHorizontalHeaderTextAlignmentRoleCB
   METHOD setHorizontalHeaderBackgroundRoleCB
   METHOD setHorizontalHeaderForegroundRoleCB

   METHOD setVerticalHeaderDisplayRoleCB
   METHOD setVerticalHeaderDecorationRoleCB
   METHOD setVerticalHeaderFontRoleCB
   METHOD setVerticalHeaderTextAlignmentRoleCB
   METHOD setVerticalHeaderBackgroundRoleCB
   METHOD setVerticalHeaderForegroundRoleCB

   METHOD reloadData

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS HAbstractTableModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

CLASS HDBFTableModel INHERIT HAbstractTableModel
END CLASS

CLASS HArrayTableModel INHERIT HAbstractTableModel
END CLASS

#pragma BEGINDUMP

#include <HAbstractTableModel.h>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_NEW )
{
  HAbstractTableModel * o = nullptr;
  o = new HAbstractTableModel ( OPQOBJECT(1,0) );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(HAbstractTableModel *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_DELETE )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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

// linhas e colunas

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETROWCOUNTCB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj != nullptr )
  {
    obj->setRowCountCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETCOLUMNCOUNTCB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj != nullptr )
  {
    obj->setColumnCountCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

// células

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETDISPLAYROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj != nullptr )
  {
    obj->setDisplayRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETDECORATIONROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj != nullptr )
  {
    obj->setDecorationRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETEDITROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj != nullptr )
  {
    obj->setEditRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETTOOLTIPROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj != nullptr )
  {
    obj->setToolTipRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETSTATUSTIPROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj != nullptr )
  {
    obj->setStatusTipRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETWHATSTHISROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj != nullptr )
  {
    obj->setWhatsThisRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETSIZEHINTROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj != nullptr )
  {
    obj->setSizeHintRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETFONTROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj != nullptr )
  {
    obj->setFontRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETTEXTALIGNMENTROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj != nullptr )
  {
    obj->setTextAlignmentRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETBACKGROUNDROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj != nullptr )
  {
    obj->setBackgroundRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETFOREGROUNDROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj != nullptr )
  {
    obj->setForegroundRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

// cabeçalho horizontal

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETHORIZONTALHEADERDISPLAYROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj != nullptr )
  {
    obj->setHorizontalHeaderDisplayRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETHORIZONTALHEADERDECORATIONROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj != nullptr )
  {
    obj->setHorizontalHeaderDecorationRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETHORIZONTALHEADERFONTROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj != nullptr )
  {
    obj->setHorizontalHeaderFontRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETHORIZONTALHEADERTEXTALIGNMENTROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj != nullptr )
  {
    obj->setHorizontalHeaderTextAlignmentRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETHORIZONTALHEADERBACKGROUNDROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj != nullptr )
  {
    obj->setHorizontalHeaderBackgroundRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETHORIZONTALHEADERFOREGROUNDROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj != nullptr )
  {
    obj->setHorizontalHeaderForegroundRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

// cabeçalho vertical

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETVERTICALHEADERDISPLAYROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj != nullptr )
  {
    obj->setVerticalHeaderDisplayRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETVERTICALHEADERDECORATIONROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj != nullptr )
  {
    obj->setVerticalHeaderDecorationRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETVERTICALHEADERFONTROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj != nullptr )
  {
    obj->setVerticalHeaderFontRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETVERTICALHEADERTEXTALIGNMENTROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj != nullptr )
  {
    obj->setVerticalHeaderTextAlignmentRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETVERTICALHEADERBACKGROUNDROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj != nullptr )
  {
    obj->setVerticalHeaderBackgroundRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETVERTICALHEADERFOREGROUNDROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj != nullptr )
  {
    obj->setVerticalHeaderForegroundRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_RELOADDATA )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj != nullptr )
  {
    obj->reloadData();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

// HB_FUNC_STATIC( HABSTRACTTABLEMODEL_CREATEINDEX )
// {
//   HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
//   if( obj )
//   {
//     QModelIndex * ptr = new QModelIndex( obj->createIndex ( hb_parni(1), hb_parni(2) ) );
//     _qt5xhb_createReturnClass ( ptr, "QMODELINDEX" );  }
// }

#pragma ENDDUMP
