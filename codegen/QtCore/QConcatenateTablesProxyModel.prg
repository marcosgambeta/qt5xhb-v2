%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore
$added=5,13,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractItemModel

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QMimeData>
#include <QtCore/QSize>

$prototype=explicit QConcatenateTablesProxyModel(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=~QConcatenateTablesProxyModel()
$deleteMethod

$prototypeV2=Q_SCRIPTABLE void addSourceModel( QAbstractItemModel * sourceModel )

$prototypeV2=Q_SCRIPTABLE void removeSourceModel( QAbstractItemModel * sourceModel )

$prototypeV2=QModelIndex mapFromSource( const QModelIndex & sourceIndex ) const

$prototypeV2=QModelIndex mapToSource( const QModelIndex & proxyIndex ) const

$prototypeV2=QVariant data( const QModelIndex & index, int role = Qt::DisplayRole ) const override

$prototypeV2=bool setData( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole ) override

$prototype=QMap<int, QVariant> itemData(const QModelIndex &proxyIndex) const override
%% TODO:

$prototype=bool setItemData(const QModelIndex &index, const QMap<int, QVariant> &roles) override
%% TODO:

$prototypeV2=Qt::ItemFlags flags( const QModelIndex & index ) const override

$prototypeV2=QModelIndex index( int row, int column, const QModelIndex & parent = QModelIndex() ) const override

$prototypeV2=QModelIndex parent( const QModelIndex & index ) const override

$prototypeV2=int rowCount( const QModelIndex & parent = QModelIndex() ) const override

$prototypeV2=QVariant headerData( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const override

$prototypeV2=int columnCount( const QModelIndex & parent = QModelIndex() ) const override

$prototypeV2=QStringList mimeTypes() const override

$prototypeV2=QMimeData * mimeData( const QModelIndexList & indexes ) const override

$prototypeV2=bool canDropMimeData( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent ) const override

$prototypeV2=bool dropMimeData( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent ) override

$prototypeV2=5,15,0|QList<QAbstractItemModel *> sourceModels() const

$prototypeV2=QSize span( const QModelIndex & index ) const override

#pragma ENDDUMP
