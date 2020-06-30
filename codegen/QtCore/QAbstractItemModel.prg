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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QSize>
#include <QtCore/QStringList>

$deleteMethod

$prototypeV2=virtual QModelIndex buddy( const QModelIndex & index ) const

$prototypeV2=virtual bool canFetchMore( const QModelIndex & parent ) const

$prototypeV2=virtual int columnCount( const QModelIndex & parent = QModelIndex() ) const = 0

$prototypeV2=virtual QVariant data( const QModelIndex & index, int role = Qt::DisplayRole ) const = 0

$prototypeV2=virtual bool dropMimeData( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent )

$prototypeV2=virtual void fetchMore( const QModelIndex & parent )

$prototypeV2=virtual Qt::ItemFlags flags( const QModelIndex & index ) const

$prototypeV2=virtual bool hasChildren( const QModelIndex & parent = QModelIndex() ) const

$prototypeV2=bool hasIndex( int row, int column, const QModelIndex & parent = QModelIndex() ) const

$prototypeV2=virtual QVariant headerData( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const

$prototypeV2=virtual QModelIndex index( int row, int column, const QModelIndex & parent = QModelIndex() ) const = 0

$prototypeV2=bool insertColumn( int column, const QModelIndex & parent = QModelIndex() )

$prototypeV2=virtual bool insertColumns( int column, int count, const QModelIndex & parent = QModelIndex() )

$prototypeV2=bool insertRow( int row, const QModelIndex & parent = QModelIndex() )

$prototypeV2=virtual bool insertRows( int row, int count, const QModelIndex & parent = QModelIndex() )

$prototypeV2=virtual QModelIndexList match( const QModelIndex & start, int role, const QVariant & value, int hits = 1, Qt::MatchFlags flags = Qt::MatchFlags( Qt::MatchStartsWith | Qt::MatchWrap ) ) const

$prototypeV2=virtual QStringList mimeTypes() const

$prototypeV2=virtual QModelIndex parent( const QModelIndex & index ) const = 0

$prototypeV2=bool removeColumn( int column, const QModelIndex & parent = QModelIndex() )

$prototypeV2=virtual bool removeColumns( int column, int count, const QModelIndex & parent = QModelIndex() )

$prototypeV2=bool removeRow( int row, const QModelIndex & parent = QModelIndex() )

$prototypeV2=virtual bool removeRows( int row, int count, const QModelIndex & parent = QModelIndex() )

$prototypeV2=virtual int rowCount( const QModelIndex & parent = QModelIndex() ) const = 0

$prototypeV2=virtual bool setData( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )

$prototypeV2=virtual bool setHeaderData( int section, Qt::Orientation orientation, const QVariant & value, int role = Qt::EditRole )

$prototypeV2=QModelIndex sibling( int row, int column, const QModelIndex & index ) const

$prototypeV2=virtual void sort( int column, Qt::SortOrder order = Qt::AscendingOrder )

$prototypeV2=virtual QSize span( const QModelIndex & index ) const

$prototypeV2=Qt::DropActions supportedDragActions() const

$prototypeV2=virtual Qt::DropActions supportedDropActions() const

$prototypeV2=virtual void revert()

$prototypeV2=virtual bool submit()

%%
%% SIGNALS
%%

$prototype=void columnsAboutToBeInserted( const QModelIndex & parent, int start, int end )
$signalMethod=|void|columnsAboutToBeInserted|const QModelIndex &,int,int

$prototype=void columnsAboutToBeMoved( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationColumn )
$signalMethod=|void|columnsAboutToBeMoved|const QModelIndex &,int,int,const QModelIndex &,int

$prototype=void columnsAboutToBeRemoved( const QModelIndex & parent, int start, int end )
$signalMethod=|void|columnsAboutToBeRemoved|const QModelIndex &,int,int

$prototype=void columnsInserted( const QModelIndex & parent, int start, int end )
$signalMethod=|void|columnsInserted|const QModelIndex &,int,int

$prototype=void columnsMoved( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationColumn )
$signalMethod=|void|columnsMoved|const QModelIndex &,int,int,const QModelIndex &,int

$prototype=void columnsRemoved( const QModelIndex & parent, int start, int end )
$signalMethod=|void|columnsRemoved|const QModelIndex &,int,int

$prototype=void dataChanged( const QModelIndex & topLeft, const QModelIndex & bottomRight )
$signalMethod=|void|dataChanged|const QModelIndex &,const QModelIndex &

$prototype=void headerDataChanged( Qt::Orientation orientation, int first, int last )
$signalMethod=|void|headerDataChanged|Qt::Orientation,int,int

$prototype=void layoutAboutToBeChanged()
$signalMethod=|void|layoutAboutToBeChanged|

$prototype=void layoutChanged()
$signalMethod=|void|layoutChanged|

$prototype=void modelAboutToBeReset()
$signalMethod=|void|modelAboutToBeReset|

$prototype=void modelReset()
$signalMethod=|void|modelReset|

$prototype=void rowsAboutToBeInserted( const QModelIndex & parent, int start, int end )
$signalMethod=|void|rowsAboutToBeInserted|const QModelIndex &,int,int

$prototype=void rowsAboutToBeMoved( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationRow )
$signalMethod=|void|rowsAboutToBeMoved|const QModelIndex &,int,int,const QModelIndex &,int

$prototype=void rowsAboutToBeRemoved( const QModelIndex & parent, int start, int end )
$signalMethod=|void|rowsAboutToBeRemoved|const QModelIndex &,int,int

$prototype=void rowsInserted( const QModelIndex & parent, int start, int end )
$signalMethod=|void|rowsInserted|const QModelIndex &,int,int

$prototype=void rowsMoved( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationRow )
$signalMethod=|void|rowsMoved|const QModelIndex &,int,int,const QModelIndex &,int

$prototype=void rowsRemoved( const QModelIndex & parent, int start, int end )
$signalMethod=|void|rowsRemoved|const QModelIndex &,int,int

#pragma ENDDUMP
