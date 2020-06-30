%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QItemSelection()
$internalConstructor=|new1|

$prototype=QItemSelection(const QModelIndex &topLeft, const QModelIndex &bottomRight)
$internalConstructor=|new2|const QModelIndex &,const QModelIndex &

/*
[1]QItemSelection()
[2]QItemSelection(const QModelIndex &topLeft, const QModelIndex &bottomRight)
*/

HB_FUNC_STATIC( QITEMSELECTION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QItemSelection_new1();
  }
  else if( ISNUMPAR(2) && ISQMODELINDEX(1) && ISQMODELINDEX(2) )
  {
    QItemSelection_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=void select( const QModelIndex & topLeft, const QModelIndex & bottomRight )

$prototypeV2=bool contains( const QModelIndex & index ) const

$prototypeV2=QModelIndexList indexes() const

$prototypeV2=void merge( const QItemSelection & other, QItemSelectionModel::SelectionFlags command )

$prototypeV2=static void split( const QItemSelectionRange & range, const QItemSelectionRange & other, QItemSelection * result )

$extraMethods

#pragma ENDDUMP
