%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
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

#include <QtCore/QStringList>
#include <QtCore/QSize>

$deleteMethod

$prototype=virtual QModelIndex buddy ( const QModelIndex & index ) const
$virtualMethod=|QModelIndex|buddy|const QModelIndex &

$prototype=virtual bool canFetchMore ( const QModelIndex & parent ) const
$virtualMethod=|bool|canFetchMore|const QModelIndex &

$prototype=virtual int columnCount ( const QModelIndex & parent = QModelIndex() ) const = 0
$virtualMethod=|int|columnCount|const QModelIndex &=QModelIndex()

$prototype=virtual QVariant data ( const QModelIndex & index, int role = Qt::DisplayRole ) const = 0
$virtualMethod=|QVariant|data|const QModelIndex &,int=Qt::DisplayRole

$prototype=virtual bool dropMimeData ( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent )
$virtualMethod=|bool|dropMimeData|const QMimeData *,Qt::DropAction,int,int,const QModelIndex &

$prototype=virtual void fetchMore ( const QModelIndex & parent )
$virtualMethod=|void|fetchMore|const QModelIndex &

$prototype=virtual Qt::ItemFlags flags ( const QModelIndex & index ) const
$virtualMethod=|Qt::ItemFlags|flags|const QModelIndex &

$prototype=virtual bool hasChildren ( const QModelIndex & parent = QModelIndex() ) const
$virtualMethod=|bool|hasChildren|const QModelIndex &=QModelIndex()

$prototype=bool hasIndex ( int row, int column, const QModelIndex & parent = QModelIndex() ) const
$method=|bool|hasIndex|int,int,const QModelIndex &=QModelIndex()

$prototype=virtual QVariant headerData ( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const
$virtualMethod=|QVariant|headerData|int,Qt::Orientation,int=Qt::DisplayRole

$prototype=virtual QModelIndex index ( int row, int column, const QModelIndex & parent = QModelIndex() ) const = 0
$virtualMethod=|QModelIndex|index|int,int,const QModelIndex &=QModelIndex()

$prototype=bool insertColumn ( int column, const QModelIndex & parent = QModelIndex() )
$method=|bool|insertColumn|int,const QModelIndex &=QModelIndex()

$prototype=virtual bool insertColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
$virtualMethod=|bool|insertColumns|int,int,const QModelIndex &=QModelIndex()

$prototype=bool insertRow ( int row, const QModelIndex & parent = QModelIndex() )
$method=|bool|insertRow|int,const QModelIndex &=QModelIndex()

$prototype=virtual bool insertRows ( int row, int count, const QModelIndex & parent = QModelIndex() )
$virtualMethod=|bool|insertRows|int,int,const QModelIndex &=QModelIndex()

$prototype=virtual QModelIndexList match ( const QModelIndex & start, int role, const QVariant & value, int hits = 1, Qt::MatchFlags flags = Qt::MatchFlags( Qt::MatchStartsWith | Qt::MatchWrap ) ) const
$virtualMethod=|QModelIndexList|match|const QModelIndex &,int,const QVariant &,int=1,Qt::MatchFlags=Qt::MatchFlags( Qt::MatchStartsWith OR Qt::MatchWrap )

$prototype=virtual QStringList mimeTypes () const
$virtualMethod=|QStringList|mimeTypes|

$prototype=virtual QModelIndex parent ( const QModelIndex & index ) const = 0
$virtualMethod=|QModelIndex|parent|const QModelIndex &

$prototype=bool removeColumn ( int column, const QModelIndex & parent = QModelIndex() )
$method=|bool|removeColumn|int,const QModelIndex &=QModelIndex()

$prototype=virtual bool removeColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
$virtualMethod=|bool|removeColumns|int,int,const QModelIndex &=QModelIndex()

$prototype=bool removeRow ( int row, const QModelIndex & parent = QModelIndex() )
$method=|bool|removeRow|int,const QModelIndex &=QModelIndex()

$prototype=virtual bool removeRows ( int row, int count, const QModelIndex & parent = QModelIndex() )
$virtualMethod=|bool|removeRows|int,int,const QModelIndex &=QModelIndex()

$prototype=virtual int rowCount ( const QModelIndex & parent = QModelIndex() ) const = 0
$virtualMethod=|int|rowCount|const QModelIndex &=QModelIndex()

$prototype=virtual bool setData ( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )
$virtualMethod=|bool|setData|const QModelIndex &,const QVariant &,int=Qt::EditRole

$prototype=virtual bool setHeaderData ( int section, Qt::Orientation orientation, const QVariant & value, int role = Qt::EditRole )
$virtualMethod=|bool|setHeaderData|int,Qt::Orientation,const QVariant &,int=Qt::EditRole

$prototype=QModelIndex sibling ( int row, int column, const QModelIndex & index ) const
$method=|QModelIndex|sibling|int,int,const QModelIndex &

$prototype=virtual void sort ( int column, Qt::SortOrder order = Qt::AscendingOrder )
$virtualMethod=|void|sort|int,Qt::SortOrder=Qt::AscendingOrder

$prototype=virtual QSize span ( const QModelIndex & index ) const
$virtualMethod=|QSize|span|const QModelIndex &

$prototype=Qt::DropActions supportedDragActions () const
$method=|Qt::DropActions|supportedDragActions|

$prototype=virtual Qt::DropActions supportedDropActions () const
$virtualMethod=|Qt::DropActions|supportedDropActions|

$prototype=virtual void revert ()
$virtualMethod=|void|revert|

$prototype=virtual bool submit ()
$virtualMethod=|bool|submit|

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
