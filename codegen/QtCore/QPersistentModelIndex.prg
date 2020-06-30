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

$prototype=QPersistentModelIndex()
$internalConstructor=|new1|

$prototype=QPersistentModelIndex(const QModelIndex &index)
$internalConstructor=|new2|const QModelIndex &

$prototype=QPersistentModelIndex(const QPersistentModelIndex &other)
$internalConstructor=|new3|const QPersistentModelIndex &

/*
[1]QPersistentModelIndex()
[2]QPersistentModelIndex(const QModelIndex &index)
[3]QPersistentModelIndex(const QPersistentModelIndex &other)
*/

HB_FUNC_STATIC( QPERSISTENTMODELINDEX_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPersistentModelIndex_new1();
  }
  else if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    QPersistentModelIndex_new2();
  }
  else if( ISNUMPAR(1) && ISQPERSISTENTMODELINDEX(1) )
  {
    QPersistentModelIndex_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=void swap( QPersistentModelIndex & other )

$prototypeV2=int row() const

$prototypeV2=int column() const

$prototypeV2=void * internalPointer() const

$prototypeV2=quintptr internalId() const

$prototypeV2=QModelIndex parent() const

$prototypeV2=QModelIndex sibling( int row, int column ) const

$prototypeV2=QModelIndex child( int row, int column ) const

$prototypeV2=QVariant data( int role = Qt::DisplayRole ) const

$prototypeV2=Qt::ItemFlags flags() const

$prototypeV2=const QAbstractItemModel * model() const

$prototypeV2=bool isValid() const

$extraMethods

#pragma ENDDUMP
