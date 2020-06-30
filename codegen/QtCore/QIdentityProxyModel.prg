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

$beginClassFrom=QAbstractProxyModel

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QItemSelection>

$prototype=QIdentityProxyModel(QObject* parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototypeV2=int columnCount( const QModelIndex & parent = QModelIndex() ) const

$prototypeV2=QModelIndex index( int row, int column, const QModelIndex & parent = QModelIndex() ) const

$prototypeV2=QModelIndex mapFromSource( const QModelIndex & sourceIndex ) const

$prototypeV2=QModelIndex mapToSource( const QModelIndex & proxyIndex ) const

$prototypeV2=QModelIndex parent( const QModelIndex & child ) const

$prototypeV2=int rowCount( const QModelIndex & parent = QModelIndex() ) const

$prototypeV2=QVariant headerData( int section, Qt::Orientation orientation, int role ) const

$prototypeV2=bool dropMimeData( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent )

$prototypeV2=QModelIndex sibling( int row, int column, const QModelIndex & idx ) const

$prototypeV2=QItemSelection mapSelectionFromSource( const QItemSelection & selection ) const

$prototypeV2=QItemSelection mapSelectionToSource( const QItemSelection & selection ) const

$prototypeV2=QModelIndexList match( const QModelIndex & start, int role, const QVariant & value, int hits = 1, Qt::MatchFlags flags = Qt::MatchFlags( Qt::MatchStartsWith | Qt::MatchWrap ) ) const

$prototypeV2=void setSourceModel( QAbstractItemModel * sourceModel )

$prototypeV2=bool insertColumns( int column, int count, const QModelIndex & parent = QModelIndex() )

$prototypeV2=bool insertRows( int row, int count, const QModelIndex & parent = QModelIndex() )

$prototypeV2=bool removeColumns( int column, int count, const QModelIndex & parent = QModelIndex() )

$prototypeV2=bool removeRows( int row, int count, const QModelIndex & parent = QModelIndex() )

#pragma ENDDUMP
